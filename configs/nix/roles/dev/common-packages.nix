# dev packages that are common between nixos and "env.nix" setups on non-nixos
#
# This includes everything that one would want that's not in Arch repos e.g.
{ pkgs, qyriad-nur, withHsutils, withGui ? false, wrapGui ? (x: x) }:
let
  qyriad-nur-packages = import qyriad-nur { inherit pkgs; };
in
with pkgs; [
  atuin
  cachix
  cmake-language-server
  cntr
  flyctl
  git-credential-oauth
  git-absorb
  git-revise
  niv
  npins
  nix-direnv
  nix-doc
  nix-eval-jobs
  nix-index
  nixpkgs-fmt
  nodePackages.bash-language-server
  phpPackages.php-cs-fixer
  phpactor
  reuse
  nil
  rustfilt
  shellcheck
  typst-lsp
  typst
  # https://github.com/NixOS/nixpkgs/pull/307337
  # diffoscope
  difftastic
  ruby-lsp
  rufo
  gopls
  python3Packages.python-lsp-server
  nodePackages.json-diff

  jujutsu

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

  clangbuildanalyzer

  nvimsplit
  vim-swapfile-header
  nvremote
] ++ lib.optionals withHsutils [
  (pkgs.haskell.lib.justStaticExecutables hsutils)
] ++ lib.optionals withGui (builtins.map wrapGui [
  qyriad-nur-packages.cinny
])
