//go:build acceptance

package acceptance

import (
	"fmt"
	"testing"
	"time"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestCLIRunHostFSDirectoryFsync(t *testing.T) {
	hostDir := t.TempDir()

	guestScript := `import os

os.makedirs("/workspace/sub", exist_ok=True)
for path in ("/workspace", "/workspace/sub"):
    fd = os.open(path, os.O_RDONLY)
    try:
        os.fsync(fd)
    finally:
        os.close(fd)

print("FSYNC_OK")
`

	stdout, stderr, exitCode := runCLIWithTimeout(
		t,
		3*time.Minute,
		"run",
		"--image", "python:3.12-alpine",
		"--workspace", "/workspace",
		"--no-network",
		"-v", fmt.Sprintf("%s:/workspace:host_fs", hostDir),
		"--", "python3", "-c", guestScript,
	)
	require.Equalf(t, 0, exitCode, "directory fsync failed\nstdout: %s\nstderr: %s", stdout, stderr)
	assert.Contains(t, stdout, "FSYNC_OK")
}
