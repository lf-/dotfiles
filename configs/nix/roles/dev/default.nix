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
  hsutilsOverlay = import ../../../../programs/hsutils/overlay.nix { ghcVer = "ghc94"; };

  common-dev-pkgs = import ./common-packages.nix pkgs;

in
{
  environment.systemPackages = common-dev-pkgs ++ (with pkgs; [
    direnv

    gitAndTools.delta

    ripgrep
    dtach
    tmux
    gh
    fd
    gdb
    jq
    graphviz
    ctags
    moreutils
    git-lfs

    xxd

    p7zip
    unzip

    iotop
    nethogs
    ethtool
    dogdns
    bind.dnsutils
    tcpdump

    msmtp

    man-pages
    man-pages-posix

    (python3.withPackages pyPkgs)
  ]);

  nixpkgs.overlays = [
    hsutilsOverlay
    (import ../../overlays/gitignore.nix { inherit (config.jade.dep-inject) gitignore; })
    (import ../../overlays/jadeware.nix)
    (import ../../overlays/rr.nix)
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
