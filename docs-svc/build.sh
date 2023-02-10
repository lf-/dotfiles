#!/bin/bash
set -eo pipefail
# job control
set -m

cd "$(dirname $0)"

nix-build -A allDocs -o result &
nix-build -A zsh -o zshresult &
nix-build -A postgresql -o postgresresult &
nix-build -A gnuplot -o gnuplotresult &
nix-build -A openocd -o openocdresult &
wait

rsync --delete-delay --recursive --times --verbose \
    ./result/ ${HOME}/.docs/gnu/
rsync --delete-delay --recursive --times --verbose \
    ./gnuplotresult/ ${HOME}/.docs/gnuplot/
rsync --delete-delay --recursive --times --verbose \
    ./zshresult/ ${HOME}/.docs/zsh/
rsync --delete-delay --recursive --times --verbose \
    ./postgresresult/ ${HOME}/.docs/postgres/
rsync --delete-delay --recursive --times --verbose \
    ./openocdresult/ ${HOME}/.docs/openocd/
