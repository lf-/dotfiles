#!/bin/bash
set -eo pipefail
# job control
set -m

cd "$(dirname $0)"

nix-build -A allDocs -o result &
nix-build -A zsh -o zshresult &
wait

rsync --delete-delay --recursive --times --verbose \
    ./result/ ${HOME}/.docs/gnu/
rsync --delete-delay --recursive --times --verbose \
    ./zshresult/ ${HOME}/.docs/zsh/
