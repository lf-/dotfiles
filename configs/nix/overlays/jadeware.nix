final: prev: {
  vim-swapfile-header = final.callPackage ../../../programs/vim-swapfile-header/package.nix { };
  nvimsplit = final.callPackage ../../../programs/nvimsplit/package.nix { };
  nvremote = final.callPackage ../../../programs/nvremote/package.nix { };

  # FIXME: https://github.com/NixOS/nixpkgs/pull/385865
  git-revise = prev.git-revise.overrideAttrs (old: {
    disabledTests =
      assert !(old ? disabledTests);
      prev.lib.optionals final.stdenv.hostPlatform.isDarwin [
        # `gpg: agent_genkey failed: No agent running`
        "test_gpgsign"
      ];
  });
}
