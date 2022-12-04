let
  sources = import ./nix/sources.nix;
in
{ nixpkgs ? import <nixpkgs> }:
let
  pkgs = nixpkgs { };
  inherit (import sources.gitignore { inherit (pkgs) lib; }) gitignoreSource;
in
pkgs.callPackage ./package.nix { }
