# stuff to install with nix-env. Uses system channels, which is kind of hot
# trash, but it syncs with the current nix version.
let
  pkgs = import <nixpkgs> {
    overlays = [
      (import ../../programs/hsutils/overlay.nix { ghcVer = "ghc924"; })
    ];
  };
in
{
  inherit (pkgs) cachix niv nix-doc nix-direnv rnix-lsp shellcheck nix-index
    flyctl hsutils
    ;
}
