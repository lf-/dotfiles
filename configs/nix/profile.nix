{ pkgs, qyriad-nur, nixpkgs, flakey-profile, isNixManaged ? false }:
let
  isMac = pkgs.stdenv.isDarwin;
  inherit (pkgs) lib callPackage writeShellScriptBin;
  nixYuriPkg = callPackage ./packages/nixYuri/package.nix { };
  wrapGui = pkg: writeShellScriptBin pkg.pname ''
    LOCALE_ARCHIVE=${lib.getLib pkgs.glibcLocales}/lib/locale/locale-archive exec ${nixYuriPkg.nixYuriIntel}/bin/nixYuri ${pkg}/bin/${pkg.meta.mainProgram or pkg.pname}
  '';
in
flakey-profile.lib.mkProfile {
  inherit pkgs;
  paths = with pkgs; [
    watchman
    polkadots
  ]
  ++ lib.optionals (isMac) [
    pkgs.nodejs
  ]
  ++ lib.optionals (!isMac) [
    nixYuriPkg.nixYuriIntel
    (librespot.override { withAvahi = true; })
    (wrapGui (art // { meta = art.meta // { mainProgram = "ART"; }; }))
  ]
  ++ import ./roles/dev/common-packages.nix { inherit pkgs qyriad-nur wrapGui; withHsutils = !isMac; withGui = !isMac; withHaskell = true; }
  ++ lib.optionals isNixManaged (import ./roles/dev/nix-system-packages.nix { inherit pkgs; });
  pinned = { nixpkgs = nixpkgs; };
}
