# Nix closure size outputter for lg
#
# The viewer for this format will be released at some point in the future.

import "./lib" as lib;

# sizes are scaled by 500KiB. This is because we don't really care about the
# diff between 500KiB and something less, and we want the linear logarithm
# scaling to size to have a nicer distribution.
def scaleSize:
    [1, . / (500*1024)] | max
    ;

def graphedge:
    .path as $path
    | {
        from: $path,
        to: .references[] | select(. != $path)
    }
    ;

def graphnode:
    {
        "label": .path | lib::render_path_simplified(.),
        props: {
            path: .path,
            narSize: .narSize | lib::size_pretty,
            closureSize: .closureSize | lib::size_pretty,
            registered: .registrationTime | lib::formatTime,
            deriver: .deriver,
        },
        weight: .narSize | scaleSize | log,
    }
    ;


(reduce .[] as $inp (({nodes: {}, edges: []});
    {
        nodes: (.nodes * {($inp.path): ($inp | graphnode)}),
        edges: (.edges + [($inp | graphedge)])
    }
))

