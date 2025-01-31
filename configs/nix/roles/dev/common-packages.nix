# dev packages that are common between nixos and "env.nix" setups on non-nixos
#
# This includes everything that one would want that's not in Arch repos e.g.
{ pkgs, qyriad-nur, withHsutils, withGui ? false, wrapGui ? (x: x), withHaskell ? true }:
let
  qyriad-nur-packages = import qyriad-nur { inherit pkgs; };
in
with pkgs; builtins.filter (lib.meta.availableOn pkgs.stdenv.hostPlatform) [
  atuin
  cmake-language-server
  cntr
  flyctl
  git-credential-oauth
  git-absorb
  git-revise
  gitleaks
  npins
  nix-direnv
  nix-doc
  nix-eval-jobs
  nix-index
  nixfmt-rfc-style
  reuse
  nil
  rustfilt
  tinymist
  typst
  # https://github.com/NixOS/nixpkgs/pull/307337
  # diffoscope
  difftastic
  ruby-lsp
  rufo
  gopls
  python3Packages.python-lsp-server
  nodePackages.json-diff
  postgres-lsp

  xonsh

  xunit-viewer

  jujutsu

  rage
  age-plugin-yubikey
  age-plugin-tpm
  kanidm

  sqlite-interactive

  simple-http-server

  lieer
  notmuch
  notmuch-mutt

  clangbuildanalyzer

  nvimsplit
  vim-swapfile-header
  nvremote

  pycrashreport

  awscli2

  # FIXME: this probably should not be in here since it doesn't do much good
  # for VMs. but bleh effort.
  cyme
] ++ lib.optionals withHsutils [
  (pkgs.haskell.lib.justStaticExecutables hsutils)
] ++ lib.optionals withGui (builtins.map wrapGui [
  # qyriad-nur-packages.cinny
]) ++ lib.optionals withHaskell [
  shellcheck
  nodePackages.bash-language-server
  nix-output-monitor
  nix-diff
  niv
  phpPackages.php-cs-fixer
  phpactor
]
