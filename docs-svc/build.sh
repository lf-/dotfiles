#!/bin/bash
set -eo pipefail

cd "$(dirname $0)"

nix-build -A allDocs -o result

rsync --delete-delay --recursive --times --verbose \
    ./result/ ${HOME}/.docs/gnu/
