"""Claude Code PreToolUse hook: discourage `find` + `grep`.

Reads the hook payload on stdin. When a Bash command pairs `find` with
`grep` — whether piped (`find … | grep`, `find … | xargs grep`) or via
`-exec grep` — it denies the call and tells Claude to reach for ripgrep
instead. `-exec grep` matters especially: the harness can't fold it into a
clean permission rule, so it tends to prompt for no good reason. An explicit
`I_REALLY_WANT_FIND=1` prefix on the command overrides and lets it through.

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

REASON = (
    "Avoid pairing `find` with `grep` (piped or via `-exec grep`). Prefer "
    "ripgrep: `rg PATTERN` to search file contents, or `rg --files | rg NAME` "
    "/ `rg --files -g 'GLOB'` to find files by name — it's faster and respects "
    ".gitignore. If you genuinely need a find predicate rg lacks "
    "(-mtime/-size/-exec, etc.), re-run the exact command prefixed with "
    f"`{OVERRIDE} ` to override this guard."
)


def is_find_grep(command: str) -> bool:
    """True when `command` runs find together with grep and isn't overridden."""
    if OVERRIDE in command:
        return False
    if not FIND_CMD.search(command):
        return False
    return bool(PIPE_TO_GREP.search(command) or EXEC_GREP.search(command))


def main() -> None:
    try:
        payload = json.load(sys.stdin)
        command = payload.get("tool_input", {}).get("command", "")
    except (json.JSONDecodeError, AttributeError, ValueError):
        return  # fail open

    if not isinstance(command, str) or not is_find_grep(command):
        return

    json.dump(
        {
            "hookSpecificOutput": {
                "hookEventName": "PreToolUse",
                "permissionDecision": "deny",
                "permissionDecisionReason": REASON,
            }
        },
        sys.stdout,
    )


if __name__ == "__main__":
    main()
