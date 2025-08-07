#!/usr/bin/env bash

args=(
    --build-host thinnernix
    --target-host thinnernix
    --use-substitutes
    --sudo
    -L
    --flake .#thinnernix
)

op="${1:-switch}"
shift

nixos-rebuild-ng "$op" "$@" "${args[@]}"
