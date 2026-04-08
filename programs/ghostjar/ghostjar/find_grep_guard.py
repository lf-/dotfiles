"""Claude Code PreToolUse hook: discourage `find` + `grep` and broad find roots.

Reads the hook payload on stdin and blocks three patterns:

1. `find` paired with `grep` (piped or via `-exec grep`) — prefer ripgrep.
2. `find /nix/store` (the store root, not a specific derivation) — the store
   has millions of files; scanning it takes forever and yields noise since
   paths are content-addressed hashes.
3. `find /` (the filesystem root) — scanning the entire filesystem takes an
   extremely long time and floods output with irrelevant results.

An explicit `I_REALLY_WANT_FIND=1` prefix on the command overrides all guards.

The hook is deliberately fail-open: any parse error or unexpected input
exits 0 with no output so it can never wedge a legitimate Bash call.
"""

import json
import re
import sys

OVERRIDE = "I_REALLY_WANT_FIND=1"

# `find` invoked as the head of a pipeline segment (start of command, or
# right after a shell separator), optionally path-qualified (/usr/bin/find).
FIND_CMD = re.compile(r"(?:^|[\n;&|(])\s*(?:\S*/)?find\b")

# A pipe feeding grep/egrep, directly or through `xargs [flags] grep`.
PIPE_TO_GREP = re.compile(r"\|\s*(?:xargs\s+(?:-\S+\s+)*)?(?:\S*/)?e?grep\b")

# find's own `-exec`/`-execdir` invoking grep directly as the child command.
EXEC_GREP = re.compile(r"-exec(?:dir)?\s+(?:\S*/)?e?grep\b")

# /nix/store as a path root (not a specific derivation like /nix/store/abc123-…).
# Matches /nix/store or /nix/store/ when followed by whitespace, a shell
# meta-character, or end-of-string — but NOT when followed by another path
# component (i.e. /nix/store/something).
NIX_STORE_ROOT = re.compile(r"/nix/store/?(?=[\s;&|]|$)")

# `find /` — bare filesystem root as the search path.  Matches `find` (possibly
# path-qualified) followed by a lone `/`, i.e. not a longer path like /tmp or
# /etc.  The lookahead ensures the slash is not the start of a subdirectory.
FS_ROOT = re.compile(r"\bfind\s+/(?=[\s;&|]|$)")

REASON_FIND_GREP = (
    "Avoid pairing `find` with `grep` (piped or via `-exec grep`). Prefer "
    "ripgrep: `rg PATTERN` to search file contents, or `rg --files | rg NAME` "
    "/ `rg --files -g 'GLOB'` to find files by name — it's faster and respects "
    ".gitignore. If you genuinely need a find predicate rg lacks "
    "(-mtime/-size/-exec, etc.), re-run the exact command prefixed with "
    f"`{OVERRIDE} ` to override this guard."
)

REASON_NIX_STORE = (
    "Avoid running `find /nix/store` — the Nix store contains millions of "
    "files across every installed derivation; a bare find will run for a very "
    "long time and produce results that aren't actionable (paths are "
    "content-addressed hashes, not human-readable names). If you need to "
    "locate a specific store path, use `nix-store --query`, `nix eval`, or "
    "`nix path-info` instead. To override, prefix the command with "
    f"`{OVERRIDE} `."
)

REASON_FS_ROOT = (
    "Avoid running `find /` — scanning from the filesystem root visits every "
    "file on the system, which takes an extremely long time and floods output "
    "with irrelevant results. Use a more specific starting path instead "
    "(e.g. `find ~/project`, `find /etc`, `find /var/log`). To override, "
    f"prefix the command with `{OVERRIDE} `."
)


def check(command: str) -> str | None:
    """Return a denial reason string, or None if the command is allowed."""
    if OVERRIDE in command:
        return None
    if not FIND_CMD.search(command):
        return None
    if NIX_STORE_ROOT.search(command):
        return REASON_NIX_STORE
    if FS_ROOT.search(command):
        return REASON_FS_ROOT
    if PIPE_TO_GREP.search(command) or EXEC_GREP.search(command):
        return REASON_FIND_GREP
    return None


def main() -> None:
    try:
        payload = json.load(sys.stdin)
        command = payload.get("tool_input", {}).get("command", "")
    except (json.JSONDecodeError, AttributeError, ValueError):
        return  # fail open

    if not isinstance(command, str):
        return

    reason = check(command)
    if reason is None:
        return

    json.dump(
        {
            "hookSpecificOutput": {
                "hookEventName": "PreToolUse",
                "permissionDecision": "deny",
                "permissionDecisionReason": reason,
            }
        },
        sys.stdout,
    )


if __name__ == "__main__":
    main()
