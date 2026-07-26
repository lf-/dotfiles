#!/bin/sh
set -eu
bin="$1"
codesign --verify --verbose=2 "$bin"
codesign -d --entitlements - "$bin" | grep -q allow-jit
test -x "$bin"
