{ pkgs, config, lib, ... }:
let pyPkgs = ppkgs: with ppkgs; [
  ipython
  ipython-sql
  pgcli
  requests
  tkinter
  pyperclip
  pip

  numpy
]; in
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

    ripgrep
    dtach
    tmux
    gh
    fd
    gdb
    jq
    graphviz
    ctags

    (python3.withPackages pyPkgs)
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

  environment.pathsToLink = [
    "/share/nix-direnv"
  ];
}
