package runner

import (
	"context"
	"fmt"
	"io"
	"io/fs"
	"os"
	"path/filepath"
	"strings"

	"github.com/jingkaihe/matchlock/pkg/sdk"

	"jade.fyi/ghostjar/lid/internal/config"
)

// seedClient is the subset of *sdk.Client that seeding needs (both are
// full-root, unsandboxed bootstrap primitives). Kept as an interface for testing.
type seedClient interface {
	Exec(ctx context.Context, command string) (*sdk.ExecResult, error)
	WriteFileMode(ctx context.Context, path string, content []byte, mode uint32) error
}

// resolveHostPath turns a config-supplied host path into an absolute host path:
// a leading "~"/"~/" expands to home, and relative paths resolve against cwd.
func resolveHostPath(raw, cwd, home string) string {
	switch {
	case raw == "~":
		return home
	case strings.HasPrefix(raw, "~/"):
		return filepath.Join(home, raw[2:])
	case filepath.IsAbs(raw):
		return filepath.Clean(raw)
	default:
		return filepath.Join(cwd, raw)
	}
}

// seedGuestFiles copies each profile seed (a host file/dir) into its guest path
// at boot, then chowns it to the agent. Claude reads config from $HOME, which is
// outside the workspace and unreachable by a VFS mount — so we copy it in.
//
// It uses the unsandboxed bootstrap primitives (WriteFileMode + client.Exec for
// mkdir/chown, both full-root); a tar-pipe over ExecPipe would hit the workload
// sandbox (dropped CAP_DAC_OVERRIDE/CAP_CHOWN). Snapshot semantics: in-guest
// edits are not written back to the host.
func seedGuestFiles(ctx context.Context, client seedClient, p *config.Profile, id guestIdentity, cwd, home string, logw io.Writer) error {
	for _, s := range p.Seeds {
		src := resolveHostPath(s.HostPath, cwd, home)
		info, err := os.Stat(src)
		if err != nil {
			return fmt.Errorf("seed %q: %w", s.HostPath, err)
		}

		if info.IsDir() {
			if err := seedDir(ctx, client, src, s.GuestPath, logw); err != nil {
				return fmt.Errorf("seed %q: %w", s.HostPath, err)
			}
		} else {
			if err := seedFile(ctx, client, src, s.GuestPath, info.Mode().Perm()); err != nil {
				return fmt.Errorf("seed %q: %w", s.HostPath, err)
			}
		}

		// Hand ownership to the non-root agent.
		chown := fmt.Sprintf("chown -R %d:%d %s", id.UID, id.GID, quoteArg(s.GuestPath))
		res, err := client.Exec(ctx, chown)
		if err != nil {
			return fmt.Errorf("seed %q: chown: %w", s.HostPath, err)
		}
		if res.ExitCode != 0 {
			fmt.Fprintf(logw, "lid: warning: seed %q: chown exited %d\n", s.HostPath, res.ExitCode)
		}
	}
	return nil
}

// seedFile writes a single host file to a guest path (creating parent dirs).
func seedFile(ctx context.Context, client seedClient, hostFile, guestPath string, mode fs.FileMode) error {
	content, err := os.ReadFile(hostFile)
	if err != nil {
		return err
	}
	if dir := filepath.Dir(guestPath); dir != "." && dir != "/" {
		if _, err := client.Exec(ctx, "mkdir -p "+quoteArg(dir)); err != nil {
			return err
		}
	}
	return client.WriteFileMode(ctx, guestPath, content, uint32(mode))
}

// seedDir walks a host directory and recreates it under guestDir in the guest:
// mkdir for directories, WriteFileMode for regular files. Symlinks and other
// special files are skipped (with a note to the caller via the returned error
// only on hard failures; skips are silent).
func seedDir(ctx context.Context, client seedClient, hostDir, guestDir string, logw io.Writer) error {
	return filepath.WalkDir(hostDir, func(hostPath string, d fs.DirEntry, err error) error {
		if err != nil {
			return err
		}
		rel, err := filepath.Rel(hostDir, hostPath)
		if err != nil {
			return err
		}
		guestPath := guestDir
		if rel != "." {
			guestPath = guestDir + "/" + filepath.ToSlash(rel)
		}

		switch {
		case d.IsDir():
			res, err := client.Exec(ctx, "mkdir -p "+quoteArg(guestPath))
			if err != nil {
				return err
			}
			if res.ExitCode != 0 {
				return fmt.Errorf("mkdir %s exited %d", guestPath, res.ExitCode)
			}
			return nil
		case d.Type().IsRegular():
			info, err := d.Info()
			if err != nil {
				return err
			}
			content, err := os.ReadFile(hostPath)
			if err != nil {
				return err
			}
			return client.WriteFileMode(ctx, guestPath, content, uint32(info.Mode().Perm()))
		default:
			fmt.Fprintf(logw, "lid: warning: seed: skipping non-regular file %s\n", hostPath)
			return nil
		}
	})
}
