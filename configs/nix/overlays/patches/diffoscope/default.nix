final: prev: {
  diffoscope = prev.diffoscope.overrideAttrs (old: {
    # https://github.com/NixOS/nixpkgs/raw/6e1c1a9c2860bdaadfe21504c6082f9065f83d1f/pkgs/tools/misc/diffoscope/openssh-no-dsa.patch
    patches = old.patches ++ [
      ./openssh-no-dsa.patch
    ];
  });
}
