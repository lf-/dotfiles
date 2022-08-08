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
  };

  outputs = { self, nixpkgs, polkadots, aiobspwm, aiopanel, flake-utils }:
    {
      nixosConfigurations.snowflake = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [ ./machines/snowflake ];
        specialArgs = {
          inherit polkadots aiobspwm aiopanel;
        };
      };

      packages.x86_64-linux.aiopanel =
        let
          aiopanel = /home/jade/dev/aiopanel;
          pkgs = import nixpkgs {
            overlays = [ (import ./overlays/aiopanel.nix { inherit aiobspwm aiopanel; }) ];
            system = "x86_64-linux";
          };
        in
        pkgs.aiopanel;
    };
}
