package runner

import (
	"testing"

	"jade.fyi/ghostjar/lid/internal/config"
)

func baseProfile() *config.Profile {
	return &config.Profile{
		Name:           "p",
		Image:          "docker.io/library/node:22",
		CPUs:           2,
		MemoryMB:       2048,
		DiskMB:         10240,
		TimeoutSeconds: 3600,
		Workspace:      "/workspace",
		MountCwd:       config.MountRW,
		Command:        []string{"claude"},
	}
}

func TestTranslateResources(t *testing.T) {
	p := baseProfile()
	opts := Translate(p, "/home/me/proj", nil).Options()
	if opts.Image != p.Image {
		t.Errorf("image = %q", opts.Image)
	}
	if opts.CPUs != 2 || opts.MemoryMB != 2048 || opts.DiskSizeMB != 10240 || opts.TimeoutSeconds != 3600 {
		t.Errorf("resources mismatch: %+v", opts)
	}
}

func TestTranslateNoNetwork(t *testing.T) {
	p := baseProfile()
	p.Net = config.Network{NoNetwork: true, BlockPrivateIPs: true}
	opts := Translate(p, "/cwd", nil).Options()
	if !opts.NoNetwork {
		t.Errorf("expected NoNetwork=true")
	}
	if len(opts.AllowedHosts) != 0 {
		t.Errorf("no-network must have no allowed hosts, got %v", opts.AllowedHosts)
	}
	if len(opts.Secrets) != 0 {
		t.Errorf("no-network must have no secrets")
	}
	// Per translate contract: nothing else network-related is set.
	if opts.BlockPrivateIPsSet {
		t.Errorf("no-network should not set block-private explicitly")
	}
}

func TestTranslateBlockPrivateAlwaysExplicit(t *testing.T) {
	// Default (block private).
	p := baseProfile()
	p.Net = config.Network{AllowedHosts: []string{"api.anthropic.com"}, BlockPrivateIPs: true}
	opts := Translate(p, "/cwd", nil).Options()
	if !opts.BlockPrivateIPsSet || !opts.BlockPrivateIPs {
		t.Errorf("expected block-private explicitly true, got set=%v val=%v", opts.BlockPrivateIPsSet, opts.BlockPrivateIPs)
	}

	// allow_private.
	p2 := baseProfile()
	p2.Net = config.Network{AllowedHosts: []string{"api.anthropic.com"}, BlockPrivateIPs: false}
	opts2 := Translate(p2, "/cwd", nil).Options()
	if !opts2.BlockPrivateIPsSet || opts2.BlockPrivateIPs {
		t.Errorf("expected block-private explicitly false, got set=%v val=%v", opts2.BlockPrivateIPsSet, opts2.BlockPrivateIPs)
	}
}

func TestTranslateAllowedHosts(t *testing.T) {
	p := baseProfile()
	p.Net = config.Network{
		AllowedHosts:    []string{"api.anthropic.com", "registry.npmjs.org"},
		BlockPrivateIPs: true,
	}
	opts := Translate(p, "/cwd", nil).Options()
	if len(opts.AllowedHosts) != 2 || opts.AllowedHosts[0] != "api.anthropic.com" {
		t.Errorf("allowed hosts = %v", opts.AllowedHosts)
	}
}

func TestTranslateAllowAllOmitsAllowHost(t *testing.T) {
	// allow_all: matchlock treats empty allowlist as allow-all, so lid must NOT
	// add the (secret-host) allowlist union as explicit allow entries.
	p := baseProfile()
	p.Net = config.Network{
		AllowAll:        true,
		AllowedHosts:    []string{"api.github.com"}, // secret-host union
		BlockPrivateIPs: true,
	}
	secrets := []Resolved{{Name: "GITHUB_TOKEN", Value: "real", Placeholder: "lid-ph-x", Hosts: []string{"api.github.com"}}}
	opts := Translate(p, "/cwd", secrets).Options()
	if len(opts.AllowedHosts) != 0 {
		t.Errorf("allow-all must add no explicit hosts, got %v", opts.AllowedHosts)
	}
	if len(opts.Secrets) != 1 || opts.Secrets[0].Hosts[0] != "api.github.com" {
		t.Errorf("secret hosts should carry the allowlist intent, got %+v", opts.Secrets)
	}
}

func TestTranslateSecretsAndGitCredential(t *testing.T) {
	p := baseProfile()
	p.Net = config.Network{AllowedHosts: []string{"api.github.com"}, BlockPrivateIPs: true}
	secrets := []Resolved{{
		Name:          "GITHUB_TOKEN",
		Value:         "real-token",
		Placeholder:   "lid-ph-github_token-00112233aabbccdd",
		Hosts:         []string{"api.github.com"},
		GitCredential: true,
	}}
	opts := Translate(p, "/cwd", secrets).Options()
	if len(opts.Secrets) != 1 {
		t.Fatalf("expected 1 secret, got %d", len(opts.Secrets))
	}
	s := opts.Secrets[0]
	if s.Value != "real-token" || s.Placeholder != secrets[0].Placeholder {
		t.Errorf("secret mismatch: %+v", s)
	}
	if s.Placeholder == s.Value {
		t.Errorf("placeholder must differ from value")
	}
	if opts.Env["GH_TOKEN"] != secrets[0].Placeholder {
		t.Errorf("GH_TOKEN should be the placeholder, got %q", opts.Env["GH_TOKEN"])
	}
	if opts.Env["GIT_TERMINAL_PROMPT"] != "0" {
		t.Errorf("GIT_TERMINAL_PROMPT should be 0")
	}
	// The real value must not leak into env.
	for k, v := range opts.Env {
		if v == "real-token" {
			t.Errorf("real secret leaked into env %s", k)
		}
	}
}

func TestTranslateMountModes(t *testing.T) {
	// rw
	p := baseProfile()
	p.MountCwd = config.MountRW
	opts := Translate(p, "/host/proj", nil).Options()
	m, ok := opts.Mounts["/workspace"]
	if !ok {
		t.Fatalf("expected mount at /workspace")
	}
	if m.Type != "host_fs" || m.HostPath != "/host/proj" || m.Readonly {
		t.Errorf("rw mount wrong: %+v", m)
	}
	if opts.Workspace != "/workspace" {
		t.Errorf("workspace = %q", opts.Workspace)
	}

	// ro
	p.MountCwd = config.MountRO
	opts = Translate(p, "/host/proj", nil).Options()
	if m := opts.Mounts["/workspace"]; !m.Readonly {
		t.Errorf("ro mount should be readonly: %+v", m)
	}

	// off
	p.MountCwd = config.MountOff
	opts = Translate(p, "/host/proj", nil).Options()
	if len(opts.Mounts) != 0 {
		t.Errorf("mount off should produce no mounts, got %v", opts.Mounts)
	}
	if opts.Workspace != "" {
		t.Errorf("mount off should not set workspace, got %q", opts.Workspace)
	}
}

func TestTranslateAddHostsDNSEnv(t *testing.T) {
	p := baseProfile()
	p.Env = map[string]string{"FOO": "bar"}
	p.Net = config.Network{
		AllowedHosts:    []string{"api.anthropic.com"},
		BlockPrivateIPs: true,
		AddHosts:        []config.HostIP{{Host: "internal.svc", IP: "10.0.0.5"}},
		DNS:             []string{"1.1.1.1"},
	}
	opts := Translate(p, "/cwd", nil).Options()
	if len(opts.AddHosts) != 1 || opts.AddHosts[0].Host != "internal.svc" || opts.AddHosts[0].IP != "10.0.0.5" {
		t.Errorf("add hosts = %+v", opts.AddHosts)
	}
	if len(opts.DNSServers) != 1 || opts.DNSServers[0] != "1.1.1.1" {
		t.Errorf("dns = %v", opts.DNSServers)
	}
	if opts.Env["FOO"] != "bar" {
		t.Errorf("env not copied")
	}
}
