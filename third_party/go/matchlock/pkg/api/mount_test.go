package api

import (
	"os"
	"path/filepath"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestParseVolumeMountRelativeGuestPath(t *testing.T) {
	hostDir := t.TempDir()
	workspace := "/workspace"

	gotHost, gotGuest, readonly, err := ParseVolumeMount(hostDir+":subdir", workspace)
	require.NoError(t, err)

	assert.Equal(t, hostDir, gotHost, "host path")
	assert.Equal(t, "/workspace/subdir", gotGuest, "guest path")
	assert.False(t, readonly, "readonly")
}

func TestParseVolumeMountSpecOverlayOption(t *testing.T) {
	hostDir := t.TempDir()
	workspace := "/workspace"

	spec, err := ParseVolumeMountSpec(hostDir+":subdir:overlay", workspace)
	require.NoError(t, err)
	assert.Equal(t, hostDir, spec.HostPath)
	assert.Equal(t, "/workspace/subdir", spec.GuestPath)
	assert.Equal(t, MountTypeOverlay, spec.Type)
	assert.False(t, spec.Readonly)
}

func TestParseVolumeMountSpecDefaultIsOverlay(t *testing.T) {
	hostDir := t.TempDir()
	workspace := "/workspace"

	spec, err := ParseVolumeMountSpec(hostDir+":subdir", workspace)
	require.NoError(t, err)
	assert.Equal(t, MountTypeOverlay, spec.Type)
	assert.False(t, spec.Readonly)
}

func TestParseVolumeMountSpecHostFSOption(t *testing.T) {
	hostDir := t.TempDir()
	workspace := "/workspace"

	spec, err := ParseVolumeMountSpec(hostDir+":subdir:"+MountTypeHostFS, workspace)
	require.NoError(t, err)
	assert.Equal(t, MountTypeHostFS, spec.Type)
	assert.False(t, spec.Readonly)
}

func TestParseVolumeMountSpecReadonlyOptionStaysHostFS(t *testing.T) {
	hostDir := t.TempDir()
	workspace := "/workspace"

	spec, err := ParseVolumeMountSpec(hostDir+":subdir:"+MountOptionReadonlyShort, workspace)
	require.NoError(t, err)
	assert.Equal(t, MountTypeHostFS, spec.Type)
	assert.True(t, spec.Readonly)
}

func TestParseVolumeMountSpecHostFSOwnerOptions(t *testing.T) {
	hostDir := t.TempDir()
	workspace := "/workspace"

	spec, err := ParseVolumeMountSpec(hostDir+":subdir:"+MountTypeHostFS+",uid=1000,gid=2000", workspace)
	require.NoError(t, err)
	assert.Equal(t, MountTypeHostFS, spec.Type)
	require.NotNil(t, spec.OwnerUID)
	require.NotNil(t, spec.OwnerGID)
	assert.Equal(t, uint32(1000), *spec.OwnerUID)
	assert.Equal(t, uint32(2000), *spec.OwnerGID)
}

func TestParseVolumeMountSpecOwnerOption(t *testing.T) {
	hostDir := t.TempDir()
	workspace := "/workspace"

	spec, err := ParseVolumeMountSpec(hostDir+":subdir:"+MountTypeHostFS+",owner=1001:2001", workspace)
	require.NoError(t, err)
	assert.Equal(t, MountTypeHostFS, spec.Type)
	require.NotNil(t, spec.OwnerUID)
	require.NotNil(t, spec.OwnerGID)
	assert.Equal(t, uint32(1001), *spec.OwnerUID)
	assert.Equal(t, uint32(2001), *spec.OwnerGID)
}

func TestParseVolumeMountSpecReadonlyOwnerOptions(t *testing.T) {
	hostDir := t.TempDir()
	workspace := "/workspace"

	spec, err := ParseVolumeMountSpec(hostDir+":subdir:"+MountOptionReadonlyShort+",uid=1000,gid=2000", workspace)
	require.NoError(t, err)
	assert.Equal(t, MountTypeHostFS, spec.Type)
	assert.True(t, spec.Readonly)
	require.NotNil(t, spec.OwnerUID)
	require.NotNil(t, spec.OwnerGID)
	assert.Equal(t, uint32(1000), *spec.OwnerUID)
	assert.Equal(t, uint32(2000), *spec.OwnerGID)
}

func TestParseVolumeMountSpecRejectsOwnerOptionsOnOverlay(t *testing.T) {
	hostDir := t.TempDir()
	workspace := "/workspace"

	_, err := ParseVolumeMountSpec(hostDir+":subdir:overlay,uid=1000", workspace)
	require.Error(t, err)
	assert.ErrorIs(t, err, ErrInvalidMountOwner)
	assert.Contains(t, err.Error(), "host_fs")
}

func TestParseVolumeMountSpecRejectsOwnerOptionsWithoutHostFS(t *testing.T) {
	hostDir := t.TempDir()
	workspace := "/workspace"

	_, err := ParseVolumeMountSpec(hostDir+":subdir:uid=1000,gid=2000", workspace)
	require.Error(t, err)
	assert.ErrorIs(t, err, ErrInvalidMountOwner)
	assert.Contains(t, err.Error(), "host_fs")
}

func TestParseVolumeMountSpecRejectsInvalidOwnerID(t *testing.T) {
	hostDir := t.TempDir()
	workspace := "/workspace"

	_, err := ParseVolumeMountSpec(hostDir+":subdir:"+MountTypeHostFS+",uid=-1", workspace)
	require.Error(t, err)
	assert.ErrorIs(t, err, ErrInvalidMountOwner)
	assert.Contains(t, err.Error(), "uid")
}

func TestParseVolumeMountSpecRejectsMalformedOwnerOption(t *testing.T) {
	hostDir := t.TempDir()
	workspace := "/workspace"

	_, err := ParseVolumeMountSpec(hostDir+":subdir:"+MountTypeHostFS+",owner=1000", workspace)
	require.Error(t, err)
	assert.ErrorIs(t, err, ErrInvalidMountOwner)
	assert.Contains(t, err.Error(), "UID:GID")
}

func TestParseVolumeMountSpecSingleFileDefaultsToOverlay(t *testing.T) {
	hostDir := t.TempDir()
	hostFile := filepath.Join(hostDir, "file.txt")
	require.NoError(t, os.WriteFile(hostFile, []byte("x"), 0644))
	workspace := "/workspace"

	spec, err := ParseVolumeMountSpec(hostFile+":subdir", workspace)
	require.NoError(t, err)
	assert.Equal(t, MountTypeOverlay, spec.Type)
	assert.False(t, spec.Readonly)
}

func TestParseVolumeMountSpecUnknownOption(t *testing.T) {
	hostDir := t.TempDir()
	workspace := "/workspace"

	_, err := ParseVolumeMountSpec(hostDir+":subdir:wat", workspace)
	require.Error(t, err)
	require.Contains(t, err.Error(), "unknown option")
	require.Contains(t, err.Error(), "overlay")
}

func TestParseVolumeMountAbsoluteGuestPathWithinWorkspace(t *testing.T) {
	hostDir := t.TempDir()
	workspace := "/workspace"

	_, gotGuest, _, err := ParseVolumeMount(hostDir+":/workspace/data", workspace)
	require.NoError(t, err)
	assert.Equal(t, "/workspace/data", gotGuest, "guest path")
}

func TestParseVolumeMountAbsoluteGuestPathOutsideWorkspace(t *testing.T) {
	hostDir := t.TempDir()
	workspace := "/workspace/project"

	_, _, _, err := ParseVolumeMount(hostDir+":/workspace", workspace)
	require.Error(t, err)
	require.Contains(t, err.Error(), "must be within workspace")
}

func TestParseVolumeMountRelativePathCannotEscapeWorkspace(t *testing.T) {
	hostDir := t.TempDir()
	workspace := "/workspace/project"

	_, _, _, err := ParseVolumeMount(hostDir+":../escape", workspace)
	require.Error(t, err)
	require.Contains(t, err.Error(), "must be within workspace")
}

func TestParseVolumeMountWorkspacePrefixBoundary(t *testing.T) {
	hostDir := t.TempDir()
	workspace := "/workspace"

	_, _, _, err := ParseVolumeMount(hostDir+":/workspace2/data", workspace)
	require.Error(t, err)
	require.Contains(t, err.Error(), "must be within workspace")
}

func TestParseVolumeMountWorkspaceRootAllowsAbsolutePaths(t *testing.T) {
	hostDir := t.TempDir()
	workspace := "/"

	_, gotGuest, _, err := ParseVolumeMount(hostDir+":/etc/data", workspace)
	require.NoError(t, err)
	assert.Equal(t, filepath.Clean("/etc/data"), gotGuest, "guest path")
}

func TestValidateVFSMountsWithinWorkspaceAllowsDescendants(t *testing.T) {
	err := ValidateVFSMountsWithinWorkspace(
		map[string]MountConfig{
			"/workspace/project/data": {Type: MountTypeMemory},
			"/workspace/project/logs": {Type: MountTypeMemory},
		},
		"/workspace/project",
	)
	require.NoError(t, err)
}

func TestValidateVFSMountsWithinWorkspaceRejectsOutside(t *testing.T) {
	err := ValidateVFSMountsWithinWorkspace(
		map[string]MountConfig{
			"/workspace": {Type: MountTypeMemory},
		},
		"/workspace/project",
	)
	require.Error(t, err)
	require.Contains(t, err.Error(), "must be within workspace")
}

func TestValidateVFSMountsWithinWorkspaceRejectsRelative(t *testing.T) {
	err := ValidateVFSMountsWithinWorkspace(
		map[string]MountConfig{
			"project/data": {Type: MountTypeMemory},
		},
		"/workspace",
	)
	require.Error(t, err)
	require.Contains(t, err.Error(), "must be absolute")
}
