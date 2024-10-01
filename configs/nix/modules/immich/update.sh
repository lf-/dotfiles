#!/usr/bin/env bash

cd "$(dirname -- "$0")" || exit 1

version=$1

compose_file=$(curl -L "https://github.com/immich-app/immich/releases/download/$version/docker-compose.yml")

echo "$compose_file" | yq . | jq --arg immich_version "$version" -f ./mkVersions.jq > versions.json
