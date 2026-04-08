"""Tests for the find-guard hook (find|grep, bare /nix/store, and find /).

Example-based tests pin the behaviour we care about; the Hypothesis
property tests assert the invariants that should hold for *any* input:
the override always wins, genuine violations are always caught, and the
detector never raises.
"""

import io
import json

from hypothesis import given
from hypothesis import strategies as st

from ghostjar.find_grep_guard import (
    OVERRIDE,
    check,
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


def test_find_grep_override_lets_it_through():
    assert check(f"{OVERRIDE} find . -mtime -1 | grep log") is None
    assert check(f"{OVERRIDE} find . -exec grep foo {{}} +") is None


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


def test_nix_store_override_lets_it_through():
    assert check(f"{OVERRIDE} find /nix/store -name foo") is None


# ---------------------------------------------------------------------------
# Example-based: bare / guard
# ---------------------------------------------------------------------------

FS_ROOT_FLAGGED = [
    "find / -name '*.so'",
    "find / -type f",
    "find /",
    "ls /tmp && find / -name foo",
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


def test_fs_root_override_lets_it_through():
    assert check(f"{OVERRIDE} find / -name foo") is None


# ---------------------------------------------------------------------------
# main() — stdin/stdout contract
# ---------------------------------------------------------------------------


def run_main(stdin_text: str, monkeypatch) -> str:
    monkeypatch.setattr("sys.stdin", io.StringIO(stdin_text))
    out = io.StringIO()
    monkeypatch.setattr("sys.stdout", out)
    from ghostjar.find_grep_guard import main
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

# Args drawn from a shell-ish alphabet that can't smuggle in a pipe, the
# override sentinel, or newlines — so the constructed pipeline keeps its shape.
_safe_args = st.text(
    alphabet=st.characters(
        whitelist_categories=("L", "N"),
        whitelist_characters=" .-_/*'\"",
    ),
    max_size=40,
)


@given(prefix=_safe_args, find_args=_safe_args, grep_args=_safe_args)
def test_constructed_pipeline_is_always_flagged(prefix, find_args, grep_args):
    cmd = f"find {find_args} | grep {grep_args}"
    assert check(cmd) is not None
    if prefix.strip():
        assert check(f"{prefix.strip()} && {cmd}") is not None


@given(find_args=_safe_args, grep_args=_safe_args)
def test_constructed_exec_grep_is_always_flagged(find_args, grep_args):
    assert check(f"find {find_args} -exec grep {grep_args} {{}} +") is not None


@given(cmd=_safe_args)
def test_override_anywhere_always_allows(cmd):
    assert check(f"{OVERRIDE} {cmd} find x | grep y") is None
    assert check(f"{OVERRIDE} find x -exec grep y {{}} +") is None
    assert check(f"{OVERRIDE} find /nix/store -name foo") is None
    assert check(f"{OVERRIDE} find / -name foo") is None


@given(find_args=_safe_args)
def test_constructed_fs_root_is_always_flagged(find_args):
    assert check(f"find / {find_args}") is not None


@given(cmd=st.text())
def test_no_find_command_is_never_flagged(cmd):
    if "find" not in cmd:
        assert check(cmd) is None


@given(cmd=st.text())
def test_never_raises_and_returns_str_or_none(cmd):
    result = check(cmd)
    assert result is None or isinstance(result, str)
