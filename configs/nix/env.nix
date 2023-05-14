# stuff to install with nix-env. Uses system channels, which is kind of hot
# trash, but it syncs with the current nix version.
let
  pkgs = import <nixpkgs> {
    overlays = [
      (import ../../programs/hsutils/overlay.nix { ghcVer = "ghc927"; })
      (import ./overlays/xwaylandvideobridge.nix)
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

  inherit (pkgs.haskell.lib) justStaticExecutables;
in
{
  inherit (pkgs) librespot;
  inherit (nixGL) nixGLIntel;
  xwaylandvideobridge = pkgs.writeShellScriptBin "xwaylandvideobridge" ''
    ${nixGL.nixGLIntel}/bin/nixGLIntel ${pkgs.xwaylandvideobridge}/bin/xwaylandvideobridge
  '';
  inherit (pkgs.nodePackages) bash-language-server;
  hsutils = justStaticExecutables pkgs.hsutils;
} // builtins.listToAttrs (builtins.map (pkg: { name = pkgs.lib.getName pkg; value = pkg; }) common-dev-pkgs)
