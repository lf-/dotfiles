package kernel

import (
	"context"
	"os"
	"path/filepath"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestCurrentArch(t *testing.T) {
	arch := CurrentArch()
	assert.Contains(t, []Architecture{ArchX86_64, ArchARM64}, arch)
}

func TestKernelFilename(t *testing.T) {
	tests := []struct {
		arch     Architecture
		expected string
	}{
		{ArchX86_64, "kernel"},
		{ArchARM64, "kernel-arm64"},
	}
	for _, tt := range tests {
		assert.Equal(t, tt.expected, tt.arch.KernelFilename())
	}
}

func TestOCIPlatform(t *testing.T) {
	tests := []struct {
		arch     Architecture
		expected string
	}{
		{ArchX86_64, "linux/amd64"},
		{ArchARM64, "linux/arm64"},
	}
	for _, tt := range tests {
		assert.Equal(t, tt.expected, tt.arch.OCIPlatform())
	}
}

func TestManagerKernelPath(t *testing.T) {
	tmpDir := t.TempDir()
	mgr := NewManager(WithCacheDir(tmpDir))

	path := mgr.KernelPath(ArchX86_64, "6.1.137")
	expected := filepath.Join(tmpDir, "kernels", "6.1.137", "kernel")
	assert.Equal(t, expected, path)

	path = mgr.KernelPath(ArchARM64, "")
	expected = filepath.Join(tmpDir, "kernels", Version, "kernel-arm64")
	assert.Equal(t, expected, path)
}

func TestListCachedVersions(t *testing.T) {
	tmpDir := t.TempDir()
	mgr := NewManager(WithCacheDir(tmpDir))

	versions, err := mgr.ListCachedVersions()
	require.NoError(t, err)
	assert.Len(t, versions, 0)

	os.MkdirAll(filepath.Join(tmpDir, "kernels", "6.1.137"), 0755)
	os.MkdirAll(filepath.Join(tmpDir, "kernels", "6.1.140"), 0755)
	os.MkdirAll(filepath.Join(tmpDir, "kernels", "refs", "abc123"), 0755)

	versions, err = mgr.ListCachedVersions()
	require.NoError(t, err)
	assert.Len(t, versions, 2)
}

func TestEnsureKernelRefFile(t *testing.T) {
	tmpDir := t.TempDir()
	kernelPath := filepath.Join(tmpDir, "vmlinux")
	require.NoError(t, os.WriteFile(kernelPath, []byte("kernel"), 0644))

	mgr := NewManager(WithCacheDir(t.TempDir()))
	resolved, err := mgr.EnsureKernelRef(context.Background(), ArchX86_64, "file://"+kernelPath)
	require.NoError(t, err)
	assert.Equal(t, kernelPath, resolved)
}

func TestEnsureKernelRefRejectsRelativeFilePath(t *testing.T) {
	mgr := NewManager(WithCacheDir(t.TempDir()))

	_, err := mgr.EnsureKernelRef(context.Background(), ArchX86_64, "file://kernel")
	require.Error(t, err)
	assert.ErrorIs(t, err, ErrInvalidKernelRef)
}

func TestKernelRefPathStableAndSeparate(t *testing.T) {
	mgr := NewManager(WithCacheDir("/tmp/cache"))

	path := mgr.KernelRefPath(ArchX86_64, "ghcr.io/example/kernel:1.2.3")
	assert.Contains(t, path, filepath.Join("kernels", "refs"))
	assert.NotContains(t, path, filepath.Join("kernels", "1.2.3"))
}

func TestImageReference(t *testing.T) {
	ref := ImageReference("")
	assert.Equal(t, DefaultRegistry+"/kernel:"+Version, ref)

	ref = ImageReference("6.1.140")
	assert.Equal(t, DefaultRegistry+"/kernel:6.1.140", ref)
}

func TestParseVersion(t *testing.T) {
	tests := []struct {
		ref      string
		expected string
	}{
		{"ghcr.io/jingkaihe/matchlock/kernel:6.1.137", "6.1.137"},
		{"kernel:6.1.140", "6.1.140"},
		{"kernel", Version},
	}
	for _, tt := range tests {
		assert.Equal(t, tt.expected, ParseVersion(tt.ref))
	}
}
