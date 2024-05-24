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
    dbus-python

    pip
    yapf

    numpy
  ];
  hsutilsOverlay = import ../../../../programs/hsutils/overlay.nix { ghcVer = "ghc96"; };

  common-dev-pkgs = import ./common-packages.nix { inherit pkgs; inherit (cfg) withHsutils withGui; inherit (config.jade.dep-inject) qyriad-nur; };

  cfg = config.jade.dev;
  inherit (lib) mkOption;
in
{
  imports = [ ../debug ];
  options = {
    jade.dev.withHsutils = mkOption {
      default = true;
      type = lib.types.bool;
      description = ''Include hsutils (mildly expensive to build) in the closure'';
    };
    jade.dev.withGui = mkOption {
      default = true;
      type = lib.types.bool;
      description = ''Include gui stuff in the closure'';
    };
  };

  config = {
    environment.systemPackages = common-dev-pkgs ++ (with pkgs; [
      direnv

      gitAndTools.delta

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

      msmtp

      man-pages
      man-pages-posix

      (python3.withPackages pyPkgs)
    ]);

    nixpkgs.overlays = [
      hsutilsOverlay
      (import ../../overlays/gitignore.nix { inherit (config.jade.dep-inject) gitignore; })
      (import ../../overlays/jadeware.nix)
    ];

    nix.settings = {
      # nix-direnv
      keep-outputs = true;
      keep-derivations = true;
    };

    nix.settings.trusted-substituters = [
      "https://haskell-language-server.cachix.org"
    ];

    environment.pathsToLink = [
      "/share/nix-direnv"
    ];
  };
}
