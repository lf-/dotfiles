//go:build acceptance

package acceptance

import (
	"context"
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/jingkaihe/matchlock/pkg/kernel"
	"github.com/jingkaihe/matchlock/pkg/sdk"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func copyCurrentKernelToTemp(t *testing.T) string {
	t.Helper()

	src, err := kernel.ResolveKernelPath(context.Background())
	require.NoError(t, err)

	data, err := os.ReadFile(src)
	require.NoErrorf(t, err, "read kernel from %s", src)

	dst := filepath.Join(t.TempDir(), "kernel")
	require.NoError(t, os.WriteFile(dst, data, 0644))
	return dst
}

func TestCLIRunWithKernelFileRefPersistsKernelMetadata(t *testing.T) {
	localKernel := copyCurrentKernelToTemp(t)

	stdout, stderr, exitCode := runCLIWithTimeout(
		t,
		2*time.Minute,
		"run",
		"--image", "alpine:latest",
		"--kernel", "file://"+localKernel,
		"-d",
	)
	require.Equal(t, 0, exitCode, "stdout: %s\nstderr: %s", stdout, stderr)
	vmID := strings.TrimSpace(stdout)
	require.NotEmpty(t, vmID, "stdout: %q stderr: %q", stdout, stderr)
	require.True(t, strings.HasPrefix(vmID, "vm-"), "stdout: %q stderr: %q", stdout, stderr)

	t.Cleanup(func() {
		_, _, _ = runCLI(t, "kill", vmID)
		_, _, _ = runCLI(t, "rm", vmID)
	})

	waitForDetachedVMExecReady(t, vmID)
	cmdOut, _, execExit := runCLIWithTimeout(t, 30*time.Second, "exec", vmID, "echo", "kernel-file-ref")
	require.Equal(t, 0, execExit)
	assert.Equal(t, "kernel-file-ref", strings.TrimSpace(cmdOut))

	getStdout, _, exitCode := runCLI(t, "get", vmID)
	require.Equal(t, 0, exitCode)

	var getOut struct {
		Config struct {
			Kernel map[string]interface{} `json:"kernel"`
		} `json:"config"`
	}
	require.NoError(t, json.Unmarshal([]byte(getStdout), &getOut))
	require.NotNil(t, getOut.Config.Kernel)
	assert.Equal(t, "file://"+localKernel, getOut.Config.Kernel["ref"])

	inspectStdout, _, exitCode := runCLI(t, "inspect", vmID)
	require.Equal(t, 0, exitCode)

	var inspectOut struct {
		Lifecycle struct {
			Resources struct {
				KernelRef  string `json:"kernel_ref"`
				KernelPath string `json:"kernel_path"`
			} `json:"resources"`
		} `json:"lifecycle"`
	}
	require.NoError(t, json.Unmarshal([]byte(inspectStdout), &inspectOut))
	assert.Equal(t, "file://"+localKernel, inspectOut.Lifecycle.Resources.KernelRef)
	assert.Equal(t, localKernel, inspectOut.Lifecycle.Resources.KernelPath)
}

func TestCLIRunRejectsRelativeKernelFileRef(t *testing.T) {
	_, stderr, exitCode := runCLIWithTimeout(
		t,
		2*time.Minute,
		"run",
		"--image", "alpine:latest",
		"--kernel", "file://kernel",
		"--",
		"true",
	)
	require.NotEqual(t, 0, exitCode)
	assert.Contains(t, stderr, "invalid kernel reference")
	assert.Contains(t, stderr, "file ref")
}

func TestCLIRunUsesMatchlockKernelEnvFallbackInLifecycle(t *testing.T) {
	localKernel := copyCurrentKernelToTemp(t)

	stdout, stderr, exitCode := runCLIEnvWithTimeout(
		t,
		2*time.Minute,
		[]string{"MATCHLOCK_KERNEL=file://" + localKernel},
		"run",
		"--image", "alpine:latest",
		"-d",
	)
	require.Equal(t, 0, exitCode, "stdout: %s\nstderr: %s", stdout, stderr)
	vmID := strings.TrimSpace(stdout)
	require.NotEmpty(t, vmID, "stdout: %q stderr: %q", stdout, stderr)
	require.True(t, strings.HasPrefix(vmID, "vm-"), "stdout: %q stderr: %q", stdout, stderr)

	t.Cleanup(func() {
		_, _, _ = runCLI(t, "kill", vmID)
		_, _, _ = runCLI(t, "rm", vmID)
	})

	waitForDetachedVMExecReady(t, vmID)
	cmdOut, _, execExit := runCLIWithTimeout(t, 30*time.Second, "exec", vmID, "echo", "env-kernel-fallback")
	require.Equal(t, 0, execExit)
	assert.Equal(t, "env-kernel-fallback", strings.TrimSpace(cmdOut))

	inspectStdout, _, exitCode := runCLI(t, "inspect", vmID)
	require.Equal(t, 0, exitCode)

	var inspectOut struct {
		Lifecycle struct {
			Resources struct {
				KernelRef  string `json:"kernel_ref"`
				KernelPath string `json:"kernel_path"`
			} `json:"resources"`
		} `json:"lifecycle"`
	}
	require.NoError(t, json.Unmarshal([]byte(inspectStdout), &inspectOut))
	assert.Equal(t, "file://"+localKernel, inspectOut.Lifecycle.Resources.KernelRef)
	assert.Equal(t, localKernel, inspectOut.Lifecycle.Resources.KernelPath)
}

func waitForDetachedVMExecReady(t *testing.T, vmID string) {
	t.Helper()

	deadline := time.Now().Add(30 * time.Second)
	for time.Now().Before(deadline) {
		_, _, execExit := runCLIWithTimeout(t, 10*time.Second, "exec", vmID, "true")
		if execExit == 0 {
			return
		}
		time.Sleep(300 * time.Millisecond)
	}
	require.FailNowf(t, "timed out waiting for detached sandbox exec readiness", "vmID=%s", vmID)
}

func TestGoSDKKernelRefPersistsInStateAndLifecycle(t *testing.T) {
	t.Parallel()

	localKernel := copyCurrentKernelToTemp(t)
	client := launchWithBuilder(t, sdk.New("alpine:latest").WithKernel("file://"+localKernel))
	vmID := client.VMID()
	require.NotEmpty(t, vmID)

	result, err := client.Exec(context.Background(), "echo sdk-kernel-ref")
	require.NoError(t, err)
	assert.Equal(t, 0, result.ExitCode)
	assert.Equal(t, "sdk-kernel-ref", strings.TrimSpace(result.Stdout))

	getStdout, _, exitCode := runCLI(t, "get", vmID)
	require.Equal(t, 0, exitCode)

	var getOut struct {
		Config struct {
			Kernel map[string]interface{} `json:"kernel"`
		} `json:"config"`
	}
	require.NoError(t, json.Unmarshal([]byte(getStdout), &getOut))
	require.NotNil(t, getOut.Config.Kernel)
	assert.Equal(t, "file://"+localKernel, getOut.Config.Kernel["ref"])

	inspectStdout, _, exitCode := runCLI(t, "inspect", vmID)
	require.Equal(t, 0, exitCode)

	var inspectOut struct {
		Lifecycle struct {
			Resources struct {
				KernelRef  string `json:"kernel_ref"`
				KernelPath string `json:"kernel_path"`
			} `json:"resources"`
		} `json:"lifecycle"`
	}
	require.NoError(t, json.Unmarshal([]byte(inspectStdout), &inspectOut))
	assert.Equal(t, "file://"+localKernel, inspectOut.Lifecycle.Resources.KernelRef)
	assert.Equal(t, localKernel, inspectOut.Lifecycle.Resources.KernelPath)
}
