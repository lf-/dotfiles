# Renders a nix closure graph as graphviz dot
import "./lib" as lib;

def render_path($path):
    if $simplify_paths then
        lib::render_path_simplified($path)
    else
        $path
    end
    ;

def graphedge:
    # debug |
    .path as $path
    | .references[]
    | select(. != $path)
    | "\"\($path)\" -> \"\(.)\";"
    ;

def graphnode:
    # debug |
    .path as $node
    | (.path | render_path(.)) as $pretty
    | (.narSize | lib::size_pretty) as $size
    | (.closureSize | lib::size_pretty) as $closureSize
    | "\"\($node)\" [label = \"\($pretty)\\n\($size) / \($closureSize)\"];"
    ;

"digraph G {\n",
(.[] | (graphnode, graphedge)),
"}"

