final: prev:
let
  inherit (final) callPackage darwin;
in
{
  spr-sunshowers = callPackage ../packages/spr-sunshowers/package.nix {
    inherit (darwin.apple_sdk.frameworks) Security;
  };
  openttd-claire = callPackage ../packages/claire-openttd/package.nix { };
  jellyfin-plugin-sso = callPackage ../packages/jellyfin-plugin-sso/package.nix { };
  opengist = callPackage ../packages/opengist/package.nix { };
  gerrit-oauth-provider = callPackage ../packages/gerrit-oauth-provider/package.nix { };
  clangbuildanalyzer = callPackage ../packages/clangbuildanalyzer/package.nix { };
  xunit-viewer = callPackage ../packages/xunit-viewer/package.nix { };
  intel-vtune = callPackage ../packages/intel-vtune/package.nix { };
  linuxPackages = prev.linuxPackages.extend (kfinal: kprev: {
    vtune-sepdk = kfinal.callPackage ../packages/vtune-sepdk/package.nix { };
  });
  libsafec = callPackage ../packages/intel-vtune/libsafec.nix { };
}
