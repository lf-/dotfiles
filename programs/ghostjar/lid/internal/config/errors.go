package config

import "errors"

// Sentinel errors. LoadFile wraps builtin-argument failures such that both
// ErrEval and the specific sentinel match via errors.Is (see SPEC.md §Errors).
var (
	ErrEval             = errors.New("config: starlark evaluation failed")
	ErrDuplicateProfile = errors.New("config: duplicate profile name")
	ErrUnknownProfile   = errors.New("config: unknown profile")
	ErrAmbiguousProfile = errors.New("config: ambiguous profile selection")
	ErrInvalidHost      = errors.New("config: invalid host")
	ErrInvalidSize      = errors.New("config: invalid size")
	ErrInvalidCPU       = errors.New("config: invalid cpu count")
	ErrInvalidTimeout   = errors.New("config: invalid timeout")
	ErrInvalidWorkspace = errors.New("config: invalid workspace path")
	ErrInvalidMount     = errors.New("config: invalid mount_cwd mode")
	ErrSecretName       = errors.New("config: invalid secret name")
	ErrSecretSource     = errors.New("config: secret needs exactly one source")
	ErrSecretHosts      = errors.New("config: secret needs at least one host")
	ErrEmptyAllow       = errors.New("config: network allow list empty (omit network for no network)")
	ErrAllowAllConflict = errors.New("config: allow_all conflicts with non-empty allow")
	ErrNoNetworkSecrets = errors.New("config: secrets require a network block")
	ErrBadCommand       = errors.New("config: command must be a non-empty list of strings")
	ErrKeychainSource   = errors.New("config: invalid keychain credential source")
	ErrGitHubApp        = errors.New("config: invalid github_app configuration")
)
