#!/bin/sh
set -e
root=$(git rev-parse --show-toplevel)
"$GOBUCKIFY" "$root/third_party/go"
