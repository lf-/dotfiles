# stuff to install with nix-env. Uses system channels, which is kind of hot
# trash, but it syncs with the current nix version.
let
  pkgs = import <nixpkgs> {
    overlays = [
      (import ../../programs/hsutils/overlay.nix { ghcVer = "ghc92"; })
      (import ./overlays/xwaylandvideobridge.nix)
      (import ./overlays/gitignore.nix { inherit (flake.inputs) gitignore; })
      (import ./overlays/jadeware.nix)
    ];
  };
  common-dev-pkgs = import ./roles/dev/common-packages.nix pkgs;

  flake = (import
    (
      let lock = builtins.fromJSON (builtins.readFile ./flake.lock); in
      fetchTarball {
        url = "https://github.com/edolstra/flake-compat/archive/${lock.nodes.flake-compat.locked.rev}.tar.gz";
        sha256 = lock.nodes.flake-compat.locked.narHash;
      }
    )
    { src = ./.; }).defaultNix;

  nixGL = import flake.inputs.nixGL { inherit pkgs; };
in
{
  inherit (pkgs) librespot watchman;
  inherit (nixGL) nixGLIntel;
  xwaylandvideobridge = pkgs.writeShellScriptBin "xwaylandvideobridge" ''
    ${nixGL.nixGLIntel}/bin/nixGLIntel ${pkgs.xwaylandvideobridge}/bin/xwaylandvideobridge
  '';
} // builtins.listToAttrs (builtins.map (pkg: { name = pkgs.lib.getName pkg; value = pkg; }) common-dev-pkgs)
