package vfs

import (
	"os"
	"syscall"
	"testing"
	"time"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestDispatchCreateReturnsStat(t *testing.T) {
	s := NewVFSServer(NewMemoryProvider())

	resp := s.dispatch(&VFSRequest{
		Op:   OpCreate,
		Path: "/file.txt",
		Mode: 0644,
	})
	require.Equal(t, int32(0), resp.Err)
	require.NotNil(t, resp.Stat)
	assert.False(t, resp.Stat.IsDir)
	assert.Equal(t, uint32(0644), resp.Stat.Mode&0777)
	assert.NotZero(t, resp.Handle)

	release := s.dispatch(&VFSRequest{Op: OpRelease, Handle: resp.Handle})
	require.Equal(t, int32(0), release.Err)
}

func TestDispatchMkdirReturnsStat(t *testing.T) {
	s := NewVFSServer(NewMemoryProvider())

	resp := s.dispatch(&VFSRequest{
		Op:   OpMkdir,
		Path: "/repo",
		Mode: 0755,
	})
	require.Equal(t, int32(0), resp.Err)
	require.NotNil(t, resp.Stat)
	assert.True(t, resp.Stat.IsDir)
	assert.Equal(t, uint32(0755), resp.Stat.Mode&0777)
}

func TestDispatchMkdirSucceedsWhenFollowUpStatDenied(t *testing.T) {
	base := NewMemoryProvider()
	s := NewVFSServer(denyStatProvider{Provider: base})

	resp := s.dispatch(&VFSRequest{
		Op:   OpMkdir,
		Path: "/repo",
		Mode: 0755,
	})
	require.Equal(t, int32(0), resp.Err)
	assert.Nil(t, resp.Stat)

	info, err := base.Stat("/repo")
	require.NoError(t, err)
	assert.True(t, info.IsDir())

	retry := s.dispatch(&VFSRequest{
		Op:   OpMkdir,
		Path: "/repo",
		Mode: 0755,
	})
	require.Equal(t, -int32(syscall.EEXIST), retry.Err)
}

func TestStatFromInfoSynthesizesStableNonZeroInode(t *testing.T) {
	info := NewFileInfo("repo", 0, os.ModeDir|0755, time.Unix(1700000000, 0), true)

	first := statFromInfo("/workspace/repo", info)
	second := statFromInfo("/workspace/repo", info)
	other := statFromInfo("/workspace/other", info)

	require.NotNil(t, first)
	assert.NotZero(t, first.Ino)
	assert.Equal(t, first.Ino, second.Ino)
	assert.NotEqual(t, first.Ino, other.Ino)
}

func TestDirentsFromEntriesPreferProviderInode(t *testing.T) {
	st := &syscall.Stat_t{Dev: 7, Ino: 4242}
	info := NewFileInfoWithSys("file.txt", 3, 0644, time.Unix(1700000000, 0), false, st)
	entries := []DirEntry{
		NewDirEntry("file.txt", false, 0644, info),
	}

	dirents := direntsFromEntries("/workspace", entries)
	require.Len(t, dirents, 1)
	assert.Equal(t, namespacedInode(uint64(st.Dev), uint64(st.Ino)), dirents[0].Ino)
}

func TestInodeFromSysNamespacesByDevice(t *testing.T) {
	sameInoDevA := inodeFromSys(&syscall.Stat_t{Dev: 1, Ino: 2})
	sameInoDevB := inodeFromSys(&syscall.Stat_t{Dev: 2, Ino: 2})
	repeated := inodeFromSys(&syscall.Stat_t{Dev: 1, Ino: 2})

	assert.NotZero(t, sameInoDevA)
	assert.NotZero(t, sameInoDevB)
	assert.NotEqual(t, sameInoDevA, sameInoDevB)
	assert.Equal(t, sameInoDevA, repeated)
}

func TestStatFromInfoIncludesOwnerUIDGID(t *testing.T) {
	info := NewFileInfo("file.txt", 0, 0644, time.Unix(1700000000, 0), false)
	info = info.WithOwner(1000, 2000)

	stat := statFromInfo("/workspace/file.txt", info)

	require.NotNil(t, stat)
	assert.Equal(t, uint32(1000), stat.UID)
	assert.Equal(t, uint32(2000), stat.GID)
}

func TestStatFromInfoDefaultsOwnerToZero(t *testing.T) {
	info := NewFileInfo("file.txt", 0, 0644, time.Unix(1700000000, 0), false)

	stat := statFromInfo("/workspace/file.txt", info)

	require.NotNil(t, stat)
	assert.Equal(t, uint32(0), stat.UID)
	assert.Equal(t, uint32(0), stat.GID)
}

type denyStatProvider struct {
	Provider
}

func (p denyStatProvider) Stat(path string) (FileInfo, error) {
	return FileInfo{}, syscall.EACCES
}
