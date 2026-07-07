// Property tests for SPEC.md §Invariants 1-9. The technique: generate random
// abstract config descriptions, render them to starlark source, evaluate with
// config.LoadFile, and assert the invariants on the compiled result.
package config_test

import (
	"fmt"
	"reflect"
	"sort"
	"strconv"
	"strings"
	"testing"

	"pgregory.net/rapid"

	"jade.fyi/ghostjar/lid/internal/config"
)

// ---------------------------------------------------------------------------
// Shared helpers (used by all *_test.go files in this package).
// ---------------------------------------------------------------------------

// failer is the subset of testing.T / rapid.T our helpers need.
type failer interface {
	Fatalf(format string, args ...any)
}

// loadOne evaluates src and requires success with exactly one profile.
func loadOne(t failer, src string) *config.Profile {
	f, err := config.LoadFile("gen.star", []byte(src))
	if err != nil {
		t.Fatalf("LoadFile failed on:\n%s\nerror: %v", src, err)
	}
	if f == nil {
		t.Fatalf("LoadFile returned nil *File without error on:\n%s", src)
	}
	if len(f.Profiles) != 1 {
		t.Fatalf("LoadFile: want exactly 1 profile, got %d on:\n%s", len(f.Profiles), src)
	}
	return f.Profiles[0]
}

func quoteList(ss []string) string {
	qs := make([]string, len(ss))
	for i, s := range ss {
		qs[i] = strconv.Quote(s)
	}
	return strings.Join(qs, ", ")
}

// normalizeHost mirrors SPEC §Hosts: trimmed of ASCII whitespace, lowercased.
func normalizeHost(h string) string { return strings.ToLower(strings.TrimSpace(h)) }

// dedupFirst removes duplicates keeping the first occurrence (SPEC inv. 4).
func dedupFirst(hosts []string) []string {
	seen := make(map[string]bool, len(hosts))
	var out []string
	for _, h := range hosts {
		if !seen[h] {
			seen[h] = true
			out = append(out, h)
		}
	}
	return out
}

func starBool(b bool) string {
	if b {
		return "True"
	}
	return "False"
}

// ---------------------------------------------------------------------------
// Generators of abstract config descriptions.
// ---------------------------------------------------------------------------

const (
	// A valid host glob per SPEC §Hosts: chars [A-Za-z0-9.*-], at least one
	// char that is not a dot or hyphen.
	reHostCore   = `[A-Za-z0-9.*-]{0,5}[A-Za-z0-9*][A-Za-z0-9.*-]{0,5}`
	reSecretName = `[A-Za-z_][A-Za-z0-9_]{0,7}`
	reIdent      = `[a-z][a-z0-9_-]{0,8}`
	// Short safe strings: cannot possibly contain a 36-char secret literal,
	// and round-trip cleanly through strconv.Quote into starlark.
	reSafe        = `[A-Za-z0-9_. -]{1,8}`
	reSafeOrEmpty = `[A-Za-z0-9_. -]{0,8}`
)

// drawHostRaw draws a valid host glob with random case and random ASCII
// whitespace padding, to exercise trim+lowercase normalization.
func drawHostRaw(t *rapid.T, label string) string {
	core := rapid.StringMatching(reHostCore).Draw(t, label+".core")
	l := rapid.SampledFrom([]string{"", " ", "\t"}).Draw(t, label+".padl")
	r := rapid.SampledFrom([]string{"", " ", "  "}).Draw(t, label+".padr")
	return l + core + r
}

func drawHostList(t *rapid.T, label string, min int) []string {
	hosts := rapid.SliceOfN(
		rapid.Custom(func(t *rapid.T) string { return drawHostRaw(t, "h") }),
		min, 4,
	).Draw(t, label)
	// Sometimes append a case/padding variant of an existing host so the
	// dedup-after-normalization part of invariant 4 is actually exercised.
	if len(hosts) > 0 && rapid.Bool().Draw(t, label+".dup") {
		hosts = append(hosts, " "+strings.ToUpper(strings.TrimSpace(hosts[0])))
	}
	return hosts
}

type genSecret struct {
	name  string
	kind  string // "env" | "cmd" | "literal"
	env   string
	cmd   []string
	lit   string
	hosts []string // raw (pre-normalization) forms
}

func drawSecret(t *rapid.T, label string, forceLiteral bool, reusableHost string) genSecret {
	s := genSecret{
		name:  rapid.StringMatching(reSecretName).Draw(t, label+".name"),
		hosts: drawHostList(t, label+".hosts", 1),
	}
	// Sometimes overlap with an allow-list host to exercise cross-source dedup.
	if reusableHost != "" && rapid.Bool().Draw(t, label+".reuse") {
		s.hosts = append(s.hosts, reusableHost)
	}
	s.kind = "literal"
	if !forceLiteral {
		s.kind = rapid.SampledFrom([]string{"env", "cmd", "literal"}).Draw(t, label+".kind")
	}
	switch s.kind {
	case "env":
		s.env = rapid.StringMatching(`[A-Z_][A-Z0-9_]{0,7}`).Draw(t, label+".env")
	case "cmd":
		s.cmd = rapid.SliceOfN(rapid.StringMatching(reSafe), 1, 3).Draw(t, label+".cmd")
	case "literal":
		// Distinctive long random literal: nothing else the generator emits
		// can contain it (all other generated strings are far shorter).
		s.lit = "LIT_" + rapid.StringMatching(`[A-Za-z0-9]{32}`).Draw(t, label+".lit")
	}
	return s
}

func (s genSecret) render() string {
	var src string
	switch s.kind {
	case "env":
		src = "from_env = " + strconv.Quote(s.env)
	case "cmd":
		src = "from_cmd = [" + quoteList(s.cmd) + "]"
	case "literal":
		src = "value = " + strconv.Quote(s.lit)
	}
	return fmt.Sprintf("lid.secret(%s, %s, hosts = [%s])",
		strconv.Quote(s.name), src, quoteList(s.hosts))
}

type netMode int

const (
	netMaybe netMode = iota
	netNever
	netAlways
)

type genProfile struct {
	name, image string

	hasNet     bool
	renderNone bool // render "network = None" instead of omitting the kwarg
	allowAll   bool
	allow      []string // raw host globs
	privSet    bool
	allowPriv  bool

	secrets []genSecret

	envKeys []string // sorted, for deterministic rendering
	envVals map[string]string

	memSet, diskSet   bool
	memExpr, diskExpr string // starlark expression text
	memMB, diskMB     int

	cpusSet    bool
	cpus       int
	timeoutSet bool
	timeout    int
	wsSet      bool
	ws         string
	mountSet   bool
	mount      string
	cmdSet     bool
	cmd        []string
}

// drawSize draws a valid size value per SPEC §Sizes and returns the starlark
// expression along with the expected MiB result.
func drawSize(t *rapid.T, label string) (expr string, mb int) {
	switch rapid.SampledFrom([]string{"int", "MiB", "MB", "GiB", "GB"}).Draw(t, label+".kind") {
	case "int":
		n := rapid.IntRange(1, 1048576).Draw(t, label+".n")
		return strconv.Itoa(n), n
	case "MiB":
		n := rapid.IntRange(1, 1048576).Draw(t, label+".n")
		return strconv.Quote(fmt.Sprintf("%dMiB", n)), n
	case "MB":
		n := rapid.IntRange(1, 1048576).Draw(t, label+".n")
		return strconv.Quote(fmt.Sprintf("%dMB", n)), n
	case "GiB":
		n := rapid.IntRange(1, 1024).Draw(t, label+".n")
		return strconv.Quote(fmt.Sprintf("%dGiB", n)), 1024 * n
	default: // "GB"
		n := rapid.IntRange(1, 1024).Draw(t, label+".n")
		return strconv.Quote(fmt.Sprintf("%dGB", n)), 1024 * n
	}
}

func drawProfile(t *rapid.T, mode netMode, forceLiteralSecret bool) genProfile {
	p := genProfile{
		name:  rapid.StringMatching(reIdent).Draw(t, "name"),
		image: rapid.StringMatching(`[a-z0-9./_-]{1,12}`).Draw(t, "image"),
	}
	switch mode {
	case netNever:
		p.hasNet = false
	case netAlways:
		p.hasNet = true
	default:
		p.hasNet = rapid.Bool().Draw(t, "hasNet")
	}
	if !p.hasNet {
		p.renderNone = rapid.Bool().Draw(t, "renderNone")
	} else {
		p.allowAll = rapid.Bool().Draw(t, "allowAll")
		if !p.allowAll {
			p.allow = drawHostList(t, "allow", 1)
		}
		p.privSet = rapid.Bool().Draw(t, "privSet")
		if p.privSet {
			p.allowPriv = rapid.Bool().Draw(t, "allowPriv")
		}
		nsec := rapid.IntRange(0, 3).Draw(t, "nsec")
		if forceLiteralSecret && nsec == 0 {
			nsec = 1
		}
		reusable := ""
		if len(p.allow) > 0 {
			reusable = p.allow[0]
		}
		for i := 0; i < nsec; i++ {
			p.secrets = append(p.secrets,
				drawSecret(t, fmt.Sprintf("sec%d", i), forceLiteralSecret && i == 0, reusable))
		}
	}
	p.envVals = rapid.MapOfN(
		rapid.StringMatching(`[A-Z_][A-Z0-9_]{0,6}`),
		rapid.StringMatching(reSafeOrEmpty),
		0, 3,
	).Draw(t, "env")
	for k := range p.envVals {
		p.envKeys = append(p.envKeys, k)
	}
	sort.Strings(p.envKeys)

	if rapid.Bool().Draw(t, "memSet") {
		p.memSet = true
		p.memExpr, p.memMB = drawSize(t, "mem")
	}
	if rapid.Bool().Draw(t, "diskSet") {
		p.diskSet = true
		p.diskExpr, p.diskMB = drawSize(t, "disk")
	}
	if rapid.Bool().Draw(t, "cpusSet") {
		p.cpusSet = true
		p.cpus = rapid.IntRange(1, 128).Draw(t, "cpus")
	}
	if rapid.Bool().Draw(t, "timeoutSet") {
		p.timeoutSet = true
		p.timeout = rapid.IntRange(1, 4000000).Draw(t, "timeout")
	}
	if rapid.Bool().Draw(t, "wsSet") {
		p.wsSet = true
		p.ws = "/" + rapid.StringMatching(`[a-z0-9/_-]{0,10}`).Draw(t, "ws")
	}
	if rapid.Bool().Draw(t, "mountSet") {
		p.mountSet = true
		p.mount = rapid.SampledFrom([]string{"rw", "ro", "off"}).Draw(t, "mount")
	}
	if rapid.Bool().Draw(t, "cmdSet") {
		p.cmdSet = true
		p.cmd = rapid.SliceOfN(rapid.StringMatching(reSafe), 1, 3).Draw(t, "cmd")
	}
	return p
}

func (p genProfile) render() string {
	var b strings.Builder
	b.WriteString("lid.sandbox(\n")
	fmt.Fprintf(&b, "    name = %s,\n", strconv.Quote(p.name))
	fmt.Fprintf(&b, "    image = %s,\n", strconv.Quote(p.image))
	if p.hasNet {
		var args []string
		if p.allowAll {
			args = append(args, "allow_all = True")
		} else {
			args = append(args, "allow = ["+quoteList(p.allow)+"]")
		}
		if p.privSet {
			args = append(args, "allow_private = "+starBool(p.allowPriv))
		}
		fmt.Fprintf(&b, "    network = lid.network(%s),\n", strings.Join(args, ", "))
		if len(p.secrets) > 0 {
			b.WriteString("    secrets = [\n")
			for _, s := range p.secrets {
				fmt.Fprintf(&b, "        %s,\n", s.render())
			}
			b.WriteString("    ],\n")
		}
	} else if p.renderNone {
		b.WriteString("    network = None,\n")
	}
	if len(p.envKeys) > 0 {
		var kv []string
		for _, k := range p.envKeys {
			kv = append(kv, strconv.Quote(k)+": "+strconv.Quote(p.envVals[k]))
		}
		fmt.Fprintf(&b, "    env = {%s},\n", strings.Join(kv, ", "))
	}
	if p.memSet {
		fmt.Fprintf(&b, "    memory = %s,\n", p.memExpr)
	}
	if p.diskSet {
		fmt.Fprintf(&b, "    disk = %s,\n", p.diskExpr)
	}
	if p.cpusSet {
		fmt.Fprintf(&b, "    cpus = %d,\n", p.cpus)
	}
	if p.timeoutSet {
		fmt.Fprintf(&b, "    timeout = %d,\n", p.timeout)
	}
	if p.wsSet {
		fmt.Fprintf(&b, "    workspace = %s,\n", strconv.Quote(p.ws))
	}
	if p.mountSet {
		fmt.Fprintf(&b, "    mount_cwd = %s,\n", strconv.Quote(p.mount))
	}
	if p.cmdSet {
		fmt.Fprintf(&b, "    command = [%s],\n", quoteList(p.cmd))
	}
	b.WriteString(")\n")
	return b.String()
}

// expectedAllowed computes the SPEC-mandated AllowedHosts: ordered dedup'd
// union of normalized allow hosts then secret hosts (in secret order); nil
// when the union is empty (NoNetwork, or AllowAll with no secrets).
func (p genProfile) expectedAllowed() []string {
	if !p.hasNet {
		return nil
	}
	var raw []string
	if !p.allowAll {
		raw = append(raw, p.allow...)
	}
	for _, s := range p.secrets {
		raw = append(raw, s.hosts...)
	}
	norm := make([]string, len(raw))
	for i, h := range raw {
		norm[i] = normalizeHost(h)
	}
	return dedupFirst(norm)
}

// ---------------------------------------------------------------------------
// Invariant 1: closed by default.
// ---------------------------------------------------------------------------

func TestPropClosedByDefault(t *testing.T) {
	rapid.Check(t, func(t *rapid.T) {
		p := drawProfile(t, netNever, false)
		prof := loadOne(t, p.render())
		want := config.Network{NoNetwork: true, BlockPrivateIPs: true}
		if !reflect.DeepEqual(prof.Net, want) {
			t.Fatalf("omitted network: got Net %+v, want %+v\nsrc:\n%s", prof.Net, want, p.render())
		}
		if len(prof.Secrets) != 0 {
			t.Fatalf("omitted network: got %d secrets, want 0", len(prof.Secrets))
		}
	})
}

// ---------------------------------------------------------------------------
// Invariant 2: AllowAll only when allow_all=True was rendered.
// ---------------------------------------------------------------------------

func TestPropAllowAllOnlyExplicit(t *testing.T) {
	rapid.Check(t, func(t *rapid.T) {
		p := drawProfile(t, netMaybe, false)
		prof := loadOne(t, p.render())
		want := p.hasNet && p.allowAll
		if prof.Net.AllowAll != want {
			t.Fatalf("AllowAll = %v, want %v (allow_all rendered: %v)\nsrc:\n%s",
				prof.Net.AllowAll, want, want, p.render())
		}
	})
}

// ---------------------------------------------------------------------------
// Invariant 3: BlockPrivateIPs == !allow_private in every case.
// ---------------------------------------------------------------------------

func TestPropBlockPrivateIPs(t *testing.T) {
	rapid.Check(t, func(t *rapid.T) {
		p := drawProfile(t, netMaybe, false)
		prof := loadOne(t, p.render())
		want := true // no network, or allow_private defaulted/False
		if p.hasNet && p.privSet && p.allowPriv {
			want = false
		}
		if prof.Net.BlockPrivateIPs != want {
			t.Fatalf("BlockPrivateIPs = %v, want %v\nsrc:\n%s",
				prof.Net.BlockPrivateIPs, want, p.render())
		}
	})
}

// ---------------------------------------------------------------------------
// Invariant 4: AllowedHosts is exactly the ordered, dedup'd union of
// normalized allow hosts then secret hosts; first occurrence wins.
// ---------------------------------------------------------------------------

func TestPropAllowedHostsUnion(t *testing.T) {
	rapid.Check(t, func(t *rapid.T) {
		p := drawProfile(t, netAlways, false)
		prof := loadOne(t, p.render())
		want := p.expectedAllowed()
		if want == nil {
			// AllowAll with no secrets: SPEC says AllowedHosts is nil.
			if prof.Net.AllowedHosts != nil {
				t.Fatalf("AllowedHosts = %q, want nil\nsrc:\n%s", prof.Net.AllowedHosts, p.render())
			}
			return
		}
		if !reflect.DeepEqual(prof.Net.AllowedHosts, want) {
			t.Fatalf("AllowedHosts = %q, want %q\nsrc:\n%s", prof.Net.AllowedHosts, want, p.render())
		}
	})
}

// ---------------------------------------------------------------------------
// Invariant 5: secret containment — value= literals appear nowhere in the
// profile except Secrets[i].Source.Literal.
// ---------------------------------------------------------------------------

// profileNonSecretStrings collects every string in the profile outside the
// Secrets slice.
func profileNonSecretStrings(p *config.Profile) []string {
	out := []string{p.Name, p.Image, p.Workspace, string(p.MountCwd)}
	out = append(out, p.Command...)
	for k, v := range p.Env {
		out = append(out, k, v)
	}
	out = append(out, p.Net.AllowedHosts...)
	out = append(out, p.Net.DNS...)
	for _, h := range p.Net.AddHosts {
		out = append(out, h.Host, h.IP)
	}
	return out
}

func TestPropSecretLiteralContainment(t *testing.T) {
	rapid.Check(t, func(t *rapid.T) {
		p := drawProfile(t, netAlways, true) // at least one literal secret
		prof := loadOne(t, p.render())
		if len(prof.Secrets) != len(p.secrets) {
			t.Fatalf("got %d secrets, want %d\nsrc:\n%s", len(prof.Secrets), len(p.secrets), p.render())
		}
		for i, gs := range p.secrets {
			if gs.kind != "literal" {
				continue
			}
			lit := gs.lit
			sec := prof.Secrets[i]
			if sec.Name != gs.name {
				t.Fatalf("Secrets[%d].Name = %q, want %q (secret order)", i, sec.Name, gs.name)
			}
			if sec.Source.Kind != config.SourceLiteral {
				t.Fatalf("Secrets[%d].Source.Kind = %q, want %q", i, sec.Source.Kind, config.SourceLiteral)
			}
			if sec.Source.Literal != lit {
				t.Fatalf("Secrets[%d].Source.Literal = %q, want %q", i, sec.Source.Literal, lit)
			}
			for _, s := range profileNonSecretStrings(prof) {
				if strings.Contains(s, lit) {
					t.Fatalf("literal %q leaked into non-secret field %q\nsrc:\n%s", lit, s, p.render())
				}
			}
			for j, other := range prof.Secrets {
				fields := []string{other.Name, other.Source.EnvName}
				fields = append(fields, other.Source.Cmd...)
				fields = append(fields, other.Hosts...)
				// other.Source.Literal deliberately excluded: each literal is
				// allowed (only) in its own Literal slot.
				for _, s := range fields {
					if strings.Contains(s, lit) {
						t.Fatalf("literal %q leaked into Secrets[%d] field %q", lit, j, s)
					}
				}
			}
		}
	})
}

// ---------------------------------------------------------------------------
// Invariant 6: size arithmetic round-trip for memory and disk.
// ---------------------------------------------------------------------------

func TestPropSizeRoundTrip(t *testing.T) {
	rapid.Check(t, func(t *rapid.T) {
		n := rapid.IntRange(1, 1024).Draw(t, "gib")
		m := rapid.IntRange(1, 1048576).Draw(t, "mib")

		// "<n>GiB" memory, int disk.
		prof := loadOne(t, fmt.Sprintf(
			`lid.sandbox(name = "p", image = "i", memory = "%dGiB", disk = %d)`, n, m))
		if prof.MemoryMB != 1024*n {
			t.Fatalf(`memory = "%dGiB": MemoryMB = %d, want %d`, n, prof.MemoryMB, 1024*n)
		}
		if prof.DiskMB != m {
			t.Fatalf("disk = %d: DiskMB = %d, want %d", m, prof.DiskMB, m)
		}

		// int memory, "<n>GiB" disk.
		prof = loadOne(t, fmt.Sprintf(
			`lid.sandbox(name = "p", image = "i", memory = %d, disk = "%dGiB")`, m, n))
		if prof.MemoryMB != m {
			t.Fatalf("memory = %d: MemoryMB = %d, want %d", m, prof.MemoryMB, m)
		}
		if prof.DiskMB != 1024*n {
			t.Fatalf(`disk = "%dGiB": DiskMB = %d, want %d`, n, prof.DiskMB, 1024*n)
		}
	})
}

// ---------------------------------------------------------------------------
// Invariant 7: determinism — LoadFile twice on the same bytes is DeepEqual.
// ---------------------------------------------------------------------------

func TestPropDeterminism(t *testing.T) {
	rapid.Check(t, func(t *rapid.T) {
		p := drawProfile(t, netMaybe, false)
		src := []byte(p.render())
		f1, err1 := config.LoadFile("gen.star", src)
		f2, err2 := config.LoadFile("gen.star", src)
		if err1 != nil || err2 != nil {
			t.Fatalf("LoadFile on valid generated config: err1=%v err2=%v\nsrc:\n%s", err1, err2, src)
		}
		if !reflect.DeepEqual(f1, f2) {
			t.Fatalf("two LoadFile calls differ:\n%#v\nvs\n%#v\nsrc:\n%s", f1, f2, src)
		}
	})
}

// ---------------------------------------------------------------------------
// Invariant 8: idempotent normalization — feeding AllowedHosts back in as
// allow (no secrets) yields the same AllowedHosts.
// ---------------------------------------------------------------------------

func TestPropIdempotentNormalization(t *testing.T) {
	rapid.Check(t, func(t *rapid.T) {
		allow := drawHostList(t, "allow", 1)
		src1 := fmt.Sprintf(
			`lid.sandbox(name = "p", image = "i", network = lid.network(allow = [%s]))`,
			quoteList(allow))
		a1 := loadOne(t, src1).Net.AllowedHosts
		if len(a1) == 0 {
			t.Fatalf("non-empty allow produced empty AllowedHosts\nsrc:\n%s", src1)
		}
		src2 := fmt.Sprintf(
			`lid.sandbox(name = "p", image = "i", network = lid.network(allow = [%s]))`,
			quoteList(a1))
		a2 := loadOne(t, src2).Net.AllowedHosts
		if !reflect.DeepEqual(a1, a2) {
			t.Fatalf("normalization not idempotent: %q -> %q", a1, a2)
		}
	})
}

// ---------------------------------------------------------------------------
// Invariant 9a: no-panic totality over arbitrary input.
// ---------------------------------------------------------------------------

func TestPropNoPanicOnArbitraryInput(t *testing.T) {
	rapid.Check(t, func(t *rapid.T) {
		inputs := [][]byte{
			[]byte(rapid.String().Draw(t, "str")),
			rapid.SliceOfN(rapid.Byte(), 0, 256).Draw(t, "bytes"),
		}
		for _, src := range inputs {
			func() {
				defer func() {
					if r := recover(); r != nil {
						t.Fatalf("LoadFile panicked on %q: %v", src, r)
					}
				}()
				f, err := config.LoadFile("fuzz.star", src)
				if err == nil && f == nil {
					t.Fatalf("LoadFile returned (nil, nil) on %q", src)
				}
			}()
		}
	})
}

// ---------------------------------------------------------------------------
// Invariant 9b: every generated invalid host, wherever placed, yields
// ErrInvalidHost wrapped in ErrEval.
// ---------------------------------------------------------------------------

func TestPropInvalidHostsRejected(t *testing.T) {
	rapid.Check(t, func(t *rapid.T) {
		var bad string
		switch rapid.SampledFrom([]string{"sep", "solely", "empty", "charset"}).Draw(t, "class") {
		case "sep": // scheme, slash, port, at-sign, or inner whitespace
			a := rapid.StringMatching(reHostCore).Draw(t, "a")
			b := rapid.StringMatching(reHostCore).Draw(t, "b")
			sep := rapid.SampledFrom([]string{"://", "/", ":", "@", " ", "\t"}).Draw(t, "sep")
			bad = a + sep + b
		case "solely": // solely dots/hyphens
			bad = rapid.StringMatching(`[.-]{1,6}`).Draw(t, "dots")
		case "empty": // empty after trimming
			bad = rapid.SampledFrom([]string{"", " ", "\t ", "  "}).Draw(t, "ws")
		case "charset": // character outside [A-Za-z0-9.*-]
			core := rapid.StringMatching(reHostCore).Draw(t, "core")
			ch := rapid.SampledFrom([]string{"_", "!", "#", "%", "$", "?"}).Draw(t, "ch")
			bad = core + ch
		}
		var src string
		switch rapid.SampledFrom([]string{"allow", "secret", "add_hosts"}).Draw(t, "where") {
		case "allow":
			src = fmt.Sprintf(
				`lid.sandbox(name = "p", image = "i", network = lid.network(allow = [%s, "ok.example"]))`,
				strconv.Quote(bad))
		case "secret":
			src = fmt.Sprintf(
				`lid.sandbox(name = "p", image = "i", network = lid.network(allow = ["ok.example"]), `+
					`secrets = [lid.secret("S", from_env = "E", hosts = [%s])])`,
				strconv.Quote(bad))
		case "add_hosts":
			src = fmt.Sprintf(
				`lid.sandbox(name = "p", image = "i", network = lid.network(allow = ["ok.example"], `+
					`add_hosts = {%s: "1.2.3.4"}))`,
				strconv.Quote(bad))
		}
		requireErrIs(t, src, config.ErrInvalidHost, config.ErrEval)
	})
}
