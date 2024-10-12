#!/usr/bin/env bash

cmd=${1:-switch}
shift

nixos-rebuild $cmd --use-remote-sudo --fast --flake .#snowflake -L "$@"
