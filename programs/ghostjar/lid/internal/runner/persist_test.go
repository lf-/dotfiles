package runner

import (
	"context"
	"os"
	"strings"
	"testing"

	"github.com/jingkaihe/matchlock/pkg/sdk"
)

// TestWireClaudePersistSymlinks verifies that wireClaudePersist issues the
// expected mkdir + rm + ln commands for each persisted path, batched in a
// single sh -c script, and does not touch lid-managed files.
func TestWireClaudePersistSymlinks(t *testing.T) {
	fc := newFakeSeedClient()
	id := guestIdentity{UID: guestUID, GID: guestGID, Home: "/home/node", User: "1000:1000"}
	persistPath := "/workspace/.lid/claude"

	if err := wireClaudePersist(context.Background(), fc, persistPath, id, os.Stderr); err != nil {
		t.Fatalf("wireClaudePersist: %v", err)
	}

	if len(fc.execs) < 1 {
		t.Fatal("expected at least one exec (main script + chown)")
	}

	// The first exec is the batched symlink script.
	script := fc.execs[0]

	// ~/.claude must be mkdir'd (idempotent). Use quoteArg to match the actual
	// quoting the production code applies (no quotes needed for this safe path).
	if !strings.Contains(script, "mkdir -p "+quoteArg("/home/node/.claude")) {
		t.Errorf("script missing mkdir ~/.claude:\n%s", script)
	}

	// Every persisted path must be: created in the mount, old copy removed, symlinked.
	for _, name := range claudePersistedPaths {
		mountTarget := persistPath + "/" + name
		guestLink := "/home/node/.claude/" + name

		if !strings.Contains(script, quoteArg(mountTarget)) {
			t.Errorf("script missing mount target %q:\n%s", mountTarget, script)
		}
		if !strings.Contains(script, "rm -rf "+quoteArg(guestLink)) {
			t.Errorf("script missing rm -rf %q:\n%s", guestLink, script)
		}
		if !strings.Contains(script, "ln -sfn "+quoteArg(mountTarget)+" "+quoteArg(guestLink)) {
			t.Errorf("script missing ln for %q:\n%s", guestLink, script)
		}
	}

	// Managed files must NOT be mentioned as targets of rm/ln operations.
	managedFiles := []string{"settings.json", ".config.json", ".credentials.json"}
	for _, f := range managedFiles {
		if strings.Contains(script, "ln -sfn") && strings.Contains(script, f) {
			t.Errorf("script unexpectedly symlinks managed file %q:\n%s", f, script)
		}
	}
}

// TestWireClaudePersistChownNonFatal verifies that a chown failure is logged
// but does not cause wireClaudePersist to return an error.
func TestWireClaudePersistChownNonFatal(t *testing.T) {
	// Use a client that fails the second exec (chown) with a non-zero exit code.
	fc := &fakeChownFailClient{}
	id := guestIdentity{UID: guestUID, GID: guestGID, Home: "/home/node", User: "1000:1000"}

	var log strings.Builder
	err := wireClaudePersist(context.Background(), fc, "/workspace/.lid/claude", id, &log)
	if err != nil {
		t.Errorf("wireClaudePersist should not fail on chown error, got: %v", err)
	}
}

// TestClaudePersistHostStore verifies the deterministic path derivation.
func TestClaudePersistHostStore(t *testing.T) {
	cases := []struct {
		cwd  string
		home string
		want string
	}{
		{
			cwd:  "/Users/jade/projects/myapp",
			home: "/Users/jade",
			// Separator-replaced, leading '-' stripped.
			want: "/Users/jade/.local/share/lid/persist/Users-jade-projects-myapp/claude",
		},
		{
			cwd:  "/home/user/work",
			home: "/home/user",
			want: "/home/user/.local/share/lid/persist/home-user-work/claude",
		},
	}
	for _, c := range cases {
		t.Run(c.cwd, func(t *testing.T) {
			got, err := claudePersistHostStore(c.cwd, c.home)
			if err != nil {
				t.Fatalf("claudePersistHostStore(%q, %q): %v", c.cwd, c.home, err)
			}
			if got != c.want {
				t.Errorf("got  %q\nwant %q", got, c.want)
			}
		})
	}
}

// TestClaudePersistHostStoreXDG verifies $XDG_DATA_HOME is respected.
func TestClaudePersistHostStoreXDG(t *testing.T) {
	t.Setenv("XDG_DATA_HOME", "/custom/data")
	got, err := claudePersistHostStore("/Users/jade/proj", "/Users/jade")
	if err != nil {
		t.Fatal(err)
	}
	if !strings.HasPrefix(got, "/custom/data/lid/persist/") {
		t.Errorf("XDG_DATA_HOME not respected: %q", got)
	}
}

// fakeChownFailClient is like fakeSeedClient but makes the chown exec fail.
type fakeChownFailClient struct {
	callCount int
}

func (f *fakeChownFailClient) Exec(_ context.Context, _ string) (*sdk.ExecResult, error) {
	f.callCount++
	if f.callCount > 1 {
		return &sdk.ExecResult{ExitCode: 1, Stderr: "chown: operation not permitted"}, nil
	}
	return &sdk.ExecResult{ExitCode: 0}, nil
}

func (f *fakeChownFailClient) WriteFileMode(_ context.Context, _ string, _ []byte, _ uint32) error {
	return nil
}
