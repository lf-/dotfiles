#!/bin/sh

cmd="${1:-switch}"
if [ $# -gt 0 ]; then
    shift
fi

NIX_SSHOPTS="$NIX_SSHOPTS -l root" nixos-rebuild "$cmd" "$@" --use-remote-sudo --fast --target-host cube --use-substitutes --flake .#cube
