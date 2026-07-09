// Unit tests for the specified constants and defaults: the lid.sandbox
// defaults table, the exact lid.hosts preset lists, lid.github semantics,
// duration and size parsing, add_hosts/dns handling, and normalization.
package config_test

import (
	"fmt"
	"reflect"
	"testing"

	"jade.fyi/ghostjar/lid/internal/config"
)

// TestNothingZZZ exists solely as a compilation smoke target:
// go test ./internal/config/ -run TestNothingZZZ
func TestNothingZZZ(t *testing.T) {}

// githubDefaultHosts is normative per SPEC §lid.github (exact contents and
// order); lid.hosts.github is specified to be the same list.
var githubDefaultHosts = []string{
	"github.com",
	"api.github.com",
	"codeload.github.com",
	"objects.githubusercontent.com",
	"raw.githubusercontent.com",
	"*.githubusercontent.com",
	"ghcr.io",
}

// hostPresets is the normative table from SPEC §lid.hosts.
var hostPresets = map[string][]string{
	"anthropic": {"api.anthropic.com", "statsig.anthropic.com"},
	"github":    githubDefaultHosts,
	"pypi":      {"pypi.org", "files.pythonhosted.org"},
	"npm":       {"registry.npmjs.org"},
	"crates":    {"crates.io", "static.crates.io", "index.crates.io"},
	"golang":    {"proxy.golang.org", "sum.golang.org", "storage.googleapis.com"},
	"debian":    {"deb.debian.org", "security.debian.org"},
	"ubuntu":    {"archive.ubuntu.com", "security.ubuntu.com", "ports.ubuntu.com"},
	"alpine":    {"dl-cdn.alpinelinux.org"},
	"nix":       {"cache.nixos.org", "channels.nixos.org", "nixos.org"},
	"fedora":    {"dl.fedoraproject.org", "mirrors.fedoraproject.org"},
}

// SPEC §lid.sandbox defaults table: cpus 2, memory 2048 MiB, disk 10240 MiB,
// timeout 43200 s, workspace "/workspace", mount_cwd "rw", command ["claude"],
// no network, no secrets, empty env.
func TestSandboxDefaults(t *testing.T) {
	p := loadOne(t, `lid.sandbox(name = "p", image = "docker.io/library/node:22")`)
	if p.Name != "p" {
		t.Errorf("Name = %q, want %q", p.Name, "p")
	}
	if p.Image != "docker.io/library/node:22" {
		t.Errorf("Image = %q, want verbatim %q", p.Image, "docker.io/library/node:22")
	}
	if p.CPUs != 2 {
		t.Errorf("CPUs = %v, want 2", p.CPUs)
	}
	if p.MemoryMB != 2048 {
		t.Errorf("MemoryMB = %d, want 2048", p.MemoryMB)
	}
	if p.DiskMB != 10240 {
		t.Errorf("DiskMB = %d, want 10240", p.DiskMB)
	}
	if p.TimeoutSeconds != 43200 {
		t.Errorf("TimeoutSeconds = %d, want 43200", p.TimeoutSeconds)
	}
	if p.Workspace != "/workspace" {
		t.Errorf("Workspace = %q, want %q", p.Workspace, "/workspace")
	}
	if p.MountCwd != config.MountRW {
		t.Errorf("MountCwd = %q, want %q", p.MountCwd, config.MountRW)
	}
	if !reflect.DeepEqual(p.Command, []string{"claude"}) {
		t.Errorf("Command = %q, want [claude]", p.Command)
	}
	if len(p.Env) != 0 {
		t.Errorf("Env = %v, want empty", p.Env)
	}
	if len(p.Secrets) != 0 {
		t.Errorf("Secrets = %v, want empty", p.Secrets)
	}
	wantNet := config.Network{NoNetwork: true, BlockPrivateIPs: true}
	if !reflect.DeepEqual(p.Net, wantNet) {
		t.Errorf("Net = %+v, want %+v", p.Net, wantNet)
	}
}

// SPEC §lid.hosts: exact contents and order of every preset, observed through
// allow= (normalization preserves order; presets are already normalized).
func TestHostsPresets(t *testing.T) {
	for member, want := range hostPresets {
		t.Run(member, func(t *testing.T) {
			src := fmt.Sprintf(
				`lid.sandbox(name = "p", image = "i", network = lid.network(allow = lid.hosts.%s))`,
				member)
			p := loadOne(t, src)
			if !reflect.DeepEqual(p.Net.AllowedHosts, want) {
				t.Fatalf("lid.hosts.%s: AllowedHosts = %q, want %q", member, p.Net.AllowedHosts, want)
			}
			if p.Net.NoNetwork || p.Net.AllowAll {
				t.Fatalf("lid.hosts.%s: NoNetwork=%v AllowAll=%v, want false/false",
					member, p.Net.NoNetwork, p.Net.AllowAll)
			}
		})
	}
}

// Preset lists are ordinary starlark lists: concatenation must work and keep
// order (allow-list order, SPEC invariant 4).
func TestHostsPresetsConcatenate(t *testing.T) {
	p := loadOne(t, `lid.sandbox(name = "p", image = "i", `+
		`network = lid.network(allow = lid.hosts.pypi + lid.hosts.npm))`)
	want := []string{"pypi.org", "files.pythonhosted.org", "registry.npmjs.org"}
	if !reflect.DeepEqual(p.Net.AllowedHosts, want) {
		t.Fatalf("AllowedHosts = %q, want %q", p.Net.AllowedHosts, want)
	}
}

// SPEC §lid.hosts: "a frozen struct of frozen list[str] members" — mutation
// is an evaluation error.
func TestHostsPresetsFrozen(t *testing.T) {
	requireErrIs(t, `lid.hosts.pypi.append("evil.example")`, config.ErrEval)
}

// SPEC §lid.github: defaults — GITHUB_TOKEN name, source kind "github",
// GitCredential=true, the seven default hosts, and their union into the
// allowlist under allow_all.
func TestGithubDefaults(t *testing.T) {
	p := loadOne(t, `lid.sandbox(name = "p", image = "i", `+
		`network = lid.network(allow_all = True), secrets = [lid.github()])`)
	if len(p.Secrets) != 1 {
		t.Fatalf("got %d secrets, want 1", len(p.Secrets))
	}
	s := p.Secrets[0]
	if s.Name != "GITHUB_TOKEN" {
		t.Errorf("Name = %q, want GITHUB_TOKEN", s.Name)
	}
	if s.Source.Kind != config.SourceGitHub {
		t.Errorf("Source.Kind = %q, want %q", s.Source.Kind, config.SourceGitHub)
	}
	if !s.GitCredential {
		t.Errorf("GitCredential = false, want true")
	}
	if s.Source.EnvName != "" || len(s.Source.Cmd) != 0 || s.Source.Literal != "" {
		t.Errorf("github Source carries stray fields: %+v", s.Source)
	}
	if !reflect.DeepEqual(s.Hosts, githubDefaultHosts) {
		t.Errorf("Hosts = %q, want %q", s.Hosts, githubDefaultHosts)
	}
	if !p.Net.AllowAll {
		t.Errorf("AllowAll = false, want true")
	}
	if !reflect.DeepEqual(p.Net.AllowedHosts, githubDefaultHosts) {
		t.Errorf("AllowedHosts = %q, want github default hosts %q", p.Net.AllowedHosts, githubDefaultHosts)
	}
}

// SPEC §lid.github: an explicit non-empty hosts list replaces the defaults
// (and is normalized: case-lowered).
func TestGithubExplicitHostsReplaceDefaults(t *testing.T) {
	p := loadOne(t, `lid.sandbox(name = "p", image = "i", `+
		`network = lid.network(allow_all = True), secrets = [lid.github(hosts = ["GitHub.COM"])])`)
	want := []string{"github.com"}
	if !reflect.DeepEqual(p.Secrets[0].Hosts, want) {
		t.Fatalf("Hosts = %q, want %q", p.Secrets[0].Hosts, want)
	}
	if !reflect.DeepEqual(p.Net.AllowedHosts, want) {
		t.Fatalf("AllowedHosts = %q, want %q", p.Net.AllowedHosts, want)
	}
}

// SPEC §Hosts: case-lowering and ASCII whitespace trimming.
func TestHostNormalizationCaseAndTrim(t *testing.T) {
	p := loadOne(t, `lid.sandbox(name = "p", image = "i", `+
		`network = lid.network(allow = ["ExAmple.COM", " Trim.Me\t", "STAR.*.Wild"]))`)
	want := []string{"example.com", "trim.me", "star.*.wild"}
	if !reflect.DeepEqual(p.Net.AllowedHosts, want) {
		t.Fatalf("AllowedHosts = %q, want %q", p.Net.AllowedHosts, want)
	}
}

// SPEC §lid.sandbox timeout: int seconds or Go duration strings.
func TestTimeoutDurations(t *testing.T) {
	cases := []struct {
		expr string
		want int
	}{
		{`"90m"`, 5400},
		{`"2h30m"`, 9000},
		{`"12h"`, 43200},
		{`"45s"`, 45},
		{`60`, 60},
		{`1`, 1},
	}
	for _, tc := range cases {
		t.Run(tc.expr, func(t *testing.T) {
			p := loadOne(t, sb(`timeout = `+tc.expr))
			if p.TimeoutSeconds != tc.want {
				t.Fatalf("timeout = %s: TimeoutSeconds = %d, want %d", tc.expr, p.TimeoutSeconds, tc.want)
			}
		})
	}
}

// SPEC §Sizes: MB ≡ MiB, GB ≡ GiB = 1024 MiB, ints are MiB, bounds inclusive.
func TestSizeUnits(t *testing.T) {
	memCases := []struct {
		expr string
		want int
	}{
		{`"4GiB"`, 4096},
		{`"4GB"`, 4096},
		{`"512MiB"`, 512},
		{`"512MB"`, 512},
		{`"1MiB"`, 1},
		{`3000`, 3000},
		{`1`, 1},
		{`1048576`, 1048576},   // upper bound inclusive
		{`"1024GiB"`, 1048576}, // upper bound via GiB
	}
	for _, tc := range memCases {
		t.Run("memory="+tc.expr, func(t *testing.T) {
			p := loadOne(t, sb(`memory = `+tc.expr))
			if p.MemoryMB != tc.want {
				t.Fatalf("memory = %s: MemoryMB = %d, want %d", tc.expr, p.MemoryMB, tc.want)
			}
		})
	}
	diskCases := []struct {
		expr string
		want int
	}{
		{`"10GiB"`, 10240},
		{`"1GB"`, 1024},
		{`"777MB"`, 777},
		{`5000`, 5000},
	}
	for _, tc := range diskCases {
		t.Run("disk="+tc.expr, func(t *testing.T) {
			p := loadOne(t, sb(`disk = `+tc.expr))
			if p.DiskMB != tc.want {
				t.Fatalf("disk = %s: DiskMB = %d, want %d", tc.expr, p.DiskMB, tc.want)
			}
		})
	}
}

// SPEC §lid.sandbox cpus: int or float, 0 < cpus <= 128.
func TestCPUValues(t *testing.T) {
	cases := []struct {
		expr string
		want float64
	}{
		{`128`, 128},
		{`1`, 1},
		{`1.5`, 1.5},
		{`0.5`, 0.5},
	}
	for _, tc := range cases {
		t.Run(tc.expr, func(t *testing.T) {
			p := loadOne(t, sb(`cpus = `+tc.expr))
			if p.CPUs != tc.want {
				t.Fatalf("cpus = %s: CPUs = %v, want %v", tc.expr, p.CPUs, tc.want)
			}
		})
	}
}

// SPEC §lid.network add_hosts: static entries, valid IPv4/IPv6, output sorted
// by Host.
func TestAddHostsSorted(t *testing.T) {
	p := loadOne(t, sb(`network = lid.network(allow = ["ok.example"], `+
		`add_hosts = {"b.example": "10.0.0.2", "a.example": "192.168.0.1", "c.example": "::1"})`))
	want := []config.HostIP{
		{Host: "a.example", IP: "192.168.0.1"},
		{Host: "b.example", IP: "10.0.0.2"},
		{Host: "c.example", IP: "::1"},
	}
	if !reflect.DeepEqual(p.Net.AddHosts, want) {
		t.Fatalf("AddHosts = %+v, want %+v", p.Net.AddHosts, want)
	}
}

// SPEC §lid.network dns: passed through.
func TestDNSPassthrough(t *testing.T) {
	p := loadOne(t, sb(`network = lid.network(allow = ["ok.example"], dns = ["1.1.1.1", "9.9.9.9"])`))
	want := []string{"1.1.1.1", "9.9.9.9"}
	if !reflect.DeepEqual(p.Net.DNS, want) {
		t.Fatalf("DNS = %q, want %q", p.Net.DNS, want)
	}
	// Empty dns ⇒ matchlock defaults, i.e. nothing recorded.
	p = loadOne(t, sb(netOK))
	if len(p.Net.DNS) != 0 {
		t.Fatalf("default DNS = %q, want empty", p.Net.DNS)
	}
}

// SPEC §Compilation semantics: env copied verbatim.
func TestEnvPassthrough(t *testing.T) {
	p := loadOne(t, sb(`env = {"FOO": "bar", "EMPTY": "", "PATH2": "/usr/bin:/bin"}`))
	want := map[string]string{"FOO": "bar", "EMPTY": "", "PATH2": "/usr/bin:/bin"}
	if !reflect.DeepEqual(p.Env, want) {
		t.Fatalf("Env = %v, want %v", p.Env, want)
	}
}

func TestCommandPassthrough(t *testing.T) {
	p := loadOne(t, sb(`command = ["bash", "-lc", "echo hi"]`))
	want := []string{"bash", "-lc", "echo hi"}
	if !reflect.DeepEqual(p.Command, want) {
		t.Fatalf("Command = %q, want %q", p.Command, want)
	}
}

func TestInitPassthrough(t *testing.T) {
	p := loadOne(t, sb(`init = ["sysctl -w fs.inotify.max_user_watches=524288", "echo ready"]`))
	want := []string{"sysctl -w fs.inotify.max_user_watches=524288", "echo ready"}
	if !reflect.DeepEqual(p.Init, want) {
		t.Fatalf("Init = %q, want %q", p.Init, want)
	}
}

func TestInitDefault(t *testing.T) {
	p := loadOne(t, sb())
	if p.Init != nil {
		t.Fatalf("Init = %q, want nil", p.Init)
	}
}

func TestMountModes(t *testing.T) {
	for expr, want := range map[string]config.MountMode{
		`"rw"`:  config.MountRW,
		`"ro"`:  config.MountRO,
		`"off"`: config.MountOff,
	} {
		p := loadOne(t, sb(`mount_cwd = `+expr))
		if p.MountCwd != want {
			t.Fatalf("mount_cwd = %s: MountCwd = %q, want %q", expr, p.MountCwd, want)
		}
	}
}

// SPEC §lid.sandbox: profiles register in file order.
func TestProfileRegistrationOrder(t *testing.T) {
	src := `
lid.sandbox(name = "b", image = "i1")
lid.sandbox(name = "a", image = "i2")
lid.sandbox(name = "c", image = "i3")
`
	f, err := config.LoadFile("order.star", []byte(src))
	if err != nil {
		t.Fatalf("LoadFile: %v", err)
	}
	var names []string
	for _, p := range f.Profiles {
		names = append(names, p.Name)
	}
	want := []string{"b", "a", "c"}
	if !reflect.DeepEqual(names, want) {
		t.Fatalf("profile order = %q, want %q", names, want)
	}
}

// SPEC §lid.sandbox network: None is the default, equivalent to omitting.
func TestNetworkNoneEqualsOmitted(t *testing.T) {
	a := loadOne(t, `lid.sandbox(name = "p", image = "i")`)
	b := loadOne(t, `lid.sandbox(name = "p", image = "i", network = None)`)
	if !reflect.DeepEqual(a, b) {
		t.Fatalf("network=None differs from omitted:\n%+v\nvs\n%+v", a, b)
	}
}

// Empty source: valid, zero profiles (files are optional; a file with no
// lid.sandbox calls simply defines nothing).
func TestEmptySource(t *testing.T) {
	f, err := config.LoadFile("empty.star", nil)
	if err != nil {
		t.Fatalf("LoadFile on empty source: %v", err)
	}
	if f == nil || len(f.Profiles) != 0 {
		t.Fatalf("empty source: got %+v, want 0 profiles", f)
	}
}

// SPEC §Compilation semantics: allow_all=True ⇒ AllowedHosts holds only the
// secret-host union; nil when there are no secrets.
func TestAllowAllVariants(t *testing.T) {
	t.Run("no_secrets", func(t *testing.T) {
		p := loadOne(t, sb(`network = lid.network(allow_all = True)`))
		if !p.Net.AllowAll {
			t.Fatalf("AllowAll = false, want true")
		}
		if p.Net.AllowedHosts != nil {
			t.Fatalf("AllowedHosts = %q, want nil", p.Net.AllowedHosts)
		}
		if p.Net.NoNetwork {
			t.Fatalf("NoNetwork = true, want false")
		}
		if !p.Net.BlockPrivateIPs {
			t.Fatalf("BlockPrivateIPs = false, want true (default)")
		}
	})
	t.Run("with_secrets", func(t *testing.T) {
		p := loadOne(t, sb(`network = lid.network(allow_all = True)`,
			`secrets = [lid.secret("S", from_env = "E", hosts = ["H.example", "b.example"])]`))
		if !p.Net.AllowAll {
			t.Fatalf("AllowAll = false, want true")
		}
		want := []string{"h.example", "b.example"}
		if !reflect.DeepEqual(p.Net.AllowedHosts, want) {
			t.Fatalf("AllowedHosts = %q, want %q", p.Net.AllowedHosts, want)
		}
	})
}

// SPEC §lid.network allow_private: the only way to unblock private ranges.
func TestAllowPrivate(t *testing.T) {
	p := loadOne(t, sb(`network = lid.network(allow = ["a.example"], allow_private = True)`))
	if p.Net.BlockPrivateIPs {
		t.Fatalf("allow_private=True: BlockPrivateIPs = true, want false")
	}
	p = loadOne(t, sb(`network = lid.network(allow_all = True, allow_private = True)`))
	if p.Net.BlockPrivateIPs {
		t.Fatalf("allow_all + allow_private=True: BlockPrivateIPs = true, want false")
	}
	p = loadOne(t, sb(`network = lid.network(allow = ["a.example"], allow_private = False)`))
	if !p.Net.BlockPrivateIPs {
		t.Fatalf("allow_private=False: BlockPrivateIPs = false, want true")
	}
}

// SPEC §lid.secret: exact Source fields for each source kind.
func TestSecretSourceFields(t *testing.T) {
	p := loadOne(t, sb(
		`network = lid.network(allow = ["ok.example"])`,
		`secrets = [`+
			`lid.secret("TOK", from_env = "HOST_TOK", hosts = ["API.Example.com"]), `+
			`lid.secret("CMD_TOK", from_cmd = ["op", "read", "x"], hosts = ["b.example"]), `+
			`lid.secret("LIT_TOK", value = "tok123", hosts = ["c.example"])]`))
	if len(p.Secrets) != 3 {
		t.Fatalf("got %d secrets, want 3", len(p.Secrets))
	}

	s := p.Secrets[0]
	if s.Name != "TOK" || s.Source.Kind != config.SourceEnv || s.Source.EnvName != "HOST_TOK" {
		t.Errorf("env secret = %+v, want Name=TOK Kind=env EnvName=HOST_TOK", s)
	}
	if s.GitCredential {
		t.Errorf("env secret GitCredential = true, want false")
	}
	if !reflect.DeepEqual(s.Hosts, []string{"api.example.com"}) {
		t.Errorf("env secret Hosts = %q, want [api.example.com] (normalized)", s.Hosts)
	}
	if len(s.Source.Cmd) != 0 || s.Source.Literal != "" {
		t.Errorf("env secret Source has stray fields: %+v", s.Source)
	}

	s = p.Secrets[1]
	if s.Name != "CMD_TOK" || s.Source.Kind != config.SourceCmd {
		t.Errorf("cmd secret = %+v, want Name=CMD_TOK Kind=cmd", s)
	}
	if !reflect.DeepEqual(s.Source.Cmd, []string{"op", "read", "x"}) {
		t.Errorf("cmd secret Cmd = %q, want [op read x]", s.Source.Cmd)
	}

	s = p.Secrets[2]
	if s.Name != "LIT_TOK" || s.Source.Kind != config.SourceLiteral || s.Source.Literal != "tok123" {
		t.Errorf("literal secret = %+v, want Name=LIT_TOK Kind=literal Literal=tok123", s)
	}

	// Union: allow hosts first, then secret hosts in secret order.
	wantHosts := []string{"ok.example", "api.example.com", "b.example", "c.example"}
	if !reflect.DeepEqual(p.Net.AllowedHosts, wantHosts) {
		t.Errorf("AllowedHosts = %q, want %q", p.Net.AllowedHosts, wantHosts)
	}
}
