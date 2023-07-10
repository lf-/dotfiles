attrs@{ overlays ? [ ] }:
let
  overlay = self: super: {
    xwaylandvideobridge = self.libsForQt5.callPackage ./. { };
  };
  pkgs = import <nixpkgs> (attrs // { overlays = [ overlay ] ++ overlays; });
in
pkgs
