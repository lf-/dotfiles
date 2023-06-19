# dev packages that are common between nixos and "env.nix" setups on non-nixos
#
# This includes everything that one would want that's not in Arch repos e.g.
pkgs: with pkgs; [
  cachix
  cmake-language-server
  cntr
  flyctl
  git-absorb
  git-revise
  niv
  nix-direnv
  nix-doc
  nix-index
  nixpkgs-fmt
  phpPackages.php-cs-fixer
  phpactor
  reuse
  rnix-lsp
  rustfilt
  shellcheck

  (pkgs.haskell.lib.justStaticExecutables hsutils)
  nvimsplit
  vim-swapfile-header
  nvremote
]
