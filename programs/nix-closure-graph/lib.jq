# Common functionality between lg and graphviz dot output modes

def render_path_simplified($path):
    $path | capture("^/nix/store/[a-zA-Z0-9]{26}(?<name>.*)$") | .name
    ;

def round1:
    .*10 | round | ./10
    ;

def size_pretty:
    .
    | 1024 as $kb
    | (1024 * 1024) as $mb
    | (1024 * 1024 * 1024) as $gb
    | if . > $gb then
        "\(. / $gb | round1) GiB"
    elif . > $mb then
        "\(. / $mb | round1) MiB"
    elif . > $kb then
        "\(. / $kb | round1) KiB"
    else
        "\(.) bytes"
    end;

def formatTime:
    . | strftime("%F %T UTC")
    ;

# Converts a `{path_a: value_a, ...}` into `[{...value_a, path: path_a}, ...]` if needed.
# Before https://github.com/NixOS/nix/pull/9242, `nix path-info` used to return an array, now it returns an object.
def entries_to_array:
    if type == "array" then
        .
    else
        to_entries | map(.value + {path: .key})
    end
    ;
