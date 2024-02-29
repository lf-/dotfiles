# dev packages that are common between nixos and "env.nix" setups on non-nixos
#
# This includes everything that one would want that's not in Arch repos e.g.
{ pkgs, withHsutils }: with pkgs; [
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
  nix-eval-jobs
  nix-index
  nixpkgs-fmt
  nodePackages.bash-language-server
  phpPackages.php-cs-fixer
  phpactor
  reuse
  rnix-lsp
  nixd
  nil
  rustfilt
  shellcheck
  typst-lsp
  typst
  diffoscope
  ruby-lsp
  rufo
  gopls

  rage
  age-plugin-yubikey
  age-plugin-tpm
  kanidm

  sqlite-interactive

  nix-output-monitor

  simple-http-server

  lieer
  notmuch
  notmuch-mutt

  nvimsplit
  vim-swapfile-header
  nvremote
] ++ lib.optionals withHsutils [
  (pkgs.haskell.lib.justStaticExecutables hsutils)
]
