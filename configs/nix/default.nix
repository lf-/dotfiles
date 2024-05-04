{}:
let
  lock = builtins.fromJSON (builtins.readFile ./flake.lock);

  fetchGitHubLocked = lock: builtins.fetchTarball {
    url = "https://github.com/${lock.owner}/${lock.repo}/archive/${lock.rev}";
    sha256 = lock.narHash;
  };
  nixpkgs = fetchGitHubLocked lock.nodes.nixpkgs.locked;
  qyriad-nur = fetchGitHubLocked lock.nodes.qyriad-nur.locked;

  pkgs = import nixpkgs {
    overlays = [
      (import ./overlays/jadeware.nix)
      (import ./overlays/vendor-pkgs.nix)
    ];
  };
in
import ./local-packages.nix { inherit pkgs qyriad-nur; }
