{
  description = "Computers with the nixos";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    # temporary patch due to kernel regression
    nixpkgs-bad.url = "github:nixos/nixpkgs/ce5e4a6";
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

    nixGL = {
      url = "github:guibou/nixGL";
      # I don't like their flake
      flake = false;
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
  };

  outputs = inputs@{ self, nixpkgs, polkadots, aiobspwm, aiopanel, flake-utils, gitignore, nixpkgs-bad, ... }:
    let dep-inject = {
      jade.dep-inject = {
        inherit polkadots aiobspwm aiopanel gitignore nixpkgs nixpkgs-bad;
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
        ];
      };
      nixosConfigurations.micro = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./machines/micro
          ./modules/dep-inject.nix
          dep-inject
        ];
      };
      nixosConfigurations.voracle = nixpkgs.lib.nixosSystem {
        system = "aarch64-linux";
        modules = [
          ./machines/voracle
          ./modules/dep-inject.nix
          dep-inject
        ];
      };

      devShells.x86_64-linux =
        let
          pkgs = import nixpkgs { system = "x86_64-linux"; };
        in
        {
          default = pkgs.mkShell {
            packages = with pkgs; [
              nixos-rebuild
            ];
          };
        };

      packages.x86_64-linux =
        let
          aiopanel = /home/jade/dev/aiopanel;
          pkgs = import nixpkgs {
            overlays = [
              (import ./overlays/aiopanel.nix { inherit aiobspwm aiopanel; })
              (import ./overlays/gitignore.nix { gitignore = inputs.gitignore; })
              (import ./overlays/jadeware.nix)
            ];
            system = "x86_64-linux";
          };
        in
        {
          inherit (pkgs) aiopanel vim-swapfile-header nvimsplit nvremote;
        };
    };
}
