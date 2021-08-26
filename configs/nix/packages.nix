{ pkgs }: {
  base = with pkgs; [
    file
    neovim
    git
    polkadots
    nodejs
    rustup
    zsh
  ];

  dev = with pkgs; [
    nix-index
    gitAndTools.delta
    ripgrep
    dtach
    tmux
    nix-doc
    rnix-lsp
    gcc
    clang_12
  ];
}
