#!/usr/bin/env bash

nix-build ./docs-service.nix -o docs-service-result
ln -sf "$(readlink docs-service-result)"/docs.service ~/.config/systemd/user/docs.service
systemctl --user daemon-reload
systemctl --user restart docs.service
