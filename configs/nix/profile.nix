{ pkgs, nixpkgs, flakey-profile, nixGL }:
let
  xwaylandvideobridge = pkgs.writeShellScriptBin "xwaylandvideobridge" ''
    ${nixGL'.nixGLIntel}/bin/nixGLIntel ${pkgs.xwaylandvideobridge}/bin/xwaylandvideobridge
  '';
  nixGL' = import nixGL { inherit pkgs; };
in
flakey-profile.lib.mkProfile {
  inherit pkgs;
  paths = with pkgs; [
    nixGL'.nixGLIntel
    xwaylandvideobridge
    librespot
    watchman
  ] ++ import ./roles/dev/common-packages.nix pkgs;
  pinned = { nixpkgs = nixpkgs; };
}
