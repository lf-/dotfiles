final: prev:
let inherit (final) callPackage darwin; in {
  spr-sunshowers = callPackage ../packages/spr-sunshowers/package.nix { inherit (darwin.apple_sdk.frameworks) Security; };
  openttd-claire = callPackage ../packages/claire-openttd/package.nix { };
}
