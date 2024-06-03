{ pkgs, qyriad-nur, nixpkgs, flakey-profile }:
let
  inherit (pkgs) lib callPackage writeShellScriptBin;
  nixYuriPkg = callPackage ./packages/nixYuri/package.nix { };
  wrapGui = pkg: writeShellScriptBin pkg.pname ''
    LOCALE_ARCHIVE=${lib.getLib pkgs.glibcLocales}/lib/locale/locale-archive exec ${nixYuriPkg.nixYuriIntel}/bin/nixYuri ${pkg}/bin/${pkg.meta.mainProgram or pkg.pname}
  '';
in
flakey-profile.lib.mkProfile {
  inherit pkgs;
  paths = with pkgs; [
    nixYuriPkg.nixYuriIntel
    librespot
    watchman
    polkadots
  ] ++ import ./roles/dev/common-packages.nix { inherit pkgs qyriad-nur wrapGui; withHsutils = true; withGui = true; };
  pinned = { nixpkgs = nixpkgs; };
}
