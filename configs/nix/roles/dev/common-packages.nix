# dev packages that are common between nixos and "env.nix" setups on non-nixos
#
# This includes everything that one would want that's not in Arch repos e.g.
pkgs: with pkgs; [
  cachix
  cmake-language-server
  flyctl
  niv
  nix-direnv
  nix-doc
  nix-index
  nixpkgs-fmt
  reuse
  rnix-lsp
  shellcheck
]
