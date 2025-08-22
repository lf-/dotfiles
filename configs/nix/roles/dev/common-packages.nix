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
  git-credential-oauth
  git-absorb
  git-revise
  gitleaks
  npins
  nix-direnv
  nix-doc
  nix-eval-jobs
  nix-index
  nix-tree
  nix-fast-build
  nixfmt-rfc-style
  reuse
  nil
  # FIXME: really slow to build
  # tinymist
  typst
  # https://github.com/NixOS/nixpkgs/pull/307337
  # diffoscope
  difftastic
  mergiraf
  ruby-lsp
  rufo
  gopls
  python3Packages.python-lsp-server
  nodePackages.json-diff
  postgres-lsp
  hyperfine
  taplo
  # Source code line counter
  tokei
  keep-sorted

  gitoxide

  # Better rust test runner
  cargo-nextest
  # Runs cargo check when you save
  cargo-watch
  # Rust snapshot test runner
  cargo-insta
  cargo-mommy

  # idk if this is a good idea due to work having a different build, but it
  # will make completions work. yolo!
  buck2
  bazel-buildtools

  xonsh

  xunit-viewer

  jujutsu
  graphite-cli

  rage
  age-plugin-yubikey
  age-plugin-tpm
  kanidm

  sqlite-interactive

  simple-http-server

  clangbuildanalyzer

  nvimsplit
  vim-swapfile-header
  nvremote

  # Python package manager
  uv

  # facebook yolo run binaries from the internet tool
  dotslash

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
  # broken
  # phpPackages.php-cs-fixer
  # phpactor
]
