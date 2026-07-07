package runner

import (
	"bytes"
	"context"
	"crypto/rand"
	"encoding/hex"
	"fmt"
	"os"
	"os/exec"
	"strings"

	"jade.fyi/ghostjar/lid/internal/config"
)

// Resolved is a secret whose value has been fetched on the host and paired with
// a freshly-generated in-VM placeholder. The real Value never enters the VM and
// must never be logged or printed.
type Resolved struct {
	Name          string
	Value         string // the real secret — never log this
	Placeholder   string // the MITM placeholder exposed inside the VM
	Hosts         []string
	GitCredential bool
}

// CommandRunner runs argv on the host and returns its stdout. On a nonzero
// exit it returns an error whose message includes captured stderr.
type CommandRunner func(ctx context.Context, argv []string) (stdout string, err error)

// Resolver fetches secret values from their configured sources. Its collaborators
// are injectable for testing (no real env or subprocesses in unit tests).
type Resolver struct {
	Getenv func(string) string
	Run    CommandRunner
}

// NewResolver returns a Resolver wired to the real host environment.
func NewResolver() *Resolver {
	return &Resolver{Getenv: os.Getenv, Run: execCommand}
}

func execCommand(ctx context.Context, argv []string) (string, error) {
	if len(argv) == 0 {
		return "", fmt.Errorf("empty command")
	}
	cmd := exec.CommandContext(ctx, argv[0], argv[1:]...)
	var stdout, stderr bytes.Buffer
	cmd.Stdout = &stdout
	cmd.Stderr = &stderr
	if err := cmd.Run(); err != nil {
		if msg := strings.TrimSpace(stderr.String()); msg != "" {
			return "", fmt.Errorf("%w: %s", err, msg)
		}
		return "", err
	}
	return stdout.String(), nil
}

// ResolveAll resolves every spec in order.
func (r *Resolver) ResolveAll(ctx context.Context, specs []config.SecretSpec) ([]Resolved, error) {
	out := make([]Resolved, 0, len(specs))
	for _, s := range specs {
		rs, err := r.Resolve(ctx, s)
		if err != nil {
			return nil, err
		}
		out = append(out, rs)
	}
	return out, nil
}

// Resolve fetches one secret's value and assigns it a placeholder.
func (r *Resolver) Resolve(ctx context.Context, spec config.SecretSpec) (Resolved, error) {
	value, err := r.resolveValue(ctx, spec)
	if err != nil {
		return Resolved{}, err
	}
	placeholder, err := newPlaceholder(spec.Name)
	if err != nil {
		return Resolved{}, err
	}
	return Resolved{
		Name:          spec.Name,
		Value:         value,
		Placeholder:   placeholder,
		Hosts:         spec.Hosts,
		GitCredential: spec.GitCredential,
	}, nil
}

func (r *Resolver) resolveValue(ctx context.Context, spec config.SecretSpec) (string, error) {
	switch spec.Source.Kind {
	case config.SourceEnv:
		v := r.Getenv(spec.Source.EnvName)
		if v == "" {
			return "", fmt.Errorf("secret %q: environment variable %s is not set", spec.Name, spec.Source.EnvName)
		}
		return v, nil
	case config.SourceCmd:
		out, err := r.Run(ctx, spec.Source.Cmd)
		if err != nil {
			return "", fmt.Errorf("secret %q: command failed: %w", spec.Name, err)
		}
		v := strings.TrimSpace(out)
		if v == "" {
			return "", fmt.Errorf("secret %q: command produced no output", spec.Name)
		}
		return v, nil
	case config.SourceLiteral:
		return spec.Source.Literal, nil
	case config.SourceGitHub:
		return r.resolveGitHub(ctx, spec.Name)
	default:
		return "", fmt.Errorf("secret %q: unknown source kind %q", spec.Name, spec.Source.Kind)
	}
}

func (r *Resolver) resolveGitHub(ctx context.Context, name string) (string, error) {
	if v := r.Getenv("GITHUB_TOKEN"); v != "" {
		return v, nil
	}
	if v := r.Getenv("GH_TOKEN"); v != "" {
		return v, nil
	}
	if out, err := r.Run(ctx, []string{"gh", "auth", "token"}); err == nil {
		if tok := strings.TrimSpace(out); tok != "" {
			return tok, nil
		}
	}
	return "", fmt.Errorf("secret %q: no GitHub token found; set $GITHUB_TOKEN or $GH_TOKEN, or run `gh auth login`", name)
}

// newPlaceholder builds "lid-ph-<name lowercased>-<16 hex chars>".
func newPlaceholder(name string) (string, error) {
	var b [8]byte // 8 bytes -> 16 hex chars
	if _, err := rand.Read(b[:]); err != nil {
		return "", fmt.Errorf("generate placeholder: %w", err)
	}
	return "lid-ph-" + strings.ToLower(name) + "-" + hex.EncodeToString(b[:]), nil
}
