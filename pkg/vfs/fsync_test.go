package vfs

import (
	"errors"
	"os"
	"path/filepath"
	"syscall"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestRealFSProvider_Fsync_File(t *testing.T) {
	dir := t.TempDir()
	require.NoError(t, os.WriteFile(filepath.Join(dir, "file.txt"), []byte("hi"), 0644))

	p := NewRealFSProvider(dir)
	require.NoError(t, p.Fsync("/file.txt"))
}

func TestRealFSProvider_Fsync_Directory(t *testing.T) {
	dir := t.TempDir()
	p := NewRealFSProvider(dir)

	require.NoError(t, p.Mkdir("/sub", 0755))
	require.NoError(t, p.Fsync("/sub"))
}

func TestRealFSProvider_Fsync_Missing(t *testing.T) {
	p := NewRealFSProvider(t.TempDir())
	err := p.Fsync("/does-not-exist")
	require.Error(t, err)
	assert.True(t, os.IsNotExist(err), "expected ENOENT, got %v", err)
}

func TestMemoryProvider_Fsync_Noop(t *testing.T) {
	mp := NewMemoryProvider()
	require.NoError(t, mp.Mkdir("/dir", 0755))
	require.NoError(t, mp.WriteFile("/file.txt", []byte("hi"), 0644))
	require.NoError(t, mp.Fsync("/dir"))
	require.NoError(t, mp.Fsync("/file.txt"))
	err := mp.Fsync("/does-not-exist")
	require.ErrorIs(t, err, syscall.ENOENT)
}

func TestReadonlyProvider_Fsync_DelegatesToInner(t *testing.T) {
	dir := t.TempDir()
	require.NoError(t, os.WriteFile(filepath.Join(dir, "file.txt"), []byte(""), 0644))

	p := NewReadonlyProvider(NewRealFSProvider(dir))
	require.NoError(t, p.Fsync("/file.txt"))
	require.Error(t, p.Fsync("/missing"))
}

func TestMountRouter_Fsync_RoutesToOwningMount(t *testing.T) {
	dirA := t.TempDir()
	dirB := t.TempDir()
	require.NoError(t, os.WriteFile(filepath.Join(dirA, "in-a"), []byte(""), 0644))
	require.NoError(t, os.WriteFile(filepath.Join(dirB, "in-b"), []byte(""), 0644))

	router := NewMountRouter(map[string]Provider{
		"/mnt/a": NewRealFSProvider(dirA),
		"/mnt/b": NewRealFSProvider(dirB),
	})

	require.NoError(t, router.Fsync("/mnt/a/in-a"))
	require.NoError(t, router.Fsync("/mnt/b/in-b"))
	require.Error(t, router.Fsync("/mnt/a/in-b"))
}

type spyFsyncProvider struct {
	Provider
	calls []string
	err   error
}

func (p *spyFsyncProvider) Fsync(path string) error {
	p.calls = append(p.calls, path)
	return p.err
}

type syncErrHandle struct {
	Handle
	err error
}

func (h syncErrHandle) Sync() error { return h.err }

func TestInterceptProvider_Fsync_DelegatesAndPropagatesError(t *testing.T) {
	want := errors.New("disk gone")
	spy := &spyFsyncProvider{Provider: NewMemoryProvider(), err: want}
	p := NewInterceptProvider(spy, NewHookEngine(nil))

	require.ErrorIs(t, p.Fsync("/x"), want)
	require.Equal(t, []string{"/x"}, spy.calls)
}

func TestDispatch_OpFsyncPath_File(t *testing.T) {
	dir := t.TempDir()
	require.NoError(t, os.WriteFile(filepath.Join(dir, "file.txt"), []byte(""), 0644))

	s := NewVFSServer(NewRealFSProvider(dir))
	resp := s.dispatch(&VFSRequest{Op: OpFsyncPath, Path: "/file.txt"})
	assert.Equal(t, int32(0), resp.Err)
}

func TestDispatch_OpFsyncPath_Directory(t *testing.T) {
	dir := t.TempDir()

	s := NewVFSServer(NewRealFSProvider(dir))
	require.Equal(t, int32(0), s.dispatch(&VFSRequest{Op: OpMkdir, Path: "/sub", Mode: 0755}).Err)

	resp := s.dispatch(&VFSRequest{Op: OpFsyncPath, Path: "/sub"})
	assert.Equal(t, int32(0), resp.Err)
}

func TestDispatch_OpFsyncPath_PropagatesProviderError(t *testing.T) {
	want := syscall.EIO
	s := NewVFSServer(&spyFsyncProvider{Provider: NewMemoryProvider(), err: want})

	resp := s.dispatch(&VFSRequest{Op: OpFsyncPath, Path: "/x"})
	assert.Equal(t, -int32(want), resp.Err)
}

func TestDispatch_OpFsync_PropagatesHandleError(t *testing.T) {
	want := syscall.EIO
	s := NewVFSServer(NewMemoryProvider())
	s.handles.Store(uint64(42), syncErrHandle{err: want})

	resp := s.dispatch(&VFSRequest{Op: OpFsync, Handle: 42})
	assert.Equal(t, -int32(want), resp.Err)
}
