{ pkgs }: {
  base = with pkgs; [
    neovim
    git
    polkadots
    nodejs
    rustup
    zsh
  ];

  dev = with pkgs; [
    gitAndTools.delta
    ripgrep
    nix-doc
    rnix-lsp
    gcc
    clang_12
  ];
}
