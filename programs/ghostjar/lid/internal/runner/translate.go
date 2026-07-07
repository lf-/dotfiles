package runner

import (
	"context"
	"slices"
	"strings"

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
//
// oauthProvider is non-nil when the profile contains a claude_subscription
// secret. oauthHosts lists the hosts the network hook should intercept.
func Translate(p *config.Profile, cwd string, secrets []Resolved, oauthProvider *ClaudeOAuthProvider, oauthHosts []string) *sdk.SandboxBuilder {
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

	// Claude subscription OAuth: inject headers via a host-side network hook.
	// The guest never sees the real access token.
	if oauthProvider != nil && len(oauthHosts) > 0 {
		provider := oauthProvider // capture for closure

		hook := func(ctx context.Context, req sdk.NetworkHookRequest) (*sdk.NetworkHookResult, error) {
			// Clone the incoming headers.
			headers := make(map[string][]string, len(req.RequestHeaders))
			for k, v := range req.RequestHeaders {
				headers[k] = append([]string(nil), v...)
			}

			// Remove any X-Api-Key header (case-insensitive).
			for k := range headers {
				if strings.EqualFold(k, "X-Api-Key") {
					delete(headers, k)
				}
			}

			// Get a fresh access token (refreshes if near expiry).
			token, err := provider.AccessToken(ctx)
			if err != nil {
				return nil, err
			}
			headers["Authorization"] = []string{"Bearer " + token}

			// Ensure anthropic-beta includes oauth-2025-04-20.
			var betaValues []string
			for k, vals := range headers {
				if strings.EqualFold(k, "anthropic-beta") {
					for _, v := range vals {
						for item := range strings.SplitSeq(v, ",") {
							if s := strings.TrimSpace(item); s != "" {
								betaValues = append(betaValues, s)
							}
						}
					}
					delete(headers, k)
				}
			}
			if !slices.Contains(betaValues, "oauth-2025-04-20") {
				betaValues = append(betaValues, "oauth-2025-04-20")
			}
			headers["anthropic-beta"] = betaValues

			return &sdk.NetworkHookResult{
				Action: sdk.NetworkHookActionMutate,
				Request: &sdk.NetworkHookRequestMutation{
					Headers: headers,
				},
			}, nil
		}

		b.WithNetworkInterception(&sdk.NetworkInterceptionConfig{
			Rules: []sdk.NetworkHookRule{
				{
					Name:  "lid-claude-subscription",
					Phase: sdk.NetworkHookPhaseBefore,
					Hosts: append([]string(nil), oauthHosts...),
					Hook:  hook,
				},
			},
		})

		// Set CLAUDE_CONFIG_DIR and HOME so Claude finds its config in the guest.
		home := "/root"
		if h, ok := p.Env["HOME"]; ok && h != "" {
			home = h
		}
		b.WithEnv("HOME", home)
		if _, ok := p.Env["CLAUDE_CONFIG_DIR"]; !ok {
			b.WithEnv("CLAUDE_CONFIG_DIR", home+"/.claude")
		}
	}

	return b
}
