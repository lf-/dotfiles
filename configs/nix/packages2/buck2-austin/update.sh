#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
repo=thoughtpolice/buck2
tag=$(gh -R "$repo" release list --json tagName -L 1 | jq -r '.[] | .tagName')
gh -R "$repo" release download --clobber --pattern buck2 --pattern rust-project "$tag"
