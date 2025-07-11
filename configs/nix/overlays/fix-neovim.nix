final: prev: {
  neovim-unwrapped = prev.neovim-unwrapped.overrideAttrs (old: {
    patches = (old.patches or []) ++ [
      ./patches/neovim/0001-fix-vim.json-stop-corrupting-large-numbers.patch
    ];
  });
}
