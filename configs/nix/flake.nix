{
  description = "Computers with the nixos";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    polkadots = {
      url = "github:lf-/polkadots";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, polkadots, flake-utils }: {
    nixosConfigurations.snowflake = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./machines/snowflake ];
      specialArgs = {
        inherit polkadots;
      };
    };
  };
}
