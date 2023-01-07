{ pkgs, config, lib, ... }:
let
  pyPkgs = ppkgs: with ppkgs; [
    ipython
    ipython-sql
    # jacked on macos currently https://github.com/NixOS/nixpkgs/issues/185918
    # pgcli
    requests
    tkinter
    pyperclip

    pip
    yapf

    numpy
  ];
  hsutilsOverlay = import ../../../../programs/hsutils/overlay.nix { ghcVer = "ghc924"; };

in
{
  environment.systemPackages = with pkgs; [
    nix-index
    nix-doc
    rnix-lsp
    nix-direnv
    direnv

    gitAndTools.delta
    git-revise
    git-absorb

    (pkgs.haskell.lib.justStaticExecutables hsutils)

    ripgrep
    dtach
    tmux
    gh
    fd
    gdb
    jq
    graphviz
    ctags
    reuse

    unzip

    ethtool
    dogdns
    bind.dnsutils

    msmtp

    man-pages
    man-pages-posix

    (python3.withPackages pyPkgs)
  ];

  nixpkgs.overlays = [
    hsutilsOverlay
  ];

  nix.extraOptions = lib.mkMerge [
    (lib.mkIf pkgs.stdenv.isLinux ''
      plugin-files = ${pkgs.nix-doc}/lib/libnix_doc_plugin.so
    '')
    (lib.mkIf pkgs.stdenv.isDarwin ''
      plugin-files = ${pkgs.nix-doc}/lib/libnix_doc_plugin.dylib
    '')
    ''
      # nix-direnv
      keep-outputs = true
      keep-derivations = true
    ''
  ];

  nix.settings.trusted-substituters = [
    "https://haskell-language-server.cachix.org"
  ];

  environment.pathsToLink = [
    "/share/nix-direnv"
  ];
}
