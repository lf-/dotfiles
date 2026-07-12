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

func TestRealFSAppend(t *testing.T) {
	dir := t.TempDir()
	require.NoError(t, os.WriteFile(filepath.Join(dir, "log.txt"), []byte("initial"), 0644))

	p := NewRealFSProvider(dir)
	s := NewVFSServer(p)

	openResp := s.dispatch(&VFSRequest{
		Op:    OpOpen,
		Path:  "log.txt",
		Flags: uint32(linuxOpenWriteOnly | linuxOpenAppend),
	})
	require.Equal(t, int32(0), openResp.Err)

	writeResp := s.dispatch(&VFSRequest{
		Op: OpWrite, Handle: openResp.Handle,
		Data: []byte("+appended"), Offset: 0,
	})
	require.Equal(t, int32(0), writeResp.Err)
	s.dispatch(&VFSRequest{Op: OpRelease, Handle: openResp.Handle})

	content, err := os.ReadFile(filepath.Join(dir, "log.txt"))
	require.NoError(t, err)
	assert.Equal(t, "initial+appended", string(content))
}

func TestRealFSAppendAfterCreate(t *testing.T) {
	dir := t.TempDir()
	s := NewVFSServer(NewRealFSProvider(dir))

	createResp := s.dispatch(&VFSRequest{
		Op:    OpCreate,
		Path:  "log.txt",
		Flags: uint32(linuxOpenWriteOnly | linuxOpenAppend),
		Mode:  0644,
	})
	require.Equal(t, int32(0), createResp.Err)

	writeResp := s.dispatch(&VFSRequest{
		Op: OpWrite, Handle: createResp.Handle,
		Data: []byte("first"), Offset: 0,
	})
	require.Equal(t, int32(0), writeResp.Err)

	openResp := s.dispatch(&VFSRequest{
		Op:    OpOpen,
		Path:  "log.txt",
		Flags: uint32(linuxOpenWriteOnly | linuxOpenAppend),
	})
	require.Equal(t, int32(0), openResp.Err)
	writeResp = s.dispatch(&VFSRequest{
		Op: OpWrite, Handle: openResp.Handle,
		Data: []byte(" second"), Offset: 0,
	})
	require.Equal(t, int32(0), writeResp.Err)
	s.dispatch(&VFSRequest{Op: OpRelease, Handle: openResp.Handle})

	writeResp = s.dispatch(&VFSRequest{
		Op: OpWrite, Handle: createResp.Handle,
		Data: []byte(" third"), Offset: 0,
	})
	require.Equal(t, int32(0), writeResp.Err)
	s.dispatch(&VFSRequest{Op: OpRelease, Handle: createResp.Handle})

	content, err := os.ReadFile(filepath.Join(dir, "log.txt"))
	require.NoError(t, err)
	assert.Equal(t, "first second third", string(content))
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
