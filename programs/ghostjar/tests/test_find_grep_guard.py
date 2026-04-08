"""Tests for the find|grep guard hook.

Example-based tests pin the behaviour we care about; the Hypothesis
property tests assert the invariants that should hold for *any* input:
the override always wins, a genuine find|grep pipeline is always caught,
a command with no `grep` is never caught, and the detector never raises.
"""

import io
import json

from hypothesis import given
from hypothesis import strategies as st

from ghostjar.find_grep_guard import (
    OVERRIDE,
    is_find_grep,
    main,
)

# ---------------------------------------------------------------------------
# Example-based
# ---------------------------------------------------------------------------

FLAGGED = [
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

ALLOWED = [
    "rg pattern src/",
    "rg --files | rg name",
    "cat foo | grep bar",  # no find
    "find . -name '*.py' -mtime -2",  # find, but no grep
    "find . -type f -exec chmod 644 {} +",  # -exec, but not grep
    "grep -r foo .",
    "ls | sort | uniq",
    "",
]


def test_flagged_examples():
    for cmd in FLAGGED:
        assert is_find_grep(cmd), cmd


def test_allowed_examples():
    for cmd in ALLOWED:
        assert not is_find_grep(cmd), cmd


def test_override_lets_it_through():
    assert not is_find_grep(f"{OVERRIDE} find . -mtime -1 | grep log")
    assert not is_find_grep(f"{OVERRIDE} find . -exec grep foo {{}} +")


# ---------------------------------------------------------------------------
# main() — stdin/stdout contract
# ---------------------------------------------------------------------------


def run_main(stdin_text: str, monkeypatch) -> str:
    monkeypatch.setattr("sys.stdin", io.StringIO(stdin_text))
    out = io.StringIO()
    monkeypatch.setattr("sys.stdout", out)
    main()
    return out.getvalue()


def test_main_denies_with_valid_json(monkeypatch):
    payload = json.dumps({"tool_input": {"command": "find . | grep x"}})
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
    # A real `find ... | grep ...` pipeline must always be caught.
    cmd = f"find {find_args} | grep {grep_args}"
    assert is_find_grep(cmd)
    # ...and prefixing with another command segment shouldn't hide it.
    if prefix.strip():
        assert is_find_grep(f"{prefix.strip()} && {cmd}")


@given(find_args=_safe_args, grep_args=_safe_args)
def test_constructed_exec_grep_is_always_flagged(find_args, grep_args):
    # A real `find … -exec grep …` invocation must always be caught.
    assert is_find_grep(f"find {find_args} -exec grep {grep_args} {{}} +")


@given(cmd=_safe_args)
def test_override_anywhere_always_allows(cmd):
    # The override sentinel wins no matter what follows it.
    assert not is_find_grep(f"{OVERRIDE} {cmd} find x | grep y")
    assert not is_find_grep(f"{OVERRIDE} find x -exec grep y {{}} +")


@given(cmd=st.text())
def test_no_grep_substring_is_never_flagged(cmd):
    # Detection requires a grep somewhere; without the substring at all it
    # can never match, regardless of how much find-like text is present.
    if "grep" not in cmd:
        assert not is_find_grep(cmd)


@given(cmd=st.text())
def test_never_raises_and_returns_bool(cmd):
    assert isinstance(is_find_grep(cmd), bool)
