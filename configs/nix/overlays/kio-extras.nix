final: prev: {
  libsForQt5 = prev.libsForQt5.overrideScope (pfinal: pprev: {
    kio-extras = pprev.callPackage ../packages/kio-extras-ios/package.nix { kio-extras = pprev.kio-extras; };
  });
}
