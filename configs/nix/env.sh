#!/usr/bin/env bash

scriptdir="$(dirname $0)"

nix-env --log-format bar-with-logs --install --remove-all --file $scriptdir/env.nix "$@"
