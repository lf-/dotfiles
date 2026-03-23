package main

import (
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestKernelRmRejectsAllWithVersion(t *testing.T) {
	cmd := kernelRmCmd
	cmd.Flags().Set("all", "true")
	t.Cleanup(func() {
		cmd.Flags().Set("all", "false")
	})

	err := runKernelRm(cmd, []string{"6.1.137"})
	require.Error(t, err)
	assert.Contains(t, err.Error(), "--all cannot be combined")
}

func TestKernelRmRejectsRefWithVersion(t *testing.T) {
	cmd := kernelRmCmd
	cmd.Flags().Set("ref", "ghcr.io/example/kernel:6.1.137")
	t.Cleanup(func() {
		cmd.Flags().Set("ref", "")
	})

	err := runKernelRm(cmd, []string{"6.1.137"})
	require.Error(t, err)
	assert.Contains(t, err.Error(), "--ref cannot be combined")
}
