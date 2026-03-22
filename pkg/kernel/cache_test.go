package kernel

import (
	"os"
	"path/filepath"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestListUsesTrackedMetadataOnly(t *testing.T) {
	mgr := NewManager(WithCacheDir(t.TempDir()))
	path := mgr.KernelPath(ArchX86_64, "6.1.137")
	require.NoError(t, os.MkdirAll(filepath.Dir(path), 0755))
	require.NoError(t, os.WriteFile(path, []byte("kernel"), 0644))

	entries, err := mgr.List()
	require.NoError(t, err)
	assert.Empty(t, entries)

	mgr.recordVersionCache("6.1.137", ArchX86_64, path, 6, ImageReference("6.1.137"), "sha256:abc")

	entries, err = mgr.List()
	require.NoError(t, err)
	require.Len(t, entries, 1)
	assert.Equal(t, CacheKindVersion, entries[0].Kind)
	assert.Equal(t, "6.1.137", entries[0].Version)
	assert.Equal(t, "sha256:abc", entries[0].SourceDigest)
}

func TestListDropsStaleMetadata(t *testing.T) {
	mgr := NewManager(WithCacheDir(t.TempDir()))
	path := mgr.KernelPath(ArchX86_64, "6.1.137")
	mgr.recordVersionCache("6.1.137", ArchX86_64, path, 6, ImageReference("6.1.137"), "sha256:abc")

	entries, err := mgr.List()
	require.NoError(t, err)
	assert.Empty(t, entries)
}

func TestRemoveVersionDeletesFilesAndMetadata(t *testing.T) {
	mgr := NewManager(WithCacheDir(t.TempDir()))
	path := mgr.KernelPath(ArchX86_64, "6.1.137")
	require.NoError(t, os.MkdirAll(filepath.Dir(path), 0755))
	require.NoError(t, os.WriteFile(path, []byte("kernel"), 0644))
	mgr.recordVersionCache("6.1.137", ArchX86_64, path, 6, ImageReference("6.1.137"), "sha256:abc")

	require.NoError(t, mgr.RemoveVersion("6.1.137"))
	_, err := os.Stat(filepath.Dir(path))
	assert.True(t, os.IsNotExist(err))

	entries, err := mgr.List()
	require.NoError(t, err)
	assert.Empty(t, entries)
}

func TestRemoveRefDeletesFilesAndMetadata(t *testing.T) {
	mgr := NewManager(WithCacheDir(t.TempDir()))
	path := mgr.KernelRefPath(ArchX86_64, "ghcr.io/example/kernel:6.1.137")
	require.NoError(t, os.MkdirAll(filepath.Dir(path), 0755))
	require.NoError(t, os.WriteFile(path, []byte("kernel"), 0644))
	mgr.recordRefCache("ghcr.io/example/kernel:6.1.137", ArchX86_64, path, 6, "sha256:def")

	require.NoError(t, mgr.RemoveRef("ghcr.io/example/kernel:6.1.137"))
	_, err := os.Stat(filepath.Dir(path))
	assert.True(t, os.IsNotExist(err))

	entries, err := mgr.List()
	require.NoError(t, err)
	assert.Empty(t, entries)
}
