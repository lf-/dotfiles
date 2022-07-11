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

The store paths will include the last 6 characters of hash and the package
name. If you would like full paths, pass `--no-simplify-paths` like so:

`nix-closure-graph --no-simplify-paths ./result > graph.svg`

Any extra arguments not used by nix-closure-graph will go to `nix path-info`.
