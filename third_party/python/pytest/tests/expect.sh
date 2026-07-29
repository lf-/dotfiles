#!/bin/sh
# Assert a command's exit code, and optionally its stdout.
#
#   expect.sh --exit 70 -- some-binary
#   expect.sh --exit 0 --stdout golden.txt -- some-binary --list-tests
set -eu

expected_exit=0
golden=

while [ $# -gt 0 ]; do
    case "$1" in
        --exit) expected_exit="$2"; shift 2 ;;
        --stdout) golden="$2"; shift 2 ;;
        --) shift; break ;;
        *) echo "expect.sh: unknown argument: $1" >&2; exit 2 ;;
    esac
done

if [ $# -eq 0 ]; then
    echo "expect.sh: no command given" >&2
    exit 2
fi

work=$(mktemp -d)
trap 'rm -rf "$work"' EXIT

actual_exit=0
"$@" >"$work/stdout" 2>"$work/stderr" || actual_exit=$?

status=0

if [ "$actual_exit" != "$expected_exit" ]; then
    echo "expect.sh: expected exit $expected_exit, got $actual_exit, from: $*" >&2
    status=1
fi

if [ -n "$golden" ] && ! diff -u "$golden" "$work/stdout"; then
    echo "expect.sh: stdout did not match $golden" >&2
    status=1
fi

# A bare "expected 0, got 70" tells you nothing about which test broke.
if [ "$status" != 0 ]; then
    echo "--- stdout ---" >&2
    cat "$work/stdout" >&2
    echo "--- stderr ---" >&2
    cat "$work/stderr" >&2
fi

exit "$status"
