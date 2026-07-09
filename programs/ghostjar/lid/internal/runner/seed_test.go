package runner

import (
	"context"
	"os"
	"path/filepath"
	"sort"
	"strings"
	"testing"

	"github.com/jingkaihe/matchlock/pkg/sdk"

	"jade.fyi/ghostjar/lid/internal/config"
)

// fakeSeedClient records the guest-side operations seeding performs.
type fakeSeedClient struct {
	execs  []string
	writes map[string]string // guest path -> content
}

func newFakeSeedClient() *fakeSeedClient {
	return &fakeSeedClient{writes: map[string]string{}}
}

func (f *fakeSeedClient) Exec(_ context.Context, command string) (*sdk.ExecResult, error) {
	f.execs = append(f.execs, command)
	return &sdk.ExecResult{ExitCode: 0}, nil
}

func (f *fakeSeedClient) WriteFileMode(_ context.Context, path string, content []byte, _ uint32) error {
	f.writes[path] = string(content)
	return nil
}

func TestSeedGuestFilesDirTree(t *testing.T) {
	// Build a host config dir: a file at the root and one in a subdir.
	hostDir := t.TempDir()
	if err := os.WriteFile(filepath.Join(hostDir, "settings.json"), []byte(`{"x":1}`), 0o644); err != nil {
		t.Fatal(err)
	}
	if err := os.MkdirAll(filepath.Join(hostDir, "agents"), 0o755); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(hostDir, "agents", "a.md"), []byte("hi"), 0o644); err != nil {
		t.Fatal(err)
	}

	p := &config.Profile{Seeds: []config.SeedSpec{{HostPath: hostDir, GuestPath: "/home/node/.claude"}}}
	id := guestIdentity{UID: guestUID, GID: guestGID}
	fc := newFakeSeedClient()

	if err := seedGuestFiles(context.Background(), fc, p, id, "/cwd", "/home/me", os.Stderr); err != nil {
		t.Fatalf("seedGuestFiles: %v", err)
	}

	// Files land at the mapped guest paths with their content.
	if got := fc.writes["/home/node/.claude/settings.json"]; got != `{"x":1}` {
		t.Errorf("settings.json content = %q", got)
	}
	if got := fc.writes["/home/node/.claude/agents/a.md"]; got != "hi" {
		t.Errorf("agents/a.md content = %q", got)
	}

	// The subdir is mkdir'd and the target is chowned to the agent.
	joined := strings.Join(fc.execs, "\n")
	if !strings.Contains(joined, "mkdir -p /home/node/.claude/agents") {
		t.Errorf("expected mkdir for subdir; execs:\n%s", joined)
	}
	if !strings.Contains(joined, "chown -R 1000:1000 /home/node/.claude") {
		t.Errorf("expected recursive chown to the agent; execs:\n%s", joined)
	}
}

func TestSeedGuestFilesSingleFile(t *testing.T) {
	hostDir := t.TempDir()
	src := filepath.Join(hostDir, "creds")
	if err := os.WriteFile(src, []byte("data"), 0o600); err != nil {
		t.Fatal(err)
	}

	p := &config.Profile{Seeds: []config.SeedSpec{{HostPath: src, GuestPath: "/home/node/.claude.json"}}}
	fc := newFakeSeedClient()
	if err := seedGuestFiles(context.Background(), fc, p, guestIdentity{UID: guestUID, GID: guestGID}, "/cwd", "/home/me", os.Stderr); err != nil {
		t.Fatalf("seedGuestFiles: %v", err)
	}
	if fc.writes["/home/node/.claude.json"] != "data" {
		t.Errorf("single-file seed not written: %v", fc.writes)
	}
	// Parent dir created for the file.
	sort.Strings(fc.execs)
	if !strings.Contains(strings.Join(fc.execs, "\n"), "mkdir -p /home/node") {
		t.Errorf("expected mkdir of parent dir; execs: %v", fc.execs)
	}
}

func TestSeedGuestFilesMissingSourceErrors(t *testing.T) {
	p := &config.Profile{Seeds: []config.SeedSpec{{HostPath: "/nonexistent/xyz", GuestPath: "/home/node/.claude"}}}
	fc := newFakeSeedClient()
	if err := seedGuestFiles(context.Background(), fc, p, guestIdentity{}, "/cwd", "/home/me", os.Stderr); err == nil {
		t.Errorf("expected error for missing seed source")
	}
}
