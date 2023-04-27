#!/usr/bin/env bash

scriptdir="$(dirname $0)"

nix-env --install --remove-all --file $scriptdir/env.nix "$@"
