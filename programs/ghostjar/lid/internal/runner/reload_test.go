package runner

import (
	"context"
	"errors"
	"os"
	"path/filepath"
	"slices"
	"strings"
	"testing"

	"github.com/jingkaihe/matchlock/pkg/sdk"
	"pgregory.net/rapid"

	"jade.fyi/ghostjar/lid/internal/config"
)

func restricted(hosts ...string) *config.Profile {
	return &config.Profile{
		Name:  "default",
		Image: "i",
		Net:   config.Network{AllowedHosts: hosts, BlockPrivateIPs: true},
	}
}

func TestPlanNetReload(t *testing.T) {
	tests := []struct {
		name       string
		old, next  []string
		wantAdd    []string
		wantRemove []string
	}{
		{"add", []string{"a.com"}, []string{"a.com", "b.com"}, []string{"b.com"}, nil},
		{"remove", []string{"a.com", "b.com"}, []string{"a.com"}, nil, []string{"b.com"}},
		{"swap", []string{"a.com"}, []string{"b.com"}, []string{"b.com"}, []string{"a.com"}},
		{"no change", []string{"a.com", "b.com"}, []string{"b.com", "a.com"}, nil, nil},
		{"glob", []string{"a.com"}, []string{"a.com", "*.b.com"}, []string{"*.b.com"}, nil},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			plan, err := planNetReload(restricted(tt.old...), restricted(tt.next...))
			if err != nil {
				t.Fatal(err)
			}
			if !slices.Equal(plan.Add, tt.wantAdd) || !slices.Equal(plan.Remove, tt.wantRemove) {
				t.Errorf("got add=%v remove=%v, want add=%v remove=%v", plan.Add, plan.Remove, tt.wantAdd, tt.wantRemove)
			}
			if len(plan.Restart) != 0 {
				t.Errorf("unexpected restart fields %v", plan.Restart)
			}
		})
	}
}

func TestPlanNetReloadRejects(t *testing.T) {
	noNet := &config.Profile{Name: "default", Net: config.Network{NoNetwork: true, BlockPrivateIPs: true}}
	allowAll := &config.Profile{Name: "default", Net: config.Network{AllowAll: true, BlockPrivateIPs: true}}
	tests := []struct {
		name      string
		old, next *config.Profile
	}{
		{"launched without network", noNet, restricted("a.com")},
		{"launched allow_all", allowAll, restricted("a.com")},
		{"to no network", restricted("a.com"), noNet},
		{"to allow_all", restricted("a.com"), allowAll},
		{"empty allowlist", restricted("a.com"), restricted()},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if _, err := planNetReload(tt.old, tt.next); err == nil {
				t.Fatal("expected error")
			}
		})
	}
}

func TestPlanNetReloadRestartFields(t *testing.T) {
	old := restricted("a.com")
	next := restricted("a.com", "b.com")
	next.Image = "other"
	next.Net.DNS = []string{"1.1.1.1"}
	next.Net.BlockPrivateIPs = false
	next.Secrets = []config.SecretSpec{{Name: "X", Hosts: []string{"b.com"}}}

	plan, err := planNetReload(old, next)
	if err != nil {
		t.Fatal(err)
	}
	// Restart-only changes don't block the live allowlist change.
	if !slices.Equal(plan.Add, []string{"b.com"}) {
		t.Errorf("add = %v", plan.Add)
	}
	want := []string{"Image", "Net.BlockPrivateIPs", "Net.DNS", "Secrets"}
	if !slices.Equal(plan.Restart, want) {
		t.Errorf("restart = %v, want %v", plan.Restart, want)
	}
}

// TestPlanNetReloadNeverEmpty is the safety property: matchlock treats an
// empty allowlist as allow-all, so applying Add-then-Remove must never pass
// through an empty live list, and must end at exactly the desired set.
func TestPlanNetReloadNeverEmpty(t *testing.T) {
	host := rapid.SampledFrom([]string{"a.com", "b.com", "c.com", "*.d.com", "e.org", "f.net"})
	rapid.Check(t, func(t *rapid.T) {
		old := rapid.SliceOfNDistinct(host, 1, 6, rapid.ID).Draw(t, "old")
		next := rapid.SliceOfNDistinct(host, 1, 6, rapid.ID).Draw(t, "next")

		plan, err := planNetReload(restricted(old...), restricted(next...))
		if err != nil {
			t.Fatal(err)
		}
		live := slices.Clone(old)
		live = append(live, plan.Add...)
		if len(live) == 0 {
			t.Fatal("live list empty after add")
		}
		for _, h := range plan.Remove {
			live = slices.DeleteFunc(live, func(s string) bool { return s == h })
			if len(live) == 0 {
				t.Fatalf("live list empty after removing %s", h)
			}
		}
		slices.Sort(live)
		want := slices.Clone(next)
		slices.Sort(want)
		if !slices.Equal(live, want) {
			t.Fatalf("live = %v, want %v", live, want)
		}
	})
}

type fakeAllowLister struct {
	calls     []string
	deleteErr error
}

func (f *fakeAllowLister) AllowListAdd(_ context.Context, hosts ...string) (*sdk.AllowListUpdate, error) {
	f.calls = append(f.calls, "add "+strings.Join(hosts, ","))
	return &sdk.AllowListUpdate{Added: hosts}, nil
}

func (f *fakeAllowLister) AllowListDelete(_ context.Context, hosts ...string) (*sdk.AllowListUpdate, error) {
	f.calls = append(f.calls, "delete "+strings.Join(hosts, ","))
	if f.deleteErr != nil {
		return nil, f.deleteErr
	}
	return &sdk.AllowListUpdate{Removed: hosts}, nil
}

// newTestReloader points discovery at a temp project lid.star with no global
// config, and returns the reloader plus a function that rewrites the file.
func newTestReloader(t *testing.T, client allowLister, allow string) (*reloader, *strings.Builder, func(string)) {
	t.Helper()
	dir := t.TempDir()
	t.Setenv("HOME", dir)
	t.Setenv("XDG_CONFIG_HOME", filepath.Join(dir, "xdg"))
	path := filepath.Join(dir, "lid.star")
	write := func(src string) {
		if err := os.WriteFile(path, []byte(src), 0o644); err != nil {
			t.Fatal(err)
		}
	}
	write(profileSrc(allow))

	d, err := Discover(dir, DiscoverOptions{ConfigOverride: path})
	if err != nil {
		t.Fatal(err)
	}
	prof, err := d.Merged.Lookup("")
	if err != nil {
		t.Fatal(err)
	}
	var log strings.Builder
	opts := ReloadOptions{Cwd: dir, ConfigOverride: path, ProfileName: prof.Name, Log: &log}
	w := &reloader{
		client:  client,
		env:     newDiscoverEnv(dir, DiscoverOptions{ConfigOverride: path}),
		opts:    opts,
		applied: cloneProfile(prof),
		quiet:   true,
	}
	return w, &log, write
}

func profileSrc(allow string) string {
	return `lid.sandbox(name = "default", image = "i", network = lid.network(allow = [` + allow + `]))` + "\n"
}

func TestReloaderAppliesAddThenDelete(t *testing.T) {
	fake := &fakeAllowLister{}
	w, log, write := newTestReloader(t, fake, `"a.com", "b.com"`)

	w.poll(context.Background()) // first poll, unchanged file: no calls, no log
	w.poll(context.Background())
	if len(fake.calls) != 0 || log.Len() != 0 {
		t.Fatalf("unchanged file: calls=%v log=%q", fake.calls, log.String())
	}

	write(profileSrc(`"b.com", "c.com"`))
	w.poll(context.Background())
	want := []string{"add c.com", "delete a.com"}
	if !slices.Equal(fake.calls, want) {
		t.Fatalf("calls = %v, want %v", fake.calls, want)
	}
	if !strings.Contains(log.String(), "+c.com -a.com") {
		t.Errorf("log = %q", log.String())
	}
	if !slices.Equal(w.applied.Net.AllowedHosts, []string{"b.com", "c.com"}) {
		t.Errorf("applied = %v", w.applied.Net.AllowedHosts)
	}
}

// An edit saved while the VM was booting (after the profile was evaluated,
// before the watcher started) is applied on the first poll.
func TestReloaderCatchesEditDuringBoot(t *testing.T) {
	fake := &fakeAllowLister{}
	w, log, write := newTestReloader(t, fake, `"a.com"`)
	write(profileSrc(`"a.com", "b.com"`))

	w.poll(context.Background())
	if !slices.Equal(fake.calls, []string{"add b.com"}) {
		t.Fatalf("calls = %v", fake.calls)
	}
	if !strings.Contains(log.String(), "+b.com") {
		t.Errorf("log = %q", log.String())
	}
}

func TestReloaderKeepsRulesOnBadConfig(t *testing.T) {
	fake := &fakeAllowLister{}
	w, log, write := newTestReloader(t, fake, `"a.com"`)

	write("lid.sandbox(name = \n") // syntax error mid-edit
	w.poll(context.Background())
	if len(fake.calls) != 0 {
		t.Fatalf("calls on bad config: %v", fake.calls)
	}
	if !strings.Contains(log.String(), "reload failed") {
		t.Errorf("log = %q", log.String())
	}

	// Fixing the file applies normally.
	write(profileSrc(`"a.com", "b.com"`))
	w.poll(context.Background())
	if !slices.Equal(fake.calls, []string{"add b.com"}) {
		t.Fatalf("calls = %v", fake.calls)
	}
}

func TestReloaderPartialFailureConverges(t *testing.T) {
	fake := &fakeAllowLister{deleteErr: errors.New("boom")}
	w, _, write := newTestReloader(t, fake, `"a.com"`)

	write(profileSrc(`"b.com"`))
	w.poll(context.Background())
	// Add succeeded, delete failed: the live list is the union.
	if !slices.Equal(w.applied.Net.AllowedHosts, []string{"a.com", "b.com"}) {
		t.Fatalf("applied = %v", w.applied.Net.AllowedHosts)
	}

	// The next edit retries the stale removal.
	fake.deleteErr = nil
	fake.calls = nil
	write(profileSrc(`"b.com", "c.com"`))
	w.poll(context.Background())
	want := []string{"add c.com", "delete a.com"}
	if !slices.Equal(fake.calls, want) {
		t.Fatalf("calls = %v, want %v", fake.calls, want)
	}
}
