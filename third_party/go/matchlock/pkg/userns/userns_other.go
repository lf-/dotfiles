//go:build !linux

// Package userns implements an unprivileged execution gate using
// Linux user namespaces and pasta for network translation.
package userns

import "fmt"

// IsInner always returns false on non-Linux platforms.
func IsInner() bool { return false }

// WaitForNetwork is a no-op on non-Linux platforms.
func WaitForNetwork() error { return nil }

// Enter always returns an error on non-Linux platforms.
func Enter(detach bool, mtu int) (int, error) {
	return 0, fmt.Errorf("--userns is only supported on Linux")
}
