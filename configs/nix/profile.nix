{ pkgs, nixpkgs, flakey-profile }:
let
  nixYuriPkg = pkgs.callPackage ./packages/nixYuri/package.nix { };
  xwaylandvideobridge = pkgs.writeShellScriptBin "xwaylandvideobridge" ''
    ${nixYuriPkg.nixYuriIntel}/bin/nixYuri ${pkgs.xwaylandvideobridge}/bin/xwaylandvideobridge
  '';
in
flakey-profile.lib.mkProfile {
  inherit pkgs;
  paths = with pkgs; [
    nixYuriPkg.nixYuriIntel
    xwaylandvideobridge
    librespot
    watchman
  ] ++ import ./roles/dev/common-packages.nix { inherit pkgs; withHsutils = true; };
  pinned = { nixpkgs = nixpkgs; };
}
