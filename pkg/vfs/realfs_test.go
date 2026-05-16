package vfs

import (
	"os"
	"path/filepath"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestRealFSProviderOwnerOverride(t *testing.T) {
	dir := t.TempDir()
	require.NoError(t, os.WriteFile(filepath.Join(dir, "file.txt"), []byte("hello"), 0644))

	p := NewRealFSProvider(dir).WithOwner(1000, 2000)

	info, err := p.Stat("file.txt")
	require.NoError(t, err)
	assert.Equal(t, uint32(1000), info.UID())
	assert.Equal(t, uint32(2000), info.GID())
}

func TestRealFSProviderOwnerOverrideDir(t *testing.T) {
	dir := t.TempDir()
	require.NoError(t, os.Mkdir(filepath.Join(dir, "subdir"), 0755))

	p := NewRealFSProvider(dir).WithOwner(500, 500)

	info, err := p.Stat("subdir")
	require.NoError(t, err)
	assert.Equal(t, uint32(500), info.UID())
	assert.Equal(t, uint32(500), info.GID())
	assert.True(t, info.IsDir())
}

func TestRealFSProviderCreateInheritsOwner(t *testing.T) {
	dir := t.TempDir()

	p := NewRealFSProvider(dir).WithOwner(1000, 2000)

	h, err := p.Create("new.txt", 0644)
	require.NoError(t, err)
	defer h.Close()

	fi, err := h.Stat()
	require.NoError(t, err)
	assert.Equal(t, uint32(1000), fi.UID())
	assert.Equal(t, uint32(2000), fi.GID())
}

func TestRealFSProviderNoOverrideDefaultsToZero(t *testing.T) {
	dir := t.TempDir()
	require.NoError(t, os.WriteFile(filepath.Join(dir, "file.txt"), []byte("hi"), 0644))

	p := NewRealFSProvider(dir)

	info, err := p.Stat("file.txt")
	require.NoError(t, err)
	assert.Equal(t, uint32(0), info.UID())
	assert.Equal(t, uint32(0), info.GID())
}

func TestRealFSProviderReadDirOwnerOverride(t *testing.T) {
	dir := t.TempDir()
	require.NoError(t, os.WriteFile(filepath.Join(dir, "file.txt"), []byte("hello"), 0644))
	require.NoError(t, os.Mkdir(filepath.Join(dir, "subdir"), 0755))

	p := NewRealFSProvider(dir).WithOwner(1000, 2000)

	entries, err := p.ReadDir(".")
	require.NoError(t, err)
	require.Len(t, entries, 2)

	for _, e := range entries {
		fi, infoErr := e.Info()
		require.NoError(t, infoErr)
		vfi, ok := fi.(FileInfo)
		require.True(t, ok, "DirEntry.Info() should return vfs.FileInfo")
		assert.Equal(t, uint32(1000), vfi.UID(), "entry %q: expected UID 1000", e.Name())
		assert.Equal(t, uint32(2000), vfi.GID(), "entry %q: expected GID 2000", e.Name())
	}
}

func TestRealFSProviderOwnerOverrideViaDispatch(t *testing.T) {
	dir := t.TempDir()
	require.NoError(t, os.WriteFile(filepath.Join(dir, "hello.txt"), []byte("world"), 0644))

	p := NewRealFSProvider(dir).WithOwner(1000, 2000)
	s := NewVFSServer(p)

	resp := s.dispatch(&VFSRequest{Op: OpGetattr, Path: "hello.txt"})
	require.Equal(t, int32(0), resp.Err)
	require.NotNil(t, resp.Stat)
	assert.Equal(t, uint32(1000), resp.Stat.UID)
	assert.Equal(t, uint32(2000), resp.Stat.GID)
}
