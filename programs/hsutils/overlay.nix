# for horrible horrible flake compatibility reasons, flake inputs are not
# usable from nixos modules:
# <nixpkgs/nixos> must evaluate, which means that specialArgs are bad
# getFlake doesn't want to do relative paths
#
# so what am I to do but to ignore flakes for this?
{ ghcVer }:
let
  makeHaskellOverlay = exports: overlay: final: prev: {
    haskell = prev.haskell // {
      packages = prev.haskell.packages // {
        ${ghcVer} = prev.haskell.packages."${ghcVer}".override (oldArgs: {
          overrides =
            prev.lib.composeExtensions (oldArgs.overrides or (_: _: { }))
              (overlay prev);
        });
      };
    };
  } // prev.lib.getAttrs exports final.haskell.packages.${ghcVer};

in
makeHaskellOverlay [ "hsutils" ] (prev: hfinal: hprev:
let
  hlib = prev.haskell.lib;
  pathFilter = path: type:
    prev.lib.hasSuffix ".cabal" path
    || baseNameOf path == "package.yaml"
    || builtins.any (pat: builtins.match pat path != null)
      [
        ".*perfetto-proto(/package.yaml)?"
      ];
in
{
  hsutils = hprev.callCabal2nix "hsutils" ./. { };
  # https://github.com/google/ghc-source-gen/pull/102
  ghc-source-gen = hprev.callCabal2nix "ghc-source-gen"
    (prev.fetchFromGitHub {
      owner = "circuithub";
      repo = "ghc-source-gen";
      rev = "7a6aac047b706508e85ba2054b5bedbecfd7eb7a";
      hash = "sha256-DZu3XAOYLKcSpOYhjpb6IuXMvRHtGohTkL0nsCb/dT0=";
    })
    { };
  proto-lens-protoc = hlib.doJailbreak hprev.proto-lens-protoc;
  perfetto-proto = hprev.callCabal2nix "perfetto-proto" (builtins.filterSource pathFilter ./perfetto-proto) { };
})
