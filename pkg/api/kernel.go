package api

// KernelConfig configures which guest kernel Matchlock should boot.
//
// Supported ref forms are:
// - empty: use Matchlock's default pinned kernel
// - file:///absolute/path: use a local kernel binary
// - OCI image reference: pull/cache the kernel from a registry
type KernelConfig struct {
	Ref string `json:"ref,omitempty"`
}
