#!/usr/bin/env nix-shell
#!nix-shell -i bash -p curl jq nix
# shellcheck shell=bash

set -euo pipefail

cd "$(dirname "$0")"

bucket="https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases"

version=$(curl -fsSL "$bucket/latest")
manifest=$(curl -fsSL "$bucket/$version/manifest.json")

sri() {
  local hex=$1
  nix-hash --type sha256 --to-sri "$hex" 2>/dev/null
}

make_entry() {
  local manifest_platform=$1
  local hex
  hex=$(echo "$manifest" | jq -r ".platforms[\"$manifest_platform\"].checksum")
  if [ "$hex" = "null" ] || [ -z "$hex" ]; then
    echo "warning: no checksum for $manifest_platform" >&2
    return
  fi
  jq -n --arg platform "$manifest_platform" --arg hash "$(sri "$hex")" \
    '{platform: $platform, hash: $hash}'
}

jq -n \
  --arg version "$version" \
  --argjson x86_64_linux "$(make_entry linux-x64)" \
  --argjson aarch64_linux "$(make_entry linux-arm64)" \
  --argjson aarch64_darwin "$(make_entry darwin-arm64)" \
  '{
    version: $version,
    "x86_64-linux": $x86_64_linux,
    "aarch64-linux": $aarch64_linux,
    "aarch64-darwin": $aarch64_darwin,
  }' > release.json

echo "updated to $version"
