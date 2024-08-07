# From nix-on-droid code
{ lib
, pkgs
, nix-on-droid
, nixpkgsInput
, lix
, hostArch
}:
let
  callPackage = pkgs.lib.callPackageWith (
    pkgs // customPkgs // {
      inherit (modules) config;
      inherit callPackage nixDirectory initialPackageInfo;
      targetSystem = "${hostArch}-linux";
    }
  );
  initial-store = callPackage ./initial-store.nix { };
  nixDirectory = initial-store.store;
  initialPackageInfo = initial-store.initialPackageInfo;

  modules = import "${nix-on-droid}/modules" {
    inherit pkgs;
    targetSystem = "${hostArch}-linux";

    isFlake = true;

    config = {
      imports = [ "${nix-on-droid}/modules/build/initial-build.nix" ];

      _module.args = {
        inherit initialPackageInfo;
        pkgs = pkgs.lib.mkForce pkgs; # to override ./modules/nixpkgs/config.nix
      };

      system.stateVersion = "24.05";

      # Fix invoking bash after initial build.
      user.shell = "${initialPackageInfo.bash}/bin/bash";

      build = {
        channel = {
          nixpkgs = "flake:nixpkgs";
          nix-on-droid = "flake:nix-on-droid";
        };

        flake.nix-on-droid = "github:nix-community/nix-on-droid/${nix-on-droid.rev}";

        flake.nixpkgs = "github:nixos/nixpkgs/${nixpkgsInput.rev}";

        # because the way this is done by default is *absurd* builtins.storePath crimes
        environment.files.prootStatic = customPkgs.prootTermux;
      };
    };
  };

  crossPkgs = callPackage ./cross.nix { inherit nix-on-droid hostArch; };

  customPkgs = {
    bootstrap = callPackage "${nix-on-droid}/pkgs/bootstrap.nix" { };
    bootstrapZip = callPackage "${nix-on-droid}/pkgs/bootstrap-zip.nix" { };
    prootTermux = crossPkgs.callPackage "${nix-on-droid}/pkgs/proot-termux" {
      talloc = customPkgs.tallocStatic;
      stdenv = crossPkgs.stdenvAdapters.makeStaticBinaries crossPkgs.stdenv;
    };
    # vendored since it hopelessly depended on source layout
    tallocStatic = lib.mkImageMediaOverride crossPkgs.callPackage ./talloc-static.nix { };
  };
in
{
  inherit (modules) config;
  inherit customPkgs;
}
