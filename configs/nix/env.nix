# stuff to install with nix-env. Uses system channels, which is kind of hot
# trash, but it syncs with the current nix version.
let
  pkgs = import <nixpkgs> {
    overlays = [
      (import ../../programs/hsutils/overlay.nix { ghcVer = "ghc924"; })
    ];
  };

  inherit (pkgs.haskell.lib) justStaticExecutables;
in
{
  inherit (pkgs) cachix niv nix-doc nix-direnv rnix-lsp shellcheck nix-index
    flyctl nixpkgs-fmt cmake-language-server
    ;
  inherit (pkgs.nodePackages) bash-language-server;
  hsutils = justStaticExecutables pkgs.hsutils;
}
