final: prev: {
  mergiraf = prev.mergiraf.overrideAttrs (oldAttrs: {
    patches = (oldAttrs.patches or [ ]) ++ [
      (prev.fetchpatch {
        name = "fix-buck.patch";
        url = "https://codeberg.org/jadeprime/mergiraf/commit/7960e34b7175fef196deb1fef912b36b6a7ac2da.patch";
        hash = "sha256-7mXOJYen/Gv0LzznYrV8DAIsdGFOQXjfiFLdBxsuuJc=";
      })
    ];
  });
}
