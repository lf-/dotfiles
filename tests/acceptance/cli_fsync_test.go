//go:build acceptance

package acceptance

import (
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"strings"
	"testing"
	"time"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

// TestCLIRunHostFSDirectoryFsync exercises the FUSE FSYNCDIR opcode end-to-end
// against a host_fs mount. Without VFSNode.Fsync implemented, the in-VM
// fsync(2) on a directory file descriptor falls through to go-fuse's default
// and returns ENOSYS/ENOTSUP — the same failure postgres hits during WAL
// recovery against a host_fs-mounted PGDATA. With the fix in place, the
// helper observes a clean fsync and prints FSYNC_OK.
//
// We cross-compile a tiny Go helper instead of installing python in the VM
// so the test stays offline (no apk add) and self-contained.
func TestCLIRunHostFSDirectoryFsync(t *testing.T) {
	hostDir := t.TempDir()

	helperSrc := filepath.Join(t.TempDir(), "fsync_helper.go")
	require.NoError(t, os.WriteFile(helperSrc, []byte(fsyncHelperSource), 0644))

	helperBin := filepath.Join(hostDir, "fsync-helper")
	build := exec.Command("go", "build", "-o", helperBin, helperSrc)
	build.Env = append(os.Environ(),
		"GOOS=linux",
		"GOARCH="+runtime.GOARCH,
		"CGO_ENABLED=0",
	)
	if out, err := build.CombinedOutput(); err != nil {
		t.Fatalf("cross-compile helper failed: %v\n%s", err, out)
	}
	require.NoError(t, os.Chmod(helperBin, 0755))

	guestCmd := strings.Join([]string{
		"mkdir -p /workspace/repo/sub",
		"/workspace/repo/fsync-helper /workspace/repo/sub",
	}, " && ")

	stdout, stderr, exitCode := runCLIWithTimeout(
		t,
		3*time.Minute,
		"run",
		"--image", "alpine:latest",
		"--workspace", "/workspace",
		"--no-network",
		"-v", fmt.Sprintf("%s:repo:host_fs", hostDir),
		"--", "sh", "-c", guestCmd,
	)
	require.Equalf(t, 0, exitCode, "fsync helper exited non-zero — VFSNode.Fsync likely returns ENOSYS\nstdout: %s\nstderr: %s", stdout, stderr)
	assert.Contains(t, stdout, "FSYNC_OK")
}

// fsyncHelperSource is compiled at test setup and dropped into the host_fs
// mount, then exec'd from inside the VM. Opens the given path O_RDONLY and
// calls fsync(2) on the resulting FD — for a directory path that becomes a
// FUSE FSYNCDIR.
const fsyncHelperSource = `package main

import (
	"fmt"
	"os"
)

func main() {
	if len(os.Args) != 2 {
		fmt.Fprintln(os.Stderr, "usage: fsync-helper <path>")
		os.Exit(2)
	}
	f, err := os.Open(os.Args[1])
	if err != nil {
		fmt.Fprintf(os.Stderr, "open %s: %v\n", os.Args[1], err)
		os.Exit(1)
	}
	defer f.Close()
	if err := f.Sync(); err != nil {
		fmt.Fprintf(os.Stderr, "fsync %s: %v\n", os.Args[1], err)
		os.Exit(1)
	}
	fmt.Println("FSYNC_OK")
}
`
