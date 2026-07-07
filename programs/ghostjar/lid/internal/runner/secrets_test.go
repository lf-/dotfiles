package runner

import (
	"context"
	"errors"
	"regexp"
	"strings"
	"testing"

	"jade.fyi/ghostjar/lid/internal/config"
)

func fakeEnv(m map[string]string) func(string) string {
	return func(k string) string { return m[k] }
}

func TestResolveEnv(t *testing.T) {
	r := &Resolver{Getenv: fakeEnv(map[string]string{"TOK": "s3cr3t"})}
	got, err := r.Resolve(context.Background(), config.SecretSpec{
		Name:   "TOK",
		Source: config.Source{Kind: config.SourceEnv, EnvName: "TOK"},
		Hosts:  []string{"api.example.com"},
	})
	if err != nil {
		t.Fatal(err)
	}
	if got.Value != "s3cr3t" {
		t.Errorf("value = %q", got.Value)
	}
	if got.Placeholder == got.Value {
		t.Errorf("placeholder must not equal value")
	}
}

func TestResolveEnvMissing(t *testing.T) {
	r := &Resolver{Getenv: fakeEnv(nil)}
	_, err := r.Resolve(context.Background(), config.SecretSpec{
		Name:   "TOK",
		Source: config.Source{Kind: config.SourceEnv, EnvName: "MISSING"},
	})
	if err == nil || !strings.Contains(err.Error(), "MISSING") {
		t.Fatalf("expected error naming MISSING, got %v", err)
	}
}

func TestResolveCmd(t *testing.T) {
	run := func(ctx context.Context, argv []string) (string, error) {
		if strings.Join(argv, " ") != "pass show token" {
			t.Errorf("argv = %v", argv)
		}
		return "  value-with-space  \n", nil
	}
	r := &Resolver{Run: run}
	got, err := r.Resolve(context.Background(), config.SecretSpec{
		Name:   "TOK",
		Source: config.Source{Kind: config.SourceCmd, Cmd: []string{"pass", "show", "token"}},
	})
	if err != nil {
		t.Fatal(err)
	}
	if got.Value != "value-with-space" {
		t.Errorf("value = %q, want trimmed", got.Value)
	}
}

func TestResolveCmdError(t *testing.T) {
	run := func(ctx context.Context, argv []string) (string, error) {
		return "", errors.New("exit 1: boom on stderr")
	}
	r := &Resolver{Run: run}
	_, err := r.Resolve(context.Background(), config.SecretSpec{
		Name:   "TOK",
		Source: config.Source{Kind: config.SourceCmd, Cmd: []string{"false"}},
	})
	if err == nil || !strings.Contains(err.Error(), "boom on stderr") {
		t.Fatalf("expected stderr in error, got %v", err)
	}
}

func TestResolveLiteral(t *testing.T) {
	r := &Resolver{}
	got, err := r.Resolve(context.Background(), config.SecretSpec{
		Name:   "TOK",
		Source: config.Source{Kind: config.SourceLiteral, Literal: "abc"},
	})
	if err != nil {
		t.Fatal(err)
	}
	if got.Value != "abc" {
		t.Errorf("value = %q", got.Value)
	}
}

func TestResolveGitHubEnvPrecedence(t *testing.T) {
	// GITHUB_TOKEN wins over GH_TOKEN and over `gh auth token`.
	ranCmd := false
	r := &Resolver{
		Getenv: fakeEnv(map[string]string{"GITHUB_TOKEN": "gt", "GH_TOKEN": "hh"}),
		Run: func(ctx context.Context, argv []string) (string, error) {
			ranCmd = true
			return "cmdtok", nil
		},
	}
	got, err := r.Resolve(context.Background(), config.SecretSpec{
		Name:          "GITHUB_TOKEN",
		Source:        config.Source{Kind: config.SourceGitHub},
		GitCredential: true,
	})
	if err != nil {
		t.Fatal(err)
	}
	if got.Value != "gt" {
		t.Errorf("value = %q, want gt", got.Value)
	}
	if ranCmd {
		t.Errorf("gh auth token should not run when env is set")
	}
}

func TestResolveGitHubFallbackToCmd(t *testing.T) {
	r := &Resolver{
		Getenv: fakeEnv(nil),
		Run: func(ctx context.Context, argv []string) (string, error) {
			if strings.Join(argv, " ") != "gh auth token" {
				t.Errorf("argv = %v", argv)
			}
			return "cmdtok\n", nil
		},
	}
	got, err := r.Resolve(context.Background(), config.SecretSpec{
		Name:   "GITHUB_TOKEN",
		Source: config.Source{Kind: config.SourceGitHub},
	})
	if err != nil {
		t.Fatal(err)
	}
	if got.Value != "cmdtok" {
		t.Errorf("value = %q", got.Value)
	}
}

func TestResolveGitHubAllFail(t *testing.T) {
	r := &Resolver{
		Getenv: fakeEnv(nil),
		Run:    func(ctx context.Context, argv []string) (string, error) { return "", errors.New("not logged in") },
	}
	_, err := r.Resolve(context.Background(), config.SecretSpec{
		Name:   "GITHUB_TOKEN",
		Source: config.Source{Kind: config.SourceGitHub},
	})
	if err == nil || !strings.Contains(err.Error(), "gh auth login") {
		t.Fatalf("expected gh auth login hint, got %v", err)
	}
}

func TestPlaceholderFormat(t *testing.T) {
	re := regexp.MustCompile(`^lid-ph-mysecret-[0-9a-f]{16}$`)
	ph, err := newPlaceholder("MySecret")
	if err != nil {
		t.Fatal(err)
	}
	if !re.MatchString(ph) {
		t.Errorf("placeholder %q does not match %v", ph, re)
	}
	// Placeholders are unique per call.
	ph2, _ := newPlaceholder("MySecret")
	if ph == ph2 {
		t.Errorf("expected distinct placeholders, both %q", ph)
	}
}

func TestResolveAllOrder(t *testing.T) {
	r := &Resolver{Getenv: fakeEnv(map[string]string{"A": "1", "B": "2"})}
	specs := []config.SecretSpec{
		{Name: "A", Source: config.Source{Kind: config.SourceEnv, EnvName: "A"}},
		{Name: "B", Source: config.Source{Kind: config.SourceEnv, EnvName: "B"}},
	}
	got, err := r.ResolveAll(context.Background(), specs)
	if err != nil {
		t.Fatal(err)
	}
	if len(got) != 2 || got[0].Name != "A" || got[1].Name != "B" {
		t.Fatalf("order not preserved: %+v", got)
	}
}
