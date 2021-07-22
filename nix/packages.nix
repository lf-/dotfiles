{ pkgs }: {
  base = with pkgs; [
    neovim
    git
    polkadots
    nodejs
    zsh
  ];

  dev = with pkgs; [
    gitAndTools.delta
    gcc
    clang_12
  ];
}
