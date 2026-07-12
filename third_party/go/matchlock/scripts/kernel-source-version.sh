#!/bin/bash
set -euo pipefail

# Kernel.org names final .0 releases as linux-X.Y.tar.xz rather than
# linux-X.Y.0.tar.xz. Accept the user-facing version string and map it to the
# upstream source archive naming convention.

if [ "$#" -ne 1 ] || [ -z "$1" ]; then
    echo "Usage: $0 <kernel-version>" >&2
    exit 1
fi

version="$1"

if [[ "$version" =~ ^([0-9]+)\.([0-9]+)\.0$ ]]; then
    echo "${BASH_REMATCH[1]}.${BASH_REMATCH[2]}"
    exit 0
fi

echo "$version"
