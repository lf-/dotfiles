#!/usr/bin/env bash

args=(
    --build-host thinnernix
    --target-host thinnernix
    --use-substitutes
    --sudo
    --flake .#thinnernix
    --fast
)

op="${1:-switch}"
shift

nixos-rebuild "$op" "$@" "${args[@]}"
