let
  sources = import ./nix/sources.nix;
in
{ nixpkgs ? import <nixpkgs> }:
let
  pkgs = nixpkgs { };
  inherit (import sources.gitignore { inherit (pkgs) lib; }) gitignoreSource;
in
pkgs.rustPlatform.buildRustPackage {
  pname   = "nvimsplit";
  version = "0.0.0";

  cargoLock.lockFile = ./Cargo.lock;

  src = gitignoreSource ./.;

  nativeBuildInputs = with pkgs; [
    pkg-config
  ];

  buildInputs = with pkgs; [
    libiconv
  ];
}
