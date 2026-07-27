"""Tests for the bash guard (find|grep, bare /nix/store, find /, and rg -rn).

Example-based tests pin the behaviour we care about; the Hypothesis property
tests assert the invariants that should hold for *any* input: a leading
override always wins, genuine violations are always caught, and the detector
never raises.

The regression block pins the expensive direction: commands in which a `find`
and a `grep` merely coexist without ever being connected, which must stay
allowed.
"""

import io
import json

from hypothesis import given
from hypothesis import strategies as st

from hypothesis import assume

from ghostjar.bash_guard import (
    FIND_HELP_FLAGS,
    LEGACY_OVERRIDE,
    OVERRIDE,
    check,
    parse_commands,
)

# ---------------------------------------------------------------------------
# Example-based: find + grep guard
# ---------------------------------------------------------------------------

FIND_GREP_FLAGGED = [
    'find . -name "*.go" | grep handler',
    "find . -type f | sort | grep foo",
    "find . -name '*.py' | xargs grep TODO",
    "find . | xargs -0 grep -n needle",
    "find /var/log | egrep 'err|warn'",
    "cd src && find . -name '*.ts' | grep router",
    "/usr/bin/find . | grep x",
    # -exec / -execdir grep: the shapes the harness can't turn into a rule
    'find . -name "*.c" -exec grep -l foo {} +',
    "find . -execdir grep -n TODO {} ;",
    "find . -type f -exec /usr/bin/grep pattern {} +",
    # a find inside a command substitution really does run
    "echo $(find . -name '*.go' | grep handler)",
]

FIND_GREP_ALLOWED = [
    "rg pattern src/",
    "rg --files | rg name",
    "cat foo | grep bar",  # no find
    "find . -name '*.py' -mtime -2",  # find, but no grep
    "find . -type f -exec chmod 644 {} +",  # -exec, but not grep
    "grep -r foo .",
    "ls | sort | uniq",
    "",
]


def test_find_grep_flagged_examples():
    for cmd in FIND_GREP_FLAGGED:
        assert check(cmd) is not None, cmd


def test_find_grep_allowed_examples():
    for cmd in FIND_GREP_ALLOWED:
        assert check(cmd) is None, cmd


# ---------------------------------------------------------------------------
# Regression: a find and a grep that are not connected to each other
# ---------------------------------------------------------------------------

# In none of these is the grep downstream of the find within a pipeline, so
# there is nothing to object to. Denying them is the expensive kind of mistake:
# it teaches the agent to reach for the override without reading the reason.
NOT_ACTUALLY_FIND_GREP = [
    # drawn from real command history
    "du -sm src/; find /Users/jade/refs -type f -mmin -2 | head; lsof -p 60913 | grep -E 'REG|TCP'",
    "find ~/co/matchlock -type f | head -20 && rg 'func Test' . | grep -i tls",
    "find $MDIR -type d -name guest; rg -n 'pattern' $MDIR | grep -iv _test",
    # multi-line scripts: newline is a statement separator, not a pipe
    'echo "=== files ==="\nfind . -name "*.go" | head\necho "=== procs ==="\nps aux | grep buck2',
    # a heredoc that merely documents the tools
    "cat <<'EOF' > notes.md\nfind . | grep foo\nEOF",
    # subshell, and a pipeline that is not the find's
    "(find . -name x); ls | grep y",
    # `| grep` inside a quoted string is text, not a pipeline
    "find . -name '*.md' | head; jj describe -m 'docs: | grep note'",
    # executables merely *named* find-something
    "./find-deps.py | grep x",
    "/usr/local/bin/find-duplicates | grep png",
    # grepping find's help output is not a filesystem search
    "find --help | grep exec",
]

# The nix-store and fs-root rules look only at find's own path operands, so a
# mention of the store anywhere else in the command is none of their business.
NOT_ACTUALLY_NIX_STORE = [
    "find . -name flake.nix; echo /nix/store",
    "find ~/.dotfiles -name '*.nix' -newer flake.lock; df -h /nix/store",
    "du -sh /nix/store && find . -name result",
    "nix path-info -r /nix/store/abc123-foo; find . -name '*.nix' | head",
]


def test_unrelated_find_and_grep_are_allowed():
    for cmd in NOT_ACTUALLY_FIND_GREP:
        assert check(cmd) is None, cmd


def test_nix_store_mentioned_elsewhere_is_allowed():
    for cmd in NOT_ACTUALLY_NIX_STORE:
        assert check(cmd) is None, cmd


def test_malformed_input_yields_no_opinion():
    # Unbalanced quotes: we cannot parse it, so we do not judge it.
    assert parse_commands("find . -name 'oops") is None
    assert check("find . -name 'oops | grep x") is None


# ---------------------------------------------------------------------------
# Example-based: bare /nix/store guard
# ---------------------------------------------------------------------------

NIX_STORE_FLAGGED = [
    "find /nix/store -name '*.so'",
    "find /nix/store -type f -name gcc",
    "find /nix/store/ -maxdepth 3",
    "find /nix/store",
    # as part of a compound command
    "ls /tmp && find /nix/store -name foo",
]

NIX_STORE_ALLOWED = [
    # specific derivation path — not the store root
    "find /nix/store/abc123-glibc-2.38/lib -name '*.so'",
    "find /nix/store/zzz999-bash-5.2/bin -type f",
    # not a find command
    "ls /nix/store",
    "du -sh /nix/store",
    # override
    f"{OVERRIDE} find /nix/store -name foo",
]


def test_nix_store_flagged_examples():
    for cmd in NIX_STORE_FLAGGED:
        assert check(cmd) is not None, cmd


def test_nix_store_allowed_examples():
    for cmd in NIX_STORE_ALLOWED:
        assert check(cmd) is None, cmd


def test_nix_store_reason_mentions_nix():
    reason = check("find /nix/store -name foo")
    assert reason is not None
    assert "nix" in reason.lower()


# ---------------------------------------------------------------------------
# Example-based: bare / guard
# ---------------------------------------------------------------------------

FS_ROOT_FLAGGED = [
    "find / -name '*.so'",
    "find / -type f",
    "find /",
    "ls /tmp && find / -name foo",
    # Depth-bounded is still flagged: `/` is not an acceptable starting path
    # here regardless of how much of it the command intends to walk.
    "/usr/bin/find / -maxdepth 5",
]

FS_ROOT_ALLOWED = [
    "find /tmp -name foo",
    "find /Users/jade -name '*.py'",
    "find /etc -type f",
    "find /var/log -mtime -1",
    # specific nix derivation — not the fs root
    "find /nix/store/abc123-glibc-2.38/lib -name '*.so'",
    # not a find command
    "ls /",
    "du -sh /",
    # override
    f"{OVERRIDE} find / -name foo",
]


def test_fs_root_flagged_examples():
    for cmd in FS_ROOT_FLAGGED:
        assert check(cmd) is not None, cmd


def test_fs_root_allowed_examples():
    for cmd in FS_ROOT_ALLOWED:
        assert check(cmd) is None, cmd


def test_fs_root_reason_mentions_root():
    reason = check("find / -name foo")
    assert reason is not None
    assert "find /" in reason


# ---------------------------------------------------------------------------
# Example-based: rg -r is --replace
# ---------------------------------------------------------------------------

RG_REPLACE_FLAGGED = [
    "rg -rn 'x_test_go_files' prelude/go",
    "rg -rn modernc.org/sqlite third_party",
    "rg -rl TODO src/",
    "rg -nr pattern .",
    "ls && rg -ri needle",
]

RG_REPLACE_ALLOWED = [
    "rg -n pattern src/",
    "rg pattern src/",
    # a lone -r really is --replace, with its value following
    "rg -r 'REPLACEMENT' pattern src/",
    "rg --replace TEXT pattern",
    # long flags containing r are not clusters
    "rg --regexp pattern",
    # other tools' -r means other things
    "grep -rn pattern .",
    "cp -rn src dst",
    f"{OVERRIDE} rg -rn pattern src/",
]


def test_rg_replace_flagged_examples():
    for cmd in RG_REPLACE_FLAGGED:
        assert check(cmd) is not None, cmd


def test_rg_replace_allowed_examples():
    for cmd in RG_REPLACE_ALLOWED:
        assert check(cmd) is None, cmd


def test_rg_replace_reason_explains_the_trap():
    reason = check("rg -rn pattern src/")
    assert reason is not None
    assert "--replace" in reason
    assert "rg -n" in reason


# ---------------------------------------------------------------------------
# Override semantics: prefix only
# ---------------------------------------------------------------------------


def test_override_as_prefix_lets_it_through():
    assert check(f"{OVERRIDE} find . -mtime -1 | grep log") is None
    assert check(f"{LEGACY_OVERRIDE} find . -exec grep foo {{}} +") is None
    assert check(f"  {OVERRIDE} find / -name foo") is None


def test_override_attached_to_the_command_lets_it_through():
    # How you actually write it inside a compound command: a real variable
    # assignment on the guarded command, not at the head of the whole line.
    assert check(f"ls ~/.buck; {LEGACY_OVERRIDE} find /nix/store -maxdepth 2 | head") is None
    assert check(f"echo hi && {OVERRIDE} find / -name x") is None
    assert check(f"ls; {OVERRIDE} rg -rn pattern src/") is None


def test_override_exempts_only_the_command_it_is_attached_to():
    # Attached form is scoped to its own command; the second find is still
    # judged. (A *leading* override, by contrast, disarms the whole command.)
    assert check(f"ls; {OVERRIDE} find /nix/store -name a; find / -name b") is not None


def test_override_elsewhere_does_not_count():
    # A mere mention must not disarm the guard — that was a trivial bypass.
    assert check("echo 'the token is GHOSTJAR_OVERRIDE=1'; find / -name x") is not None
    assert check("find . -name x | grep y # GHOSTJAR_OVERRIDE=1") is not None
    assert check("rg 'I_REALLY_WANT_FIND=1' notes.md; find / -name x") is not None


# ---------------------------------------------------------------------------
# main() — stdin/stdout contract
# ---------------------------------------------------------------------------


def run_main(stdin_text: str, monkeypatch) -> str:
    monkeypatch.setattr("sys.stdin", io.StringIO(stdin_text))
    out = io.StringIO()
    monkeypatch.setattr("sys.stdout", out)
    from ghostjar.bash_guard import main

    main()
    return out.getvalue()


def test_main_denies_find_grep(monkeypatch):
    payload = json.dumps({"tool_input": {"command": "find . | grep x"}})
    out = run_main(payload, monkeypatch)
    decision = json.loads(out)["hookSpecificOutput"]
    assert decision["permissionDecision"] == "deny"
    assert decision["hookEventName"] == "PreToolUse"


def test_main_denies_nix_store(monkeypatch):
    payload = json.dumps({"tool_input": {"command": "find /nix/store -name foo"}})
    out = run_main(payload, monkeypatch)
    decision = json.loads(out)["hookSpecificOutput"]
    assert decision["permissionDecision"] == "deny"
    assert decision["hookEventName"] == "PreToolUse"


def test_main_silent_when_allowed(monkeypatch):
    payload = json.dumps({"tool_input": {"command": "rg foo"}})
    assert run_main(payload, monkeypatch) == ""


def test_main_fails_open_on_bad_json(monkeypatch):
    assert run_main("not json at all", monkeypatch) == ""


def test_main_fails_open_on_missing_command(monkeypatch):
    assert run_main(json.dumps({"tool_input": {}}), monkeypatch) == ""


# ---------------------------------------------------------------------------
# Property-based (Hypothesis)
# ---------------------------------------------------------------------------

# Quote characters are deliberately excluded: an unbalanced quote is exactly
# the input on which the guard declines to have an opinion, so a pipeline
# built from one is *correctly* not flagged. Parentheses are excluded for the
# same reason — they would restructure the command being constructed.
_safe_args = st.text(
    alphabet=st.characters(
        whitelist_categories=("L", "N"),
        whitelist_characters=" .-_/*",
    ),
    max_size=40,
)

_safe_word = st.text(
    alphabet=st.characters(whitelist_categories=("L", "N")),
    min_size=1,
    max_size=20,
)


def _searches_the_filesystem(find_args: str) -> bool:
    """`find --help` prints usage and scans nothing, so it is exempt by design."""
    return not (FIND_HELP_FLAGS & set(find_args.split()))


@given(prefix=_safe_word, find_args=_safe_args, grep_args=_safe_args)
def test_constructed_pipeline_is_always_flagged(prefix, find_args, grep_args):
    assume(_searches_the_filesystem(find_args))
    cmd = f"find {find_args} | grep {grep_args}"
    assert check(cmd) is not None
    assert check(f"{prefix} && {cmd}") is not None


@given(find_args=_safe_args, grep_args=_safe_args)
def test_constructed_exec_grep_is_always_flagged(find_args, grep_args):
    assume(_searches_the_filesystem(find_args))
    assert check(f"find {find_args} -exec grep {grep_args} {{}} +") is not None


@given(find_args=_safe_args)
def test_constructed_fs_root_is_always_flagged(find_args):
    assume(_searches_the_filesystem(find_args))
    assert check(f"find / {find_args}") is not None


@given(trailing=_safe_args)
def test_override_prefix_always_allows(trailing):
    assert check(f"{OVERRIDE} find x | grep y {trailing}") is None
    assert check(f"{OVERRIDE} find /nix/store -name foo {trailing}") is None
    assert check(f"{LEGACY_OVERRIDE} find / -name foo {trailing}") is None


@given(cmd=st.text())
def test_unguarded_commands_are_never_flagged(cmd):
    if "find" not in cmd and "rg" not in cmd:
        assert check(cmd) is None


@given(cmd=st.text())
def test_never_raises_and_returns_str_or_none(cmd):
    result = check(cmd)
    assert result is None or isinstance(result, str)
