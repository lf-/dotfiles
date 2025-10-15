#!/usr/bin/env bash

set -euo pipefail
set -x

copybara -v ./vim-plugins/copy.bara.sky buck2_nvim_to_github refs/heads/main
