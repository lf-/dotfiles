#!/usr/bin/env bash

cmd=${1:-switch}
shift

nixos-rebuild $cmd --flake .#snowflake -L "$@"
