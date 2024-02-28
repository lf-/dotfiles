{}:
let
  lock = builtins.fromJSON (builtins.readFile ./flake.lock);
  nixpkgsLock = lock.nodes.nixpkgs.locked;
  nixpkgs = builtins.fetchTarball {
    url = "https://github.com/${nixpkgsLock.owner}/${nixpkgsLock.repo}/archive/${nixpkgsLock.rev}";
    sha256 = nixpkgsLock.narHash;
  };

  pkgs = import nixpkgs {
    overlays = [
      (import ./overlays/jadeware.nix)
      (import ./overlays/vendor-pkgs.nix)
    ];
  };
in
import ./local-packages.nix pkgs
