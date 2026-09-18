package runner

import (
	"bytes"
	"context"
	"errors"
	"fmt"
	"io"
	"reflect"
	"slices"
	"strings"
	"time"

	"github.com/jingkaihe/matchlock/pkg/sdk"

	"jade.fyi/ghostjar/lid/internal/config"
)

// Live config reload.
//
// While a VM runs, the watcher re-evaluates the config whenever lid.star
// changes and applies allowlist changes to the running VM via matchlock's
// allow_list_add / allow_list_delete RPCs. Everything else about a profile is
// fixed at launch; changes to it are reported as needing a restart.
//
// Safety: matchlock's policy engine treats an EMPTY allowlist as allow-all.
// The live list must therefore never pass through empty: we always add the
// new hosts before deleting stale ones, and refuse any plan whose desired
// list is empty (config validation already forbids that for a restricted
// network, so this is belt-and-braces).

// errReloadUnsupported marks network changes that cannot be applied to a
// running VM.
var errReloadUnsupported = errors.New("cannot be applied to a running VM; restart lid")

// netReload is the plan for applying a reloaded profile to a running VM.
type netReload struct {
	Add     []string // apply first
	Remove  []string // apply after Add
	Restart []string // changed fields that only take effect on restart
}

// planNetReload diffs the profile the VM is running (old) against a freshly
// evaluated one (next). It is pure. old must have a restricted allowlist (not
// NoNetwork, not AllowAll) — the only posture with a live, mutable list.
func planNetReload(old, next *config.Profile) (netReload, error) {
	var plan netReload
	switch {
	case old.Net.NoNetwork:
		return plan, fmt.Errorf("sandbox was launched without network: %w", errReloadUnsupported)
	case old.Net.AllowAll:
		return plan, fmt.Errorf("sandbox was launched with allow_all: %w", errReloadUnsupported)
	case next.Net.NoNetwork:
		return plan, fmt.Errorf("removing network: %w", errReloadUnsupported)
	case next.Net.AllowAll:
		return plan, fmt.Errorf("switching to allow_all: %w", errReloadUnsupported)
	case len(next.Net.AllowedHosts) == 0:
		// Unreachable for a validated profile; an empty live list means allow-all.
		return plan, errors.New("refusing to apply an empty allowlist (matchlock would allow all hosts)")
	}

	for _, h := range next.Net.AllowedHosts {
		if !slices.Contains(old.Net.AllowedHosts, h) && !slices.Contains(plan.Add, h) {
			plan.Add = append(plan.Add, h)
		}
	}
	for _, h := range old.Net.AllowedHosts {
		if !slices.Contains(next.Net.AllowedHosts, h) && !slices.Contains(plan.Remove, h) {
			plan.Remove = append(plan.Remove, h)
		}
	}
	plan.Restart = restartOnlyChanges(old, next)
	return plan, nil
}

// restartOnlyChanges names the profile fields (other than the live allowlist)
// that differ between old and next. Walks the structs reflectively so newly
// added Profile fields are covered without touching this code.
func restartOnlyChanges(old, next *config.Profile) []string {
	var changed []string
	ov, nv := reflect.ValueOf(*old), reflect.ValueOf(*next)
	t := ov.Type()
	for i := range t.NumField() {
		name := t.Field(i).Name
		if name == "Net" {
			nt := ov.Field(i).Type()
			for j := range nt.NumField() {
				sub := nt.Field(j).Name
				switch sub {
				case "AllowedHosts", "NoNetwork", "AllowAll": // handled by planNetReload
					continue
				}
				if !reflect.DeepEqual(ov.Field(i).Field(j).Interface(), nv.Field(i).Field(j).Interface()) {
					changed = append(changed, "Net."+sub)
				}
			}
			continue
		}
		if !reflect.DeepEqual(ov.Field(i).Interface(), nv.Field(i).Interface()) {
			changed = append(changed, name)
		}
	}
	return changed
}

// allowLister is the subset of *sdk.Client the watcher needs.
type allowLister interface {
	AllowListAdd(ctx context.Context, hosts ...string) (*sdk.AllowListUpdate, error)
	AllowListDelete(ctx context.Context, hosts ...string) (*sdk.AllowListUpdate, error)
}

// ReloadOptions configures the config watcher.
type ReloadOptions struct {
	Cwd            string
	ConfigOverride string
	ProfileName    string // the resolved profile name (not "" ⇒ default)
	Interval       time.Duration
	Log            io.Writer
}

// watchConfig polls the config files and applies allowlist changes to the
// running VM until ctx is done. running is the profile the VM was launched
// with; it is never mutated.
//
// Polling (rather than inotify) keeps it dependency-free and handles editors
// that save via atomic rename. Contents, not mtimes, are compared, so a save
// that doesn't change bytes is a no-op.
func watchConfig(ctx context.Context, client allowLister, running *config.Profile, opts ReloadOptions) {
	if opts.Interval == 0 {
		opts.Interval = time.Second
	}
	env := newDiscoverEnv(opts.Cwd, DiscoverOptions{ConfigOverride: opts.ConfigOverride})
	// No baseline snapshot: running was evaluated before boot, so the first
	// poll diffs against it to catch edits saved while the VM was starting.
	w := &reloader{client: client, env: env, opts: opts, applied: cloneProfile(running), quiet: true}

	ticker := time.NewTicker(opts.Interval)
	defer ticker.Stop()
	for {
		select {
		case <-ctx.Done():
			return
		case <-ticker.C:
		}
		w.poll(ctx)
	}
}

type reloader struct {
	client  allowLister
	env     discoverEnv
	opts    ReloadOptions
	applied *config.Profile // running profile with the live allowlist
	last    []byte
	quiet   bool // suppress a no-op report (first poll, nothing was edited)
}

// snapshot returns the contents of every config file discovery would read,
// framed with their paths so moving a config between locations also counts.
func (w *reloader) snapshot() []byte {
	global, project, err := w.env.paths()
	if err != nil {
		return []byte("error: " + err.Error())
	}
	var buf bytes.Buffer
	for _, p := range []string{global, project} {
		if p == "" {
			continue
		}
		src, err := w.env.readFile(p)
		fmt.Fprintf(&buf, "%s\x00%d\x00%t\x00", p, len(src), err == nil)
		buf.Write(src)
	}
	return buf.Bytes()
}

func (w *reloader) poll(ctx context.Context) {
	snap := w.snapshot()
	if w.last != nil && bytes.Equal(snap, w.last) {
		return
	}
	w.last = snap
	quiet := w.quiet
	w.quiet = false

	next, err := w.load()
	if err != nil {
		w.logf("reload failed: %v (network rules unchanged)", err)
		return
	}
	plan, err := planNetReload(w.applied, next)
	if err != nil {
		w.logf("reload failed: %v (network rules unchanged)", err)
		return
	}
	if quiet && len(plan.Add)+len(plan.Remove)+len(plan.Restart) == 0 {
		return
	}
	if err := w.apply(ctx, plan, next.Net.AllowedHosts); err != nil {
		if ctx.Err() == nil {
			w.logf("reload failed: %v", err)
		}
		return
	}

	var parts []string
	for _, h := range plan.Add {
		parts = append(parts, "+"+h)
	}
	for _, h := range plan.Remove {
		parts = append(parts, "-"+h)
	}
	msg := "no network changes"
	if len(parts) > 0 {
		msg = strings.Join(parts, " ")
	}
	if len(plan.Restart) > 0 {
		msg += "; restart needed for: " + strings.Join(plan.Restart, ", ")
	}
	w.logf("reload: %s", msg)
}

func (w *reloader) load() (*config.Profile, error) {
	d, err := w.env.discover()
	if err != nil {
		return nil, err
	}
	return d.Merged.Lookup(w.opts.ProfileName)
}

// apply adds, then removes, tracking the live list in w.applied as each step
// succeeds so a partial failure is corrected by the next reload.
func (w *reloader) apply(ctx context.Context, plan netReload, desired []string) error {
	live := slices.Clone(w.applied.Net.AllowedHosts)
	if len(plan.Add) > 0 {
		if _, err := w.client.AllowListAdd(ctx, plan.Add...); err != nil {
			return fmt.Errorf("add %s: %w", strings.Join(plan.Add, ", "), err)
		}
		live = append(live, plan.Add...)
		w.applied.Net.AllowedHosts = live
	}
	if len(plan.Remove) > 0 {
		if _, err := w.client.AllowListDelete(ctx, plan.Remove...); err != nil {
			return fmt.Errorf("remove %s: %w", strings.Join(plan.Remove, ", "), err)
		}
	}
	w.applied.Net.AllowedHosts = slices.Clone(desired)
	return nil
}

// logf writes one line. \r\n on both sides because the terminal may be in
// raw mode under the agent's TUI.
func (w *reloader) logf(format string, args ...any) {
	if w.opts.Log == nil {
		return
	}
	fmt.Fprintf(w.opts.Log, "\r\nlid: "+format+"\r\n", args...)
}

// cloneProfile copies p deeply enough that mutating the copy's allowlist
// cannot alias the caller's.
func cloneProfile(p *config.Profile) *config.Profile {
	c := *p
	c.Net.AllowedHosts = slices.Clone(p.Net.AllowedHosts)
	return &c
}
