package runner

import (
	"context"
	"encoding/base64"
	"net/http"
	"testing"

	"github.com/jingkaihe/matchlock/pkg/sdk"

	"jade.fyi/ghostjar/lid/internal/config"
)

// buildGitHubAppInjection builds a GitHubAppInjection whose provider returns a
// canned installation token without touching a real keychain or network.
func buildGitHubAppInjection(t *testing.T, token, placeholder string, hosts []string) GitHubAppInjection {
	t.Helper()
	pemStr, _ := testRSAKeyPEM(t)
	now := int64(1_700_000_000_000)
	doer := &fakeHTTPDoer{func(req *http.Request) (*http.Response, error) {
		return jsonResp(201, map[string]any{
			"token":      token,
			"expires_at": msToRFC3339(now + 60*60*1000),
		}), nil
	}}
	p := newGitHubAppProviderWithDeps(
		config.GitHubAppSource{
			AppID:          1,
			InstallationID: 5,
			PrivateKey:     config.Source{Kind: config.SourceKeychain, Service: "svc"},
		},
		GitHubAppDeps{
			Run:      func(context.Context, []string) (string, error) { return pemStr, nil },
			HTTPDoer: doer,
			NowMS:    func() int64 { return now },
		},
	)
	return GitHubAppInjection{Provider: p, Hosts: hosts, Placeholder: placeholder}
}

func TestTranslateGitHubAppWiring(t *testing.T) {
	p := baseProfile()
	p.Net = config.Network{AllowedHosts: []string{"github.com", "api.github.com"}, BlockPrivateIPs: true}

	ga := buildGitHubAppInjection(t, "ghs_live", "lid-ph-github_token-abc", []string{"github.com", "api.github.com"})
	opts := Translate(p, "/cwd", "/home/me", nil, nil, nil, []GitHubAppInjection{ga}, guestUID, guestGID).Options()

	// Placeholder mirrored into guest env.
	if opts.Env["GH_TOKEN"] != ga.Placeholder {
		t.Errorf("GH_TOKEN = %q, want placeholder %q", opts.Env["GH_TOKEN"], ga.Placeholder)
	}
	if opts.Env["GITHUB_TOKEN"] != ga.Placeholder {
		t.Errorf("GITHUB_TOKEN = %q, want placeholder", opts.Env["GITHUB_TOKEN"])
	}

	// No placeholder secret for github_app (handled via hook).
	if len(opts.Secrets) != 0 {
		t.Errorf("expected no placeholder secrets, got %v", opts.Secrets)
	}

	// Network hook installed.
	if opts.NetworkInterception == nil || len(opts.NetworkInterception.Rules) != 1 {
		t.Fatalf("expected 1 network rule")
	}
	rule := opts.NetworkInterception.Rules[0]
	if rule.Name != "lid-github-app" || rule.Phase != "before" {
		t.Errorf("rule = %q/%q", rule.Name, rule.Phase)
	}

	// REST path -> "token <tok>".
	res, err := rule.Hook(context.Background(), sdk.NetworkHookRequest{
		Host: "api.github.com", Path: "/user",
		RequestHeaders: map[string][]string{"Authorization": {"Basic old"}},
	})
	if err != nil {
		t.Fatalf("hook: %v", err)
	}
	if res.Action != sdk.NetworkHookActionMutate {
		t.Errorf("action = %v", res.Action)
	}
	if got := res.Request.Headers["Authorization"][0]; got != "token ghs_live" {
		t.Errorf("REST Authorization = %q", got)
	}

	// git-smart-HTTP path -> Basic x-access-token.
	res2, _ := rule.Hook(context.Background(), sdk.NetworkHookRequest{
		Host: "github.com", Path: "/octo/repo.git/git-upload-pack",
		RequestHeaders: map[string][]string{},
	})
	wantBasic := "Basic " + base64.StdEncoding.EncodeToString([]byte("x-access-token:ghs_live"))
	if got := res2.Request.Headers["Authorization"][0]; got != wantBasic {
		t.Errorf("git Authorization = %q, want %q", got, wantBasic)
	}
}
