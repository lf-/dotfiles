package runner

import (
	"context"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"strings"
)

// claudePersistedPaths are the ~/.claude sub-paths that are redirected into
// the per-project host store when persist_claude is set. lid-managed files
// (settings.json, .config.json, .credentials.json) and ~/.claude.json are
// intentionally excluded — they are regenerated each run and must never reach
// the host store.
var claudePersistedPaths = []string{
	"projects",
	"todos",
	"shell-snapshots",
	"statsig",
	"history.jsonl",
}

// claudePersistHostStore returns the absolute host path for the per-project
// Claude persist store. The key is derived deterministically from the host cwd
// using the same slug scheme Claude itself uses for project directories
// (replace path separators with '-', strip leading '-'). Respects
// $XDG_DATA_HOME; falls back to ~/.local/share.
func claudePersistHostStore(cwd, home string) (string, error) {
	abs := cwd
	if !filepath.IsAbs(abs) {
		return "", fmt.Errorf("cwd %q is not absolute", cwd)
	}

	// Slug: replace each path separator with '-', strip the leading '-'.
	slug := strings.ReplaceAll(abs, string(filepath.Separator), "-")
	slug = strings.TrimPrefix(slug, "-")

	dataHome := os.Getenv("XDG_DATA_HOME")
	if dataHome == "" {
		dataHome = filepath.Join(home, ".local", "share")
	}
	return filepath.Join(dataHome, "lid", "persist", slug, "claude"), nil
}

// wireClaudePersist redirects Claude's data directories (projects, todos, etc.)
// into the per-project host persist store mounted at guestPersistPath, by
// replacing each ~/.claude/<name> with a symlink into the mount. It runs after
// bootstrapClaudeOAuth, so ~/.claude already exists as a real directory
// containing lid's managed config files — those stay as real files and are
// never touched by this function.
//
// For each persisted path, the function:
//  1. Creates the path inside the mount (mkdir -p for dirs, touch for files).
//  2. Removes any existing ~/.claude/<name> left by the bootstrap or the image.
//  3. Symlinks ~/.claude/<name> -> <guestPersistPath>/<name>.
//
// All ops are batched into one sh -c invocation to minimize round-trips.
// chown failures are non-fatal (the mount is already owner-remapped by
// matchlock; the real-dir ~/.claude is chown'd by bootstrapClaudeOAuth).
func wireClaudePersist(ctx context.Context, client seedClient, guestPersistPath string, id guestIdentity, logw io.Writer) error {
	home := id.Home
	claudeDir := home + "/.claude"

	// Build a batched shell command: for each persisted path, ensure it exists
	// in the mount, remove the real copy (if any), and symlink it in.
	var cmds []string

	// Ensure ~/.claude exists (idempotent; covers the api-key path where no
	// OAuth bootstrap ran and Claude hasn't created it yet).
	cmds = append(cmds, "mkdir -p "+quoteArg(claudeDir))

	for _, name := range claudePersistedPaths {
		mountTarget := guestPersistPath + "/" + name
		guestLink := claudeDir + "/" + name

		if strings.HasSuffix(name, ".jsonl") {
			// Regular file: ensure it exists in the mount.
			cmds = append(cmds,
				"mkdir -p "+quoteArg(guestPersistPath),
				"[ -f "+quoteArg(mountTarget)+" ] || touch "+quoteArg(mountTarget),
			)
		} else {
			// Directory: create it inside the mount.
			cmds = append(cmds, "mkdir -p "+quoteArg(mountTarget))
		}
		// Remove any real path the bootstrap or image left, then symlink.
		cmds = append(cmds,
			"rm -rf "+quoteArg(guestLink),
			"ln -sfn "+quoteArg(mountTarget)+" "+quoteArg(guestLink),
		)
	}

	script := strings.Join(cmds, " && ")
	res, err := client.Exec(ctx, script)
	if err != nil {
		return fmt.Errorf("wire claude persist: %w", err)
	}
	if res.ExitCode != 0 {
		return fmt.Errorf("wire claude persist: script exited %d: stdout=%s stderr=%s",
			res.ExitCode, res.Stdout, res.Stderr)
	}

	// Chown the symlinks and the parent ~/.claude to the agent. Best-effort:
	// the mount is already owner-remapped by matchlock, and ~/.claude was
	// already chown'd by bootstrapClaudeOAuth.
	chown := fmt.Sprintf("chown %d:%d %s && chown -h %d:%d",
		id.UID, id.GID, quoteArg(claudeDir),
		id.UID, id.GID)
	// Append each symlink to the chown -h command.
	var chownLinks []string
	for _, name := range claudePersistedPaths {
		chownLinks = append(chownLinks, quoteArg(claudeDir+"/"+name))
	}
	chown += " " + strings.Join(chownLinks, " ")

	chownRes, chownErr := client.Exec(ctx, chown)
	if chownErr != nil {
		fmt.Fprintf(logw, "lid: warning: claude persist: chown: %v\n", chownErr)
	} else if chownRes.ExitCode != 0 {
		fmt.Fprintf(logw, "lid: warning: claude persist: chown exited %d\n", chownRes.ExitCode)
	}

	return nil
}
