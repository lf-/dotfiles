# dev packages that are common between nixos and "env.nix" setups on non-nixos
#
# This includes everything that one would want that's not in Arch repos e.g.
pkgs: with pkgs; [
  cachix
  cmake-language-server
  cntr
  flyctl
  niv
  nix-direnv
  nix-doc
  nix-index
  nixpkgs-fmt
  phpactor
  phpPackages.php-cs-fixer
  reuse
  rnix-lsp
  shellcheck
  rustfilt

  (pkgs.haskell.lib.justStaticExecutables hsutils)
  nvimsplit
  vim-swapfile-header
  nvremote
]
