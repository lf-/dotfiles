info: final: prev:
let
  optionalAttrs = predicate: attrs: if predicate then attrs else { };
in
(optionalAttrs (prev ? legacyPackages && prev.legacyPackages ? ${info.currentSystem}) {
  pkgs = prev.legacyPackages.${info.currentSystem};
})
// {
  spkgs = import <nixpkgs> { };
  slib = final.spkgs.lib;
}
