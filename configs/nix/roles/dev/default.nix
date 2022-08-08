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
    gitAndTools.delta
    git-revise
    ripgrep
    dtach
    tmux
    nix-doc
    rnix-lsp
    gh
    fd
    gdb
    direnv
    nix-direnv
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
