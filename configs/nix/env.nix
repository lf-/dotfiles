# stuff to install with nix-env. Uses system channels, which is kind of hot
# trash, but it syncs with the current nix version.
let
  pkgs = import <nixpkgs> {
    overlays = [
      (import ../../programs/hsutils/overlay.nix { ghcVer = "ghc924"; })
    ];
  };
  common-dev-pkgs = import ./roles/dev/common-packages.nix pkgs;

  inherit (pkgs.haskell.lib) justStaticExecutables;
in
{
  inherit (pkgs) librespot;
  inherit (pkgs.nodePackages) bash-language-server;
  hsutils = justStaticExecutables pkgs.hsutils;
} // builtins.listToAttrs (builtins.map (pkg: { name = pkgs.lib.getName pkg; value = pkg; }) common-dev-pkgs)
