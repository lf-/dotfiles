"""Claude Code PreToolUse hook: stop bots doing a few actively-stupid things.

Rules, checked in order, each yielding a denial reason or nothing:

1. `find /nix/store` — the store root holds millions of content-addressed
   paths; scanning it is slow and the results aren't human-actionable.
2. `find /` — scanning from the filesystem root.
3. `find` piped into `grep` (or `-exec grep`) — ripgrep does this better.
4. `rg` given a bundled short-flag cluster containing `r` (`-rn`, `-rl`, …).
   ripgrep's `-r` is `--replace`, not recursive, so `rg -rn PATTERN` silently
   prints every match as the literal string `n`. Recursion is already the
   default. This one is pure damage-prevention: the output looks plausible
   and wrong, which is the worst kind of wrong.

This is a nudge, not a security boundary — the sandbox VM is the boundary.
The costs are therefore asymmetric and the design follows from that: a false
negative costs approximately nothing (at worst a slow `find`), while a false
positive is expensive and compounding, because it teaches the agent that every
`find` needs the override and it stops reading the reason at all. So when in
doubt, allow.

Commands are parsed with tree-sitter's bash grammar, and the rules run over the
resulting `Command` values rather than over text. Ad-hoc matching against the
raw string proved far too imprecise to be worth keeping: shell structure is not
recoverable by regex, nor by a lexer that isn't a shell. Parsing buys real
understanding instead of heuristics — a heredoc body that merely *documents*
`find . | grep` contains no commands at all, quoted text like `jj describe -m
'a | grep b'` is one argument rather than a pipeline, and `$(find / -name x)`
genuinely *is* a find and is caught as one. Where the parse fails outright we
return no opinion, which keeps the fail-open promise honest.
"""

import json
import posixpath
import re
import sys
from dataclasses import dataclass
from functools import lru_cache

# The override is honoured in two positions: leading the whole command, or as
# a real variable assignment on the guarded command itself (`ls;
# GHOSTJAR_OVERRIDE=1 find /nix/store -maxdepth 2`), which is how one writes it
# inside a compound command. Both are structural — positions the parse can
# confirm — so merely *mentioning* the token, in a quoted string or a trailing
# comment, disarms nothing.
OVERRIDE = "GHOSTJAR_OVERRIDE=1"
LEGACY_OVERRIDE = "I_REALLY_WANT_FIND=1"
OVERRIDE_TOKENS = frozenset({OVERRIDE, LEGACY_OVERRIDE})
_OVERRIDE_PREFIX = re.compile(
    rf"^\s*(?:{re.escape(OVERRIDE)}|{re.escape(LEGACY_OVERRIDE)})(?:\s|$)"
)

GREP_NAMES = frozenset({"grep", "egrep", "fgrep"})

# `find` options that may precede the path operands.
FIND_PRE_PATH_FLAGS = frozenset({"-H", "-L", "-P"})

# Asking find for its usage text is not a filesystem search.
FIND_HELP_FLAGS = frozenset({"--help", "-help", "--version", "-version"})

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

REASON_RG_REPLACE = (
    "In ripgrep, `-r` is `--replace`, not recursive — so a bundled flag like "
    "`-rn PATTERN` is parsed as `--replace n` and silently prints every match "
    "as the literal string `n`, which looks like plausible output and is not. "
    "Recursion is already ripgrep's default, so drop the `r`: write "
    "`rg -n PATTERN`. If you really did mean to substitute, spell it out as "
    f"`rg --replace TEXT`. To override, prefix the command with `{OVERRIDE} `."
)


@dataclass(frozen=True)
class Command:
    """One `command` node: what was run, with what, and where in a pipeline."""

    name: str
    """Basename of the command word, unquoted (`/usr/bin/find` -> `find`)."""

    args: tuple[str, ...]
    """Arguments in order, unquoted; redirections and assignments removed."""

    pipeline: int | None
    """Identity of the enclosing pipeline, or None when not in one.

    Identity, not merely "is in a pipeline": two sibling pipelines within one
    compound command are distinct, so a consumer in one is not downstream of
    a producer in the other.
    """

    offset: int
    """Byte offset, so `downstream of` is answerable within a pipeline."""

    overridden: bool
    """Whether an override token is a variable assignment on this command."""


@lru_cache(maxsize=1)
def _parser():
    import tree_sitter_bash
    from tree_sitter import Language, Parser

    language = Language(tree_sitter_bash.language())
    try:
        return Parser(language)
    except TypeError:  # pre-0.22 binding
        parser = Parser()
        parser.set_language(language)
        return parser


def _unquote(text: str) -> str:
    if len(text) >= 2 and text[0] == text[-1] and text[0] in "'\"":
        return text[1:-1]
    return text


# Children of a `command` node that are not arguments.
_NON_ARG_TYPES = frozenset(
    {"file_redirect", "heredoc_redirect", "variable_assignment", "herestring_redirect"}
)


def _pipeline_identity(node) -> int | None:
    """Identity of the outermost pipeline directly enclosing `node`.

    Walks up only through `pipeline` nodes, so a pipeline nested inside a
    command substitution or subshell is its own pipeline rather than being
    merged with whatever encloses the substitution.
    """
    outermost = None
    parent = node.parent
    while parent is not None and parent.type == "pipeline":
        outermost = parent
        parent = parent.parent
    return None if outermost is None else outermost.id


def parse_commands(command: str) -> list[Command] | None:
    """Parse into commands, or None if we could not make sense of the input.

    None means *no opinion* — the caller must allow. It is returned when the
    grammar reports an error anywhere, which covers unbalanced quotes and
    other malformed input.
    """
    try:
        tree = _parser().parse(bytes(command, "utf-8"))
    except Exception:
        return None

    if tree.root_node.has_error:
        return None

    commands: list[Command] = []
    stack = [tree.root_node]
    while stack:
        node = stack.pop()
        stack.extend(node.children)

        if node.type != "command":
            continue
        name_node = node.child_by_field_name("name")
        if name_node is None:
            continue

        args = tuple(
            _unquote(child.text.decode("utf-8", "replace"))
            for child in node.children
            if child is not name_node and child.type not in _NON_ARG_TYPES
        )
        overridden = any(
            child.type == "variable_assignment"
            and child.text.decode("utf-8", "replace") in OVERRIDE_TOKENS
            for child in node.children
        )
        commands.append(
            Command(
                name=posixpath.basename(
                    _unquote(name_node.text.decode("utf-8", "replace"))
                ),
                args=args,
                pipeline=_pipeline_identity(node),
                offset=node.start_byte,
                overridden=overridden,
            )
        )

    commands.sort(key=lambda c: c.offset)
    return commands


def _find_paths(cmd: Command) -> list[str]:
    """The path operands of a find invocation (`find [-HLP] path... [expr]`)."""
    index = 0
    while index < len(cmd.args) and cmd.args[index] in FIND_PRE_PATH_FLAGS:
        index += 1
    paths = []
    while index < len(cmd.args) and not cmd.args[index].startswith("-"):
        paths.append(cmd.args[index])
        index += 1
    return paths


_EXEC_FLAGS = frozenset({"-exec", "-execdir", "-ok", "-okdir"})


def _find_own_args(cmd: Command) -> list[str]:
    """find's own predicates, excluding arguments belonging to an -exec child.

    Without this, a `-version` intended for the command run by `-exec` would
    be read as `find --version` and exempt the find from every rule.
    """
    own: list[str] = []
    for arg in cmd.args:
        if arg in _EXEC_FLAGS:
            break
        own.append(arg)
    return own


def _finds(commands: list[Command]) -> list[Command]:
    return [
        c
        for c in commands
        if c.name == "find"
        and not c.overridden
        and not (FIND_HELP_FLAGS & set(_find_own_args(c)))
    ]


def _rule_nix_store(commands: list[Command]) -> str | None:
    for cmd in _finds(commands):
        for path in _find_paths(cmd):
            if path.rstrip("/") == "/nix/store":
                return REASON_NIX_STORE
    return None


def _rule_fs_root(commands: list[Command]) -> str | None:
    for cmd in _finds(commands):
        if any(path == "/" for path in _find_paths(cmd)):
            return REASON_FS_ROOT
    return None


def _greps_a_stream(cmd: Command) -> bool:
    """Does this pipeline stage feed a stream into grep?"""
    if cmd.name in GREP_NAMES:
        return True
    # `xargs [flags] grep ...`
    return cmd.name == "xargs" and any(
        posixpath.basename(arg) in GREP_NAMES for arg in cmd.args
    )


def _execs_grep(cmd: Command) -> bool:
    """Does this find invocation run grep itself, via -exec/-execdir?"""
    return any(
        arg in ("-exec", "-execdir")
        and index + 1 < len(cmd.args)
        and posixpath.basename(cmd.args[index + 1]) in GREP_NAMES
        for index, arg in enumerate(cmd.args)
    )


def _rule_find_grep(commands: list[Command]) -> str | None:
    for cmd in _finds(commands):
        if _execs_grep(cmd):
            return REASON_FIND_GREP
        if cmd.pipeline is None:
            continue
        # Same pipeline, and downstream of the find — not merely co-resident
        # in the same compound command.
        if any(
            other.pipeline == cmd.pipeline
            and other.offset > cmd.offset
            and _greps_a_stream(other)
            for other in commands
        ):
            return REASON_FIND_GREP
    return None


def _is_bundled_r(arg: str) -> bool:
    """A clustered short flag containing `r`, e.g. `-rn`, `-rl`, `-nr`.

    A lone `-r` is left alone: that is a legitimate `--replace` whose value is
    the next argument. It is the *bundle* that is always a mistake, because
    ripgrep then takes the following cluster letter as the replacement text.
    """
    if not arg.startswith("-") or arg.startswith("--"):
        return False
    body = arg[1:]
    return len(body) >= 2 and body.isalpha() and "r" in body


def _rule_rg_replace(commands: list[Command]) -> str | None:
    for cmd in commands:
        if (
            cmd.name == "rg"
            and not cmd.overridden
            and any(_is_bundled_r(arg) for arg in cmd.args)
        ):
            return REASON_RG_REPLACE
    return None


RULES = (_rule_nix_store, _rule_fs_root, _rule_find_grep, _rule_rg_replace)


def check(command: str) -> str | None:
    """Return a denial reason string, or None if the command is allowed."""
    if not isinstance(command, str):
        return None
    if _OVERRIDE_PREFIX.match(command):
        return None

    commands = parse_commands(command)
    if commands is None:
        return None

    for rule in RULES:
        reason = rule(commands)
        if reason is not None:
            return reason
    return None


def main() -> None:
    try:
        payload = json.load(sys.stdin)
        command = payload.get("tool_input", {}).get("command", "")
    except (json.JSONDecodeError, AttributeError, ValueError):
        return  # fail open

    if not isinstance(command, str):
        return

    try:
        reason = check(command)
    except Exception:
        return  # fail open

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
