package runner

import (
	"context"
	"net/http"
	"strings"
	"testing"
	"time"

	"github.com/jingkaihe/matchlock/pkg/sdk"

	"jade.fyi/ghostjar/lid/internal/config"
)

// buildOAuthProvider builds a ClaudeOAuthProvider with a non-expiring token for tests.
func buildOAuthProvider(t *testing.T, token string) *ClaudeOAuthProvider {
	t.Helper()
	nowMS := time.Now().UnixMilli()
	expiresAtMS := nowMS + 24*60*60*1000 // 24h from now
	credsJSON := makeCredsJSON(token, "refresh-tok", expiresAtMS)

	deps := ClaudeOAuthDeps{
		Run:      func(ctx context.Context, argv []string) (string, error) { return "", nil },
		Getenv:   func(string) string { return "" },
		ReadFile: func(string) ([]byte, error) { return []byte(credsJSON), nil },
		HTTPDoer: &fakeHTTPDoer{func(req *http.Request) (*http.Response, error) {
			t.Error("unexpected HTTP call in non-expiring token test")
			return nil, nil
		}},
		NowMS:     func() int64 { return nowMS },
		WriteFile: nopWriteFile,
	}
	p, err := newClaudeOAuthProviderWithDeps(context.Background(), "/creds.json", nil, deps)
	if err != nil {
		t.Fatalf("build oauth provider: %v", err)
	}
	return p
}

func TestTranslateWithOAuthAddsNetworkInterception(t *testing.T) {
	p := baseProfile()
	p.Net = config.Network{
		AllowedHosts:    []string{"api.anthropic.com", "platform.claude.com"},
		BlockPrivateIPs: true,
	}
	provider := buildOAuthProvider(t, "test-access-token")
	oauthHosts := []string{"api.anthropic.com", "platform.claude.com"}

	opts := Translate(p, "/cwd", "/home/me", cwdGuest(p), nil, provider, oauthHosts, nil, guestUID, guestGID).Options()

	if opts.NetworkInterception == nil {
		t.Fatalf("expected NetworkInterception to be set when OAuth provider is present")
	}
	if len(opts.NetworkInterception.Rules) != 1 {
		t.Fatalf("expected 1 network rule, got %d", len(opts.NetworkInterception.Rules))
	}
	rule := opts.NetworkInterception.Rules[0]
	if rule.Name != "lid-claude-subscription" {
		t.Errorf("rule name = %q, want lid-claude-subscription", rule.Name)
	}
	if rule.Phase != "before" {
		t.Errorf("rule phase = %q, want before", rule.Phase)
	}
	if len(rule.Hosts) != 2 {
		t.Fatalf("rule hosts = %v, want 2 hosts", rule.Hosts)
	}
}

func TestTranslateWithOAuthDoesNotSetHomeOrConfigDir(t *testing.T) {
	// The agent runs as the non-root guest user; matchlock's guest exports HOME
	// from that user's passwd entry at exec time, and Claude derives its config
	// dir from HOME. Translate must NOT bake in a HOME/CLAUDE_CONFIG_DIR (the
	// resolved home isn't known until bootstrap).
	p := baseProfile()
	p.Net = config.Network{AllowedHosts: []string{"api.anthropic.com"}, BlockPrivateIPs: true}
	provider := buildOAuthProvider(t, "tok")

	opts := Translate(p, "/cwd", "/home/me", cwdGuest(p), nil, provider, []string{"api.anthropic.com"}, nil, guestUID, guestGID).Options()

	if h, ok := opts.Env["HOME"]; ok {
		t.Errorf("HOME should not be set by Translate, got %q", h)
	}
	if d, ok := opts.Env["CLAUDE_CONFIG_DIR"]; ok {
		t.Errorf("CLAUDE_CONFIG_DIR should not be set by Translate, got %q", d)
	}
}

func TestTranslateWithOAuthPassesProfileEnvThrough(t *testing.T) {
	// A profile that explicitly sets HOME still has it passed through verbatim
	// (via WithEnvMap); Translate does not derive CLAUDE_CONFIG_DIR from it.
	p := baseProfile()
	p.Env = map[string]string{"HOME": "/home/agent"}
	p.Net = config.Network{AllowedHosts: []string{"api.anthropic.com"}, BlockPrivateIPs: true}
	provider := buildOAuthProvider(t, "tok")

	opts := Translate(p, "/cwd", "/home/me", cwdGuest(p), nil, provider, []string{"api.anthropic.com"}, nil, guestUID, guestGID).Options()

	if opts.Env["HOME"] != "/home/agent" {
		t.Errorf("HOME = %q, want /home/agent (passed through)", opts.Env["HOME"])
	}
	if _, ok := opts.Env["CLAUDE_CONFIG_DIR"]; ok {
		t.Errorf("CLAUDE_CONFIG_DIR should not be derived, got %q", opts.Env["CLAUDE_CONFIG_DIR"])
	}
}

func TestTranslateWithOAuthDoesNotSetClaudeConfigDirIfUserSet(t *testing.T) {
	p := baseProfile()
	p.Env = map[string]string{"CLAUDE_CONFIG_DIR": "/my/custom/config"}
	p.Net = config.Network{AllowedHosts: []string{"api.anthropic.com"}, BlockPrivateIPs: true}
	provider := buildOAuthProvider(t, "tok")

	opts := Translate(p, "/cwd", "/home/me", cwdGuest(p), nil, provider, []string{"api.anthropic.com"}, nil, guestUID, guestGID).Options()

	// The user-provided CLAUDE_CONFIG_DIR should not be overwritten by Translate.
	if opts.Env["CLAUDE_CONFIG_DIR"] != "/my/custom/config" {
		t.Errorf("CLAUDE_CONFIG_DIR = %q, want /my/custom/config (user-provided)", opts.Env["CLAUDE_CONFIG_DIR"])
	}
}

func TestTranslateWithOAuthHookRewritesHeaders(t *testing.T) {
	p := baseProfile()
	p.Net = config.Network{AllowedHosts: []string{"api.anthropic.com"}, BlockPrivateIPs: true}
	provider := buildOAuthProvider(t, "my-access-token")

	opts := Translate(p, "/cwd", "/home/me", cwdGuest(p), nil, provider, []string{"api.anthropic.com"}, nil, guestUID, guestGID).Options()

	if opts.NetworkInterception == nil || len(opts.NetworkInterception.Rules) == 0 {
		t.Fatal("expected network interception rule")
	}
	rule := opts.NetworkInterception.Rules[0]
	if rule.Hook == nil {
		t.Fatal("expected hook function to be set")
	}

	// Invoke the hook with a request that has X-Api-Key.
	req := sdk.NetworkHookRequest{
		RequestHeaders: map[string][]string{
			"X-Api-Key":      {"old-key"},
			"Content-Type":   {"application/json"},
			"anthropic-beta": {"some-feature"},
		},
	}
	result, err := rule.Hook(context.Background(), req)
	if err != nil {
		t.Fatalf("hook returned error: %v", err)
	}
	if result == nil || result.Request == nil {
		t.Fatal("expected non-nil result with request mutation")
	}

	headers := result.Request.Headers

	// X-Api-Key must be removed.
	for k := range headers {
		if strings.EqualFold(k, "X-Api-Key") {
			t.Errorf("X-Api-Key should have been removed, still in headers: %v", headers)
		}
	}

	// Authorization must be set to Bearer token.
	authVals, ok := headers["Authorization"]
	if !ok || len(authVals) == 0 {
		t.Fatalf("Authorization header not set; headers = %v", headers)
	}
	if authVals[0] != "Bearer my-access-token" {
		t.Errorf("Authorization = %q, want Bearer my-access-token", authVals[0])
	}

	// anthropic-beta must include oauth-2025-04-20.
	var betaVals []string
	for k, vals := range headers {
		if strings.EqualFold(k, "anthropic-beta") {
			betaVals = vals
		}
	}
	found := false
	for _, v := range betaVals {
		if v == "oauth-2025-04-20" {
			found = true
		}
	}
	if !found {
		t.Errorf("anthropic-beta does not contain oauth-2025-04-20; got %v", betaVals)
	}
	// Original beta value should still be present.
	foundOrig := false
	for _, v := range betaVals {
		if v == "some-feature" {
			foundOrig = true
		}
	}
	if !foundOrig {
		t.Errorf("anthropic-beta lost original value some-feature; got %v", betaVals)
	}
}

func TestTranslateWithOAuthNoPlaceholderSecret(t *testing.T) {
	// An OAuth spec should NOT produce a matchlock placeholder secret.
	p := baseProfile()
	p.Net = config.Network{AllowedHosts: []string{"api.anthropic.com"}, BlockPrivateIPs: true}
	provider := buildOAuthProvider(t, "tok")

	// Pass no normal secrets (nil), only the oauth provider.
	opts := Translate(p, "/cwd", "/home/me", cwdGuest(p), nil, provider, []string{"api.anthropic.com"}, nil, guestUID, guestGID).Options()

	// Secrets in the builder should be empty — the OAuth spec is handled via hook.
	if len(opts.Secrets) != 0 {
		t.Errorf("expected no placeholder secrets for oauth, got %v", opts.Secrets)
	}
}

func TestTranslateWithoutOAuthNoInterception(t *testing.T) {
	p := baseProfile()
	p.Net = config.Network{AllowedHosts: []string{"api.anthropic.com"}, BlockPrivateIPs: true}

	// No OAuth provider.
	opts := Translate(p, "/cwd", "/home/me", cwdGuest(p), nil, nil, nil, nil, guestUID, guestGID).Options()

	if opts.NetworkInterception != nil {
		t.Errorf("expected no NetworkInterception when no OAuth provider")
	}
}
