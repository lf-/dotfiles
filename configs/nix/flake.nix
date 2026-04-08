{
  description = "Computers with the nixos";
  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixos-unstable-small/nixexprs.tar.xz";
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
      inputs.home-manager.follows = "";
      inputs.darwin.follows = "";
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
    , nix-on-droid
    , ...
    }:
    let
      dep-inject = {
        imports = [ ./modules/dep-inject.nix lanzaboote.nixosModules.lanzaboote ];
        jade.dep-inject = {
          inherit polkadots aiobspwm aiopanel gitignore nixpkgs qyriad-nur;
        };
      };
    in
    {
      inherit nixpkgs inputs dep-inject;
      np = builtins.storePath nixpkgs.path;
      nixosConfigurations.snowflake = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./machines/snowflake
          dep-inject
        ];
      };
      nixosConfigurations.snow-bot = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./machines/snow-bot
          dep-inject
        ];
      };
      nixosConfigurations.icecream = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./machines/icecream
          dep-inject
        ];
      };
      nixosConfigurations.micro = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./machines/micro
          dep-inject
        ];
      };
      nixosConfigurations.thinnernix = nixpkgs.lib.nixosSystem {
        modules = [
          ./machines/thinnernix
          dep-inject
        ];
      };
      nixosConfigurations.voracle = nixpkgs.lib.nixosSystem {
        system = "aarch64-linux";
        modules = [
          ./machines/voracle
          dep-inject
          agenix.nixosModules.default
        ];
      };
      nixosConfigurations.iso = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./roles/iso
          dep-inject
        ];
      };
      nixosConfigurations.cube = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./machines/cube
          dep-inject
          agenix.nixosModules.default
        ];
      };

    } // (flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs {
        config.allowUnfree = true;
        overlays = (import ./overlays/patches) ++ [
          (import ./overlays/aiopanel.nix { inherit aiobspwm aiopanel; })
          (import ./overlays/gitignore.nix { gitignore = inputs.gitignore; })
          (import ./overlays/polkadots.nix { inherit polkadots; })
          (import ../../programs/hsutils/overlay.nix { ghcVer = "ghc98"; })
          (import ./overlays/jadeware.nix)
          (import ./overlays/vendor-pkgs.nix)
          # FIXME: this is obviously nonsense and this other stuff should just
          # get migrated later.
          (import ./overlays/packages.nix)
          (import ./overlays/lix.nix)
        ];
        inherit system;
      };
    in
    {
      devShells = {
        default = pkgs.mkShell {
          packages = with pkgs; [
            nixos-rebuild
            agenix.packages.${system}.default
            age
            bashInteractive
          ];
        };
      };

      legacyPackages = {
        inherit pkgs;
        nix-on-droid = pkgs.pkgsCross.aarch64-multiplatform.callPackage ./packages/nix-on-droid {
          nixpkgsInput = nixpkgs;
          inherit nix-on-droid;
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
