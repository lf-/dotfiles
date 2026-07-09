package runner

import (
	"context"
	"fmt"
	"io"
	"strings"

	"github.com/jingkaihe/matchlock/pkg/sdk"
)

// Guest identity that lid drops into before running the agent command.
//
// Claude Code's --dangerously-skip-permissions refuses to run as root, so lid
// runs the agent as a non-root user. We target uid:gid 1000:1000 because that
// is both a sensible unprivileged default and, conveniently, the uid of the
// pre-existing `node` user in node-based images (so we reuse it rather than
// creating a duplicate). A real /etc/passwd entry is required: Node's
// os.userInfo() throws for a uid with no passwd row, which would break claude.
const (
	guestUID  uint32 = 1000
	guestGID  uint32 = 1000
	guestName        = "lid"
	// guestHome is used only when lid has to create the user (an image without a
	// uid-1000 user). When an existing uid-1000 user is reused, its own home is
	// used instead (resolved at bootstrap).
	guestHome = "/home/lid"
)

// guestIdentity is the resolved non-root identity for a single run.
type guestIdentity struct {
	UID, GID uint32
	// User is the exec "user" spec ("1000:1000"), passed to every agent exec.
	User string
	// Home is the resolved home directory: the reused user's home (e.g.
	// /home/node) or guestHome when lid created the user.
	Home string
}

// homeMarker prefixes the line ensureGuestUser's bootstrap script prints so the
// runner can read back the resolved home directory.
const homeMarker = "LID_GUEST_HOME="

// ensureGuestUser makes uid:gid 1000:1000 usable inside the freshly launched
// guest — reusing an existing uid-1000 user or creating one, wiring up
// best-effort passwordless sudo — and returns the resolved identity. It runs as
// root (bootstrap execs carry no user), which is required to create users, chown
// homes, and write sudoers.
func ensureGuestUser(ctx context.Context, client *sdk.Client, logw io.Writer) (guestIdentity, error) {
	id := guestIdentity{
		UID:  guestUID,
		GID:  guestGID,
		User: fmt.Sprintf("%d:%d", guestUID, guestGID),
		Home: guestHome,
	}

	res, err := client.Exec(ctx, guestUserScript())
	if err != nil {
		return id, fmt.Errorf("ensure guest user: %w", err)
	}
	if res.ExitCode != 0 {
		fmt.Fprintf(logw, "lid: warning: guest user setup exited %d: %s\n", res.ExitCode, strings.TrimSpace(res.Stderr))
	}

	if home := parseGuestHome(res.Stdout); home != "" {
		id.Home = home
	} else {
		fmt.Fprintf(logw, "lid: warning: could not resolve guest home; defaulting to %s\n", guestHome)
	}
	return id, nil
}

// parseGuestHome extracts the resolved home directory from the bootstrap
// script's stdout (the line beginning with homeMarker).
func parseGuestHome(stdout string) string {
	for line := range strings.SplitSeq(stdout, "\n") {
		line = strings.TrimSpace(line)
		if rest, ok := strings.CutPrefix(line, homeMarker); ok {
			return strings.TrimSpace(rest)
		}
	}
	return ""
}

// guestUserScript returns an idempotent POSIX-sh script that ensures a non-root
// uid-1000 user exists (reusing an existing one, else creating it across
// useradd/adduser/passwd-append), grants it best-effort passwordless sudo, and
// prints "LID_GUEST_HOME=<home>" so the runner learns the resolved home.
//
// It deliberately avoids `set -e`: every step is best-effort and the final
// marker line is what the runner depends on.
func guestUserScript() string {
	return `uid=` + fmt.Sprint(guestUID) + `
gid=` + fmt.Sprint(guestGID) + `
name=` + guestName + `
home=` + guestHome + `

# Reuse an existing uid-1000 user if the image ships one (e.g. node's "node").
existing=$(getent passwd "$uid" 2>/dev/null || grep -E "^[^:]*:[^:]*:$uid:" /etc/passwd 2>/dev/null | head -n1)
if [ -n "$existing" ]; then
  name=$(printf '%s' "$existing" | cut -d: -f1)
  h=$(printf '%s' "$existing" | cut -d: -f6)
  [ -n "$h" ] && home=$h
else
  if command -v useradd >/dev/null 2>&1; then
    useradd -u "$uid" -m -d "$home" -s /bin/sh "$name" >/dev/null 2>&1
  elif command -v adduser >/dev/null 2>&1; then
    adduser -u "$uid" -h "$home" -s /bin/sh -D "$name" >/dev/null 2>&1
  fi
  # Ensure passwd/group entries exist even if useradd/adduser was absent or failed.
  if ! getent passwd "$uid" >/dev/null 2>&1 && ! grep -qE "^[^:]*:[^:]*:$uid:" /etc/passwd 2>/dev/null; then
    echo "$name:x:$uid:$gid:lid agent:$home:/bin/sh" >> /etc/passwd
    grep -qE "^[^:]*:[^:]*:$gid:" /etc/group 2>/dev/null || echo "$name:x:$gid:" >> /etc/group
  fi
  mkdir -p "$home"
  chown "$uid:$gid" "$home" 2>/dev/null
fi

# Best-effort passwordless sudo, keyed by uid so it works whatever the name is.
if command -v sudo >/dev/null 2>&1; then
  mkdir -p /etc/sudoers.d 2>/dev/null
  if printf '#%s ALL=(ALL) NOPASSWD:ALL\n' "$uid" > /etc/sudoers.d/lid 2>/dev/null; then
    chmod 0440 /etc/sudoers.d/lid 2>/dev/null
  fi
fi

printf '` + homeMarker + `%s\n' "$home"
`
}
