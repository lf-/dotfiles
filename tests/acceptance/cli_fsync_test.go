//go:build acceptance

package acceptance

import (
	"fmt"
	"os"
	"path/filepath"
	"strings"
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

func TestCLIRunHostFSAppendOpen(t *testing.T) {
	hostDir := t.TempDir()
	require.NoError(t, os.WriteFile(filepath.Join(hostDir, "log.txt"), []byte("initial\n"), 0644))

	stdout, stderr, exitCode := runCLIWithTimeout(
		t,
		3*time.Minute,
		"run",
		"--image", "alpine:latest",
		"--workspace", "/workspace",
		"--no-network",
		"-v", fmt.Sprintf("%s:/workspace:host_fs", hostDir),
		"--", "sh", "-c", strings.Join([]string{
			"set -eu",
			"printf 'appended\\n' >> /workspace/log.txt",
			"cat /workspace/log.txt",
		}, "; "),
	)
	require.Equalf(t, 0, exitCode, "append open failed\nstdout: %s\nstderr: %s", stdout, stderr)
	assert.Equal(t, "initial\nappended\n", stdout)

	content, err := os.ReadFile(filepath.Join(hostDir, "log.txt"))
	require.NoError(t, err)
	assert.Equal(t, "initial\nappended\n", string(content))
}

func TestCLIRunHostFSAppendCreateHandle(t *testing.T) {
	hostDir := t.TempDir()

	guestScript := `import os

path = "/workspace/log.txt"
fd = os.open(path, os.O_CREAT | os.O_WRONLY | os.O_APPEND, 0o644)
try:
    os.write(fd, b"first\n")

    other = os.open(path, os.O_WRONLY | os.O_APPEND)
    try:
        os.write(other, b"second\n")
    finally:
        os.close(other)

    os.pwrite(fd, b"third\n", 0)
finally:
    os.close(fd)

print(open(path, "r").read(), end="")
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
	require.Equalf(t, 0, exitCode, "append create failed\nstdout: %s\nstderr: %s", stdout, stderr)
	assert.Equal(t, "first\nsecond\nthird\n", stdout)

	content, err := os.ReadFile(filepath.Join(hostDir, "log.txt"))
	require.NoError(t, err)
	assert.Equal(t, "first\nsecond\nthird\n", string(content))
}
