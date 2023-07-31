# dev packages that are common between nixos and "env.nix" setups on non-nixos
#
# This includes everything that one would want that's not in Arch repos e.g.
pkgs: with pkgs; [
  cachix
  cmake-language-server
  cntr
  flyctl
  git-credential-oauth
  git-absorb
  git-revise
  niv
  nix-direnv
  nix-doc
  nix-index
  nixpkgs-fmt
  nodePackages.bash-language-server
  phpPackages.php-cs-fixer
  phpactor
  reuse
  rnix-lsp
  rustfilt
  shellcheck
  typst-lsp
  typst

  (pkgs.haskell.lib.justStaticExecutables hsutils)
  nvimsplit
  vim-swapfile-header
  nvremote
]
