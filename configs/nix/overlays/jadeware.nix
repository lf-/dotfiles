final: prev: {
  vim-swapfile-header = final.callPackage ../../../programs/vim-swapfile-header/package.nix { };
  nvimsplit = final.callPackage ../../../programs/nvimsplit/package.nix { };
  nvremote = final.callPackage ../../../programs/nvremote/package.nix { };
}
