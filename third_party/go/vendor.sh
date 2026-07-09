#!/bin/sh
set -e
root=$(git rev-parse --show-toplevel)
GOFLAGS="-tags=tools" go work vendor -o "$root/third_party/go/vendor"
