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
  let hlib = prev.haskell.lib; in
  {
    hsutils = hprev.callCabal2nix "hsutils" ./. { };
  })
