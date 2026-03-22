package sandbox

import (
	"context"
	"os"
	"path/filepath"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"

	"github.com/jingkaihe/matchlock/pkg/api"
	"github.com/jingkaihe/matchlock/pkg/kernel"
	"github.com/jingkaihe/matchlock/pkg/lifecycle"
)

func TestResolveKernelForConfigPrefersOptionsOverride(t *testing.T) {
	store := lifecycle.NewStore(t.TempDir())
	require.NoError(t, store.Init("vm-test", "backend", t.TempDir()))

	path, err := resolveKernelForConfig(context.Background(), &api.Config{}, &Options{KernelPath: "/tmp/kernel"}, store)
	require.NoError(t, err)
	assert.Equal(t, "/tmp/kernel", path)

	rec, err := store.Load()
	require.NoError(t, err)
	assert.Equal(t, "internal:options", rec.Resources.KernelRef)
	assert.Equal(t, "/tmp/kernel", rec.Resources.KernelPath)
}

func TestResolveKernelForConfigUsesExplicitKernelRef(t *testing.T) {
	home := t.TempDir()
	t.Setenv("HOME", home)
	localKernel := filepath.Join(t.TempDir(), "vmlinux")
	require.NoError(t, os.WriteFile(localKernel, []byte("kernel"), 0644))

	store := lifecycle.NewStore(t.TempDir())
	require.NoError(t, store.Init("vm-test", "backend", t.TempDir()))

	path, err := resolveKernelForConfig(context.Background(), &api.Config{
		Kernel: &api.KernelConfig{Ref: "file://" + localKernel},
	}, &Options{}, store)
	require.NoError(t, err)
	assert.Equal(t, localKernel, path)

	rec, err := store.Load()
	require.NoError(t, err)
	assert.Equal(t, "file://"+localKernel, rec.Resources.KernelRef)
	assert.Equal(t, localKernel, rec.Resources.KernelPath)
}

func TestDefaultKernelRefForRecordUsesDefaultImageReference(t *testing.T) {
	store := lifecycle.NewStore(t.TempDir())
	require.NoError(t, store.Init("vm-test", "backend", t.TempDir()))

	rec, err := store.Load()
	require.NoError(t, err)
	assert.Empty(t, rec.Resources.KernelRef)
	assert.Empty(t, rec.Resources.KernelPath)

	recordKernelResolution(store, defaultKernelRefForRecord(), "/tmp/kernel")

	rec, err = store.Load()
	require.NoError(t, err)
	assert.Equal(t, kernel.ImageReference(""), rec.Resources.KernelRef)
	assert.Equal(t, "/tmp/kernel", rec.Resources.KernelPath)
}
