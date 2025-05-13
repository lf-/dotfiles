{
  description = "Small utilities written in haskell";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  nixConfig.allow-import-from-derivation = true; # cabal2nix uses IFD

  outputs = { self, nixpkgs, flake-utils }:
    let
      ghcVer = "ghc98";

      out = system:
        let
          pkgs = import nixpkgs {
            inherit system;
            overlays = [ self.overlays.default ];
            config.allowBroken = true;
          };

        in
        {
          packages = rec {
            default = hsutils;
            inherit (pkgs.haskell.packages.${ghcVer}) hsutils perfetto-proto;
          };

          checks = {
            inherit (self.packages.${system}) hsutils;
          };

          # for debugging
          # inherit pkgs;

          devShells.default =
            let haskellPackages = pkgs.haskell.packages.${ghcVer};
            in
            haskellPackages.shellFor {
              packages = p: with self.packages.${system}; [ hsutils perfetto-proto ];
              withHoogle = true;
              buildInputs = with haskellPackages; [
                haskell-language-server
                fourmolu
                cabal-install
                # proto-lens-protoc
              ] ++ (with pkgs; [
                bashInteractive
                nix-prefetch-git
                sqlite
                protobuf
              ]);
              # Change the prompt to show that you are in a devShell
              # shellHook = "export PS1='\\e[1;34mdev > \\e[0m'";
            };
        };
    in
    flake-utils.lib.eachDefaultSystem out // {
      # this stuff is *not* per-system
      overlays = {
        default = import ./overlay.nix { inherit ghcVer; };
      };
    };
}
