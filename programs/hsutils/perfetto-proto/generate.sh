#!/usr/bin/env bash

mapfile -t protos < <(python3 get_protos.py)

protoc --plugin=protoc-gen-haskell="$(which proto-lens-protoc)" \
    --haskell_out=src -I perfetto "${protos[@]}"
