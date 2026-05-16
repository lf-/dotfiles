package api

import (
	"os"
	"path/filepath"
	"strconv"
	"strings"

	"github.com/jingkaihe/matchlock/internal/errx"
)

// VolumeMountSpec is a parsed -v/--volume specification.
type VolumeMountSpec struct {
	HostPath  string
	GuestPath string
	Type      string
	Readonly  bool
	OwnerUID  *uint32
	OwnerGID  *uint32
}

// ParseVolumeMount parses a volume mount string in format:
// - "host:guest"
// - "host:guest:ro"
// - "host:guest:overlay"
// - "host:guest:host_fs"
// - "host:guest:host_fs,uid=1000,gid=1000"
// - "host:guest:host_fs,owner=1000:1000"
//
// This is kept for backward compatibility with existing callers that only need
// host/guest/readonly. Use ParseVolumeMountSpec for mount type aware parsing.
//
// Guest paths are resolved within workspace; absolute guest paths must already be under workspace.
func ParseVolumeMount(vol string, workspace string) (hostPath, guestPath string, readonly bool, err error) {
	spec, err := ParseVolumeMountSpec(vol, workspace)
	if err != nil {
		return "", "", false, err
	}
	return spec.HostPath, spec.GuestPath, spec.Readonly, nil
}

// ParseVolumeMountSpec parses a volume mount string and returns a typed spec.
func ParseVolumeMountSpec(vol string, workspace string) (VolumeMountSpec, error) {
	parts := strings.SplitN(vol, ":", 3)
	if len(parts) < 2 || len(parts) > 3 {
		return VolumeMountSpec{}, ErrInvalidVolumeFormat
	}

	hostPath := parts[0]
	guestPath := parts[1]

	// Resolve to absolute path
	var err error
	if !filepath.IsAbs(hostPath) {
		hostPath, err = filepath.Abs(hostPath)
		if err != nil {
			return VolumeMountSpec{}, errx.Wrap(ErrResolvePath, err)
		}
	}

	// Verify host path exists
	if _, err := os.Stat(hostPath); err != nil {
		return VolumeMountSpec{}, errx.With(ErrHostPathNotExist, ": %s", hostPath)
	}

	// Default to overlay for safer snapshot-based isolation.
	mountType := MountTypeOverlay
	readonly := false
	var ownerUID *uint32
	var ownerGID *uint32

	// Parse optional comma-separated mount options.
	if len(parts) == 3 {
		for _, rawOption := range strings.Split(parts[2], ",") {
			option := strings.TrimSpace(rawOption)
			key, value, hasValue := strings.Cut(option, "=")
			key = strings.ToLower(strings.TrimSpace(key))
			value = strings.TrimSpace(value)

			switch key {
			case MountOptionReadonlyShort, MountOptionReadonly:
				if hasValue {
					return VolumeMountSpec{}, unknownVolumeMountOption(option)
				}
				// Keep explicit read-only behavior as a host mount.
				mountType = MountTypeHostFS
				readonly = true
			case MountTypeOverlay:
				if hasValue {
					return VolumeMountSpec{}, unknownVolumeMountOption(option)
				}
				mountType = MountTypeOverlay
			case MountTypeHostFS:
				if hasValue {
					return VolumeMountSpec{}, unknownVolumeMountOption(option)
				}
				mountType = MountTypeHostFS
			case "uid":
				if !hasValue {
					return VolumeMountSpec{}, unknownVolumeMountOption(option)
				}
				uid, err := parseMountOwnerID("uid", value)
				if err != nil {
					return VolumeMountSpec{}, err
				}
				ownerUID = &uid
			case "gid":
				if !hasValue {
					return VolumeMountSpec{}, unknownVolumeMountOption(option)
				}
				gid, err := parseMountOwnerID("gid", value)
				if err != nil {
					return VolumeMountSpec{}, err
				}
				ownerGID = &gid
			case "owner":
				if !hasValue {
					return VolumeMountSpec{}, unknownVolumeMountOption(option)
				}
				uidValue, gidValue, ok := strings.Cut(value, ":")
				if !ok {
					return VolumeMountSpec{}, errx.With(ErrInvalidMountOwner, ": owner must be UID:GID")
				}
				uid, err := parseMountOwnerID("uid", uidValue)
				if err != nil {
					return VolumeMountSpec{}, err
				}
				gid, err := parseMountOwnerID("gid", gidValue)
				if err != nil {
					return VolumeMountSpec{}, err
				}
				ownerUID = &uid
				ownerGID = &gid
			default:
				return VolumeMountSpec{}, unknownVolumeMountOption(option)
			}
		}
	}
	if (ownerUID != nil || ownerGID != nil) && mountType != MountTypeHostFS {
		return VolumeMountSpec{}, errx.With(ErrInvalidMountOwner, ": uid/gid owner options are only supported for %s mounts", MountTypeHostFS)
	}

	cleanWorkspace := filepath.Clean(workspace)

	// Guest path handling:
	// - Relative guest paths are resolved from workspace
	// - Absolute guest paths must already be within workspace
	if !filepath.IsAbs(guestPath) {
		guestPath = filepath.Join(cleanWorkspace, guestPath)
	} else {
		guestPath = filepath.Clean(guestPath)
	}

	if err := ValidateGuestPathWithinWorkspace(guestPath, cleanWorkspace); err != nil {
		return VolumeMountSpec{}, err
	}

	return VolumeMountSpec{
		HostPath:  hostPath,
		GuestPath: guestPath,
		Type:      mountType,
		Readonly:  readonly,
		OwnerUID:  ownerUID,
		OwnerGID:  ownerGID,
	}, nil
}

func unknownVolumeMountOption(option string) error {
	return errx.With(ErrUnknownMountOption, " %q (use '%s', '%s', '%s', '%s', 'uid=UID', 'gid=GID', or 'owner=UID:GID')", option, MountOptionReadonlyShort, MountOptionReadonly, MountTypeOverlay, MountTypeHostFS)
}

func parseMountOwnerID(name string, value string) (uint32, error) {
	if value == "" {
		return 0, errx.With(ErrInvalidMountOwner, ": %s cannot be empty", name)
	}
	parsed, err := strconv.ParseUint(value, 10, 32)
	if err != nil {
		return 0, errx.With(ErrInvalidMountOwner, ": %s %q must be an unsigned 32-bit integer: %w", name, value, err)
	}
	return uint32(parsed), nil
}

// ValidateGuestPathWithinWorkspace checks that guestPath is absolute and inside workspace.
func ValidateGuestPathWithinWorkspace(guestPath string, workspace string) error {
	cleanGuestPath := filepath.Clean(guestPath)
	cleanWorkspace := filepath.Clean(workspace)

	if !filepath.IsAbs(cleanGuestPath) {
		return errx.With(ErrGuestPathNotAbs, ": %q", guestPath)
	}
	if !isWithinWorkspace(cleanGuestPath, cleanWorkspace) {
		return errx.With(ErrGuestPathOutside, ": %q not in %q", cleanGuestPath, cleanWorkspace)
	}
	return nil
}

// ValidateVFSMountsWithinWorkspace checks that all VFS mount paths are valid
// guest paths under the configured workspace.
func ValidateVFSMountsWithinWorkspace(mounts map[string]MountConfig, workspace string) error {
	for guestPath := range mounts {
		if err := ValidateGuestPathWithinWorkspace(guestPath, workspace); err != nil {
			return err
		}
	}
	return nil
}

// ValidateVFSMountOwnership checks ownership override invariants for VFS mounts.
func ValidateVFSMountOwnership(mounts map[string]MountConfig) error {
	for guestPath, mount := range mounts {
		if (mount.OwnerUID != nil || mount.OwnerGID != nil) && mount.Type != MountTypeHostFS {
			return errx.With(ErrInvalidConfig, ": %s: owner_uid/owner_gid are only supported for host_fs mounts", guestPath)
		}
	}
	return nil
}

func isWithinWorkspace(path string, workspace string) bool {
	path = filepath.Clean(path)
	workspace = filepath.Clean(workspace)
	if workspace == "/" {
		return filepath.IsAbs(path)
	}
	return path == workspace || strings.HasPrefix(path, workspace+"/")
}
