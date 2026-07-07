package runner

import (
	"github.com/jingkaihe/matchlock/pkg/sdk"

	"jade.fyi/ghostjar/lid/internal/config"
)

// Translate maps a compiled Profile plus host cwd and resolved secrets into a
// matchlock SandboxBuilder. This is the security-critical boundary: lid's
// deny-by-default posture is materialized here, never left to matchlock
// defaults.
//
// It is pure (no I/O): the caller resolves secrets beforehand and passes them
// in with their placeholders.
func Translate(p *config.Profile, cwd string, secrets []Resolved) *sdk.SandboxBuilder {
	b := sdk.New(p.Image).
		WithCPUs(p.CPUs).
		WithMemory(p.MemoryMB).
		WithDiskSize(p.DiskMB).
		WithTimeout(p.TimeoutSeconds)

	// Working directory mount.
	if p.MountCwd != config.MountOff {
		b.WithWorkspace(p.Workspace)
		if p.MountCwd == config.MountRO {
			b.MountHostDirReadonly(p.Workspace, cwd)
		} else {
			b.MountHostDir(p.Workspace, cwd)
		}
	}

	// Non-secret env.
	if len(p.Env) > 0 {
		b.WithEnvMap(p.Env)
	}

	// Network. Omitted network => no NIC at all; nothing else network-related.
	if p.Net.NoNetwork {
		b.WithNoNetwork()
		return b
	}

	// A network block is present. Always set private-IP blocking explicitly so
	// we never inherit a matchlock default.
	if p.Net.BlockPrivateIPs {
		b.WithBlockPrivateIPs(true)
	} else {
		b.AllowPrivateIPs()
	}

	// Allowlist. For allow-all we intentionally add no hosts: matchlock treats
	// an empty allowlist as allow-all, and secret hosts are carried by the
	// secret entries themselves. For a restricted allowlist, add the compiled
	// union (which already includes secret hosts).
	if !p.Net.AllowAll {
		for _, h := range p.Net.AllowedHosts {
			b.AllowHost(h)
		}
	}

	// Static /etc/hosts entries and DNS overrides.
	for _, hp := range p.Net.AddHosts {
		b.AddHost(hp.Host, hp.IP)
	}
	if len(p.Net.DNS) > 0 {
		b.WithDNSServers(p.Net.DNS...)
	}

	// Secrets: register with lid-generated placeholders scoped to their hosts.
	// A GitCredential secret additionally mirrors its placeholder into GH_TOKEN
	// and disables interactive git prompts.
	for _, s := range secrets {
		b.AddSecretWithPlaceholder(s.Name, s.Value, s.Placeholder, s.Hosts...)
		if s.GitCredential {
			b.WithEnv("GH_TOKEN", s.Placeholder)
			b.WithEnv("GIT_TERMINAL_PROMPT", "0")
		}
	}

	return b
}
