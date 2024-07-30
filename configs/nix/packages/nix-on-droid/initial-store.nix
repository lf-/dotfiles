{ lib, runCommand, closureInfo, writeText, prootTermux, nix, cacert, bashInteractive }:
let
  contents = [
    bashInteractive
    nix
    cacert
    prootTermux
  ];
  infoDrv = closureInfo { rootPaths = contents; };

  store = runCommand "initial-store"
  {
    env.INFO_DRV = infoDrv;
    nativeBuildInputs = [ nix ];
  }
  ''
    < $INFO_DRV/store-paths (while read -r path; do
      cp --archive $path $out$path
    done)
    NIX_STORE_DIR=$out nix-store --init
    NIX_STORE_DIR=$out nix-store --load-db < $INFO_DRV/registration
  '';
in
{
  initialPackageInfo = {
    bash = bashInteractive;
    inherit nix cacert;
  };
  inherit store;
}
