{
  description = "Computers with the nixos";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    polkadots = {
      url = "github:lf-/polkadots";
      flake = false;
    };
    aiobspwm = {
      url = "github:lf-/aiobspwm";
      flake = false;
    };
    aiopanel = {
      url = "github:lf-/aiopanel";
      flake = false;
    };

    agenix = {
      url = "github:ryantm/agenix";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "flake-utils";
      inputs.darwin.follows = "flake-utils";
    };

    lanzaboote = {
      url = "github:nix-community/lanzaboote";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-compat.follows = "flake-compat";
    };

    qyriad-nur = {
      url = "github:qyriad/nur-packages";
      # flake packaging violates "1000 instances of nixpkgs"
      flake = false;
    };

    flakey-profile = {
      url = "github:lf-/flakey-profile";
    };

    gitignore = {
      url = "github:hercules-ci/gitignore";
      flake = false;
    };

    # my displeasure is hardly measurable
    flake-compat = {
      url = "github:edolstra/flake-compat";
      flake = false;
    };

    nix-on-droid = {
      url = "github:nix-community/nix-on-droid";
      flake = false;
    };

    lix = {
      url = "https://git.lix.systems/lix-project/lix/archive/main.tar.gz";
      flake = false;
    };

    lix-module = {
      url = "https://git.lix.systems/lix-project/nixos-module/archive/main.tar.gz";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-utils.follows = "flake-utils";
      inputs.lix.follows = "lix";
    };
  };

  outputs =
    inputs@{ self
    , nixpkgs
    , polkadots
    , aiobspwm
    , aiopanel
    , flake-utils
    , gitignore
    , agenix
    , lanzaboote
    , qyriad-nur
    , flakey-profile
    , lix-module
    , lix
    , nix-on-droid
    , ...
    }:
    let
      dep-inject = {
        imports = [ lanzaboote.nixosModules.lanzaboote ];
        jade.dep-inject = {
          inherit polkadots aiobspwm aiopanel gitignore nixpkgs qyriad-nur;
        };
      };
    in
    {
      inherit nixpkgs inputs;
      np = builtins.storePath nixpkgs.path;
      nixosConfigurations.snowflake = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./machines/snowflake
          ./modules/dep-inject.nix
          dep-inject
          lix-module.nixosModules.default
        ];
      };
      nixosConfigurations.icecream = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./machines/icecream
          ./modules/dep-inject.nix
          dep-inject
          lix-module.nixosModules.default
        ];
      };
      nixosConfigurations.micro = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./machines/micro
          ./modules/dep-inject.nix
          dep-inject
          lix-module.nixosModules.default
        ];
      };
      nixosConfigurations.voracle = nixpkgs.lib.nixosSystem {
        system = "aarch64-linux";
        modules = [
          ./machines/voracle
          ./modules/dep-inject.nix
          dep-inject
          agenix.nixosModules.default
          lix-module.nixosModules.default
        ];
      };
      nixosConfigurations.iso = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./roles/iso
          lix-module.nixosModules.default
        ];
      };
      nixosConfigurations.cube = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./machines/cube
          ./modules/dep-inject.nix
          dep-inject
          agenix.nixosModules.default
          lix-module.nixosModules.default
        ];
      };

      devShells.x86_64-linux =
        let
          system = "x86_64-linux";
          pkgs = import nixpkgs { inherit system; overlays = [ lix-module.overlays.default ]; };
        in
        {
          default = pkgs.mkShell {
            packages = with pkgs; [
              nixos-rebuild
              agenix.packages.${system}.default
              age
              bashInteractive
            ];
          };
        };
    } // (flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs {
        config.allowUnfree = true;
        overlays = [
          (import ./overlays/aiopanel.nix { inherit aiobspwm aiopanel; })
          (import ./overlays/gitignore.nix { gitignore = inputs.gitignore; })
          (import ./overlays/polkadots.nix { inherit polkadots; })
          (import ../../programs/hsutils/overlay.nix { ghcVer = "ghc96"; })
          (import ./overlays/jadeware.nix)
          (import ./overlays/vendor-pkgs.nix)
          lix-module.overlays.default
        ];
        inherit system;
      };
    in
    {
      inherit pkgs;
      legacyPackages = {
        nix-on-droid = pkgs.pkgsCross.aarch64-multiplatform.callPackage ./packages/nix-on-droid {
          nixpkgsInput = nixpkgs;
          inherit lix nix-on-droid;
          hostArch = "aarch64";
        };
      };
      packages =
        let
          aiopanel = /home/jade/dev/aiopanel;
        in
        (import ./local-packages.nix { inherit pkgs qyriad-nur; }) // {
          caddy-acmedns = pkgs.callPackage ./packages/caddy-acmedns/package.nix { };
          hsutils = pkgs.haskell.lib.justStaticExecutables pkgs.hsutils;
          iso = self.nixosConfigurations.iso.config.system.build.isoImage;

          profile = import ./profile.nix { inherit pkgs flakey-profile qyriad-nur nixpkgs; };
          profile-managed = import ./profile.nix { inherit pkgs flakey-profile qyriad-nur nixpkgs; isNixManaged = true; };
          system-profile = import ./system-profile.nix { inherit pkgs flakey-profile; };
        };
    }));
}
