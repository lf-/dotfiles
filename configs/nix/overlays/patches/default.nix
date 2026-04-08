let
  reuse = final: prev: {
    reuse = prev.reuse.overrideAttrs (old: {
      outputs =
        assert builtins.elem "man" old.outputs;
        prev.lib.remove "man" old.outputs;
    });
  };
in
[
  reuse
]
