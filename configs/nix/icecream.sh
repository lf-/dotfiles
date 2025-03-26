#!/usr/bin/env bash

cmd=${1:-switch}
shift

nixos-rebuild $cmd --fast --use-remote-sudo --flake .#icecream -L "$@"
