// Tests for lid.claude_subscription builtin.
// These files are NOT frozen — they may be edited as the feature evolves.
package config_test

import (
	"errors"
	"strings"
	"testing"

	"jade.fyi/ghostjar/lid/internal/config"
)

// sbs builds a lid.sandbox call around a claude_subscription secret.
func sbs(subArgs string, extraKwargs ...string) string {
	secretExpr := "lid.claude_subscription(" + subArgs + ")"
	netAndSecret := `network = lid.network(allow = ["other.example"]), secrets = [` + secretExpr + `]`
	all := append([]string{`name = "p"`, `image = "img"`, netAndSecret}, extraKwargs...)
	return "lid.sandbox(" + strings.Join(all, ", ") + ")"
}

func TestClaudeSubscriptionDefaultHosts(t *testing.T) {
	src := sbs("")
	f, err := config.LoadFile("t.star", []byte(src))
	if err != nil {
		t.Fatalf("LoadFile: %v", err)
	}
	p, err := f.Lookup("p")
	if err != nil {
		t.Fatalf("Lookup: %v", err)
	}
	if len(p.Secrets) != 1 {
		t.Fatalf("expected 1 secret, got %d", len(p.Secrets))
	}
	s := p.Secrets[0]
	if s.Name != "ANTHROPIC_API_KEY" {
		t.Errorf("secret name = %q, want ANTHROPIC_API_KEY", s.Name)
	}
	if s.Source.Kind != config.SourceAnthropicOAuth {
		t.Errorf("source kind = %q, want SourceAnthropicOAuth", s.Source.Kind)
	}
	if s.Source.Path != "" {
		t.Errorf("source.Path = %q, want empty (auto-detect)", s.Source.Path)
	}
	wantHosts := []string{"api.anthropic.com", "platform.claude.com"}
	if len(s.Hosts) != len(wantHosts) {
		t.Fatalf("hosts = %v, want %v", s.Hosts, wantHosts)
	}
	for i, h := range wantHosts {
		if s.Hosts[i] != h {
			t.Errorf("hosts[%d] = %q, want %q", i, s.Hosts[i], h)
		}
	}
}

func TestClaudeSubscriptionCredentialsFile(t *testing.T) {
	src := sbs(`credentials_file = "/home/me/.creds.json"`)
	f, err := config.LoadFile("t.star", []byte(src))
	if err != nil {
		t.Fatalf("LoadFile: %v", err)
	}
	p, _ := f.Lookup("p")
	if p.Secrets[0].Source.Path != "/home/me/.creds.json" {
		t.Errorf("Path = %q, want /home/me/.creds.json", p.Secrets[0].Source.Path)
	}
}

func TestClaudeSubscriptionCredentialsFileNone(t *testing.T) {
	src := sbs(`credentials_file = None`)
	f, err := config.LoadFile("t.star", []byte(src))
	if err != nil {
		t.Fatalf("LoadFile: %v", err)
	}
	p, _ := f.Lookup("p")
	if p.Secrets[0].Source.Path != "" {
		t.Errorf("Path = %q, want empty for None", p.Secrets[0].Source.Path)
	}
}

func TestClaudeSubscriptionCustomHosts(t *testing.T) {
	src := sbs(`hosts = ["custom.example.com", "other.custom.io"]`)
	f, err := config.LoadFile("t.star", []byte(src))
	if err != nil {
		t.Fatalf("LoadFile: %v", err)
	}
	p, _ := f.Lookup("p")
	s := p.Secrets[0]
	if len(s.Hosts) != 2 || s.Hosts[0] != "custom.example.com" || s.Hosts[1] != "other.custom.io" {
		t.Errorf("hosts = %v, want [custom.example.com, other.custom.io]", s.Hosts)
	}
}

func TestClaudeSubscriptionEmptyHostsError(t *testing.T) {
	src := sbs(`hosts = []`)
	requireErrIs(t, src, config.ErrSecretHosts, config.ErrEval)
}

func TestClaudeSubscriptionInvalidCredentialsFileType(t *testing.T) {
	src := sbs(`credentials_file = 42`)
	requireErrIs(t, src, config.ErrEval)
}

func TestClaudeSubscriptionHostsUnionedIntoAllowedHosts(t *testing.T) {
	// api.anthropic.com and platform.claude.com should appear in AllowedHosts.
	src := sbs("")
	f, err := config.LoadFile("t.star", []byte(src))
	if err != nil {
		t.Fatalf("LoadFile: %v", err)
	}
	p, _ := f.Lookup("p")

	allowedSet := make(map[string]bool)
	for _, h := range p.Net.AllowedHosts {
		allowedSet[h] = true
	}
	for _, want := range []string{"api.anthropic.com", "platform.claude.com", "other.example"} {
		if !allowedSet[want] {
			t.Errorf("AllowedHosts missing %q; got %v", want, p.Net.AllowedHosts)
		}
	}
}

func TestClaudeSubscriptionNoNetworkError(t *testing.T) {
	// Secrets without a network block must produce ErrNoNetworkSecrets.
	src := `lid.sandbox(name = "p", image = "img", secrets = [lid.claude_subscription()])`
	_, err := config.LoadFile("t.star", []byte(src))
	if err == nil {
		t.Fatal("expected error for secrets without network, got nil")
	}
	if !errors.Is(err, config.ErrNoNetworkSecrets) {
		t.Errorf("error %q does not match ErrNoNetworkSecrets", err)
	}
}

func TestClaudeSubscriptionHostNormalization(t *testing.T) {
	// Custom hosts should be case-lowered.
	src := sbs(`hosts = ["API.Anthropic.COM"]`)
	f, err := config.LoadFile("t.star", []byte(src))
	if err != nil {
		t.Fatalf("LoadFile: %v", err)
	}
	p, _ := f.Lookup("p")
	if p.Secrets[0].Hosts[0] != "api.anthropic.com" {
		t.Errorf("host not normalized: %q", p.Secrets[0].Hosts[0])
	}
}

func TestClaudeSubscriptionNoGitCredential(t *testing.T) {
	src := sbs("")
	f, err := config.LoadFile("t.star", []byte(src))
	if err != nil {
		t.Fatalf("LoadFile: %v", err)
	}
	p, _ := f.Lookup("p")
	if p.Secrets[0].GitCredential {
		t.Errorf("GitCredential should be false for claude_subscription")
	}
}
