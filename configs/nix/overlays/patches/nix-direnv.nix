final: prev: {
  nix-direnv = prev.nix-direnv.overrideAttrs (oldAttrs: {
    # workaround strange problems in direnv-lsp, probably caused by stderr
    # being a socket maybe??
    postFixup = ''
      substituteInPlace $out/share/nix-direnv/direnvrc --replace-fail '>/dev/stderr' '>&2'
    '' + (oldAttrs.postFixup or "");
  });
}
