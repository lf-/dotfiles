#!/usr/bin/env bash

thisdir="$(realpath "$(dirname "$0")")"

# install fancyindex styling
mkdir -p ~/.docs
ln -sf "$thisdir/.style" ~/.docs/.style

# install symlink to rust docs
ln -sf ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/share/doc/rust/html ~/.docs/rust

# install docs.service nginx
nix-build ./docs-service.nix -o "$thisdir/docs-service-result"
ln -sf "$(readlink "$thisdir/docs-service-result")"/docs.service ~/.config/systemd/user/docs.service
systemctl --user daemon-reload
systemctl --user restart docs.service
