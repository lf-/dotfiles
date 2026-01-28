final: prev: {
  reuse = prev.reuse.overrideAttrs (oldAttrs: {
    patches = (oldAttrs.patches or [ ]) ++ [
      (prev.fetchpatch {
        name = "fix-buck.patch";
        url = "https://codeberg.org/jadeprime/reuse-tool/commit/445ecbc8694c353a28aaea571c4b4e986b023e4f.patch";
        hash = "sha256-jo/JNQ0rgnFgvNL3y/4uM+hz6G2HK//LIwdyE9UHCzE=";
      })
    ];
  });
}
