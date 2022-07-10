# nix-closure-graph

Renders graphs of nix closures with size. This exists because the `nix
path-info` output is basically hopeless since you can't see dependencies, and
`nix-store --query --graph` doesn't include sizes.

## Requirements

* jq
* dot (graphviz)
* bash

## Usage

`nix-closure-graph .# > graph.svg`

`nix-closure-graph ./result > graph.svg`

etc. Then open the graph :)
