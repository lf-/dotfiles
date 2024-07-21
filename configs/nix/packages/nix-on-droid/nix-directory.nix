# Copyright (c) 2019-2024 nix-on-droid, see AUTHORS. Licensed under MIT License, see LICENSE.
# This entire file is absurd. It should not be IFD'd and doing so is really expensive.
# It's IFD'ing to get the lix tarball to get the paths out of that which uhhhhhh.
# Just use a nix from nixpkgs?

{ config
, stdenvNoCC
, closureInfo
, prootTermux
, nix
, hostArch
, fetchurl
, lib
}:

let
  buildRootDirectory = "root-directory";

  prootTermuxClosure = closureInfo {
    rootPaths = [
      prootTermux
    ];
  };
in

stdenvNoCC.mkDerivation {
  name = "nix-directory";

  src = fetchurl {
    url = "https://releases.lix.systems/lix/lix-2.90.0/lix-2.90.0-${hostArch}-linux.tar.xz";
    name = "source";
    sha256 = ({ aarch64 = "sha256-40tA0ksFTjHMHRCb8eq3gz5PbFA5OCR/1UlHEY+/02k="; }).${hostArch};
  };

  nativeBuildInputs = [
    nix
  ];

  PROOT_NO_SECCOMP = 1; # see https://github.com/proot-me/PRoot/issues/106

  buildPhase = ''
    # create nix state directory to satisfy nix heuristics to recognize the manual create /nix directory as valid nix store
    mkdir --parents ${buildRootDirectory}/nix/var/nix/db
    cp --recursive store ${buildRootDirectory}/nix/store

    CACERT=$(find ${buildRootDirectory}/nix/store -path '*-nss-cacert-*/ca-bundle.crt' | sed 's,^${buildRootDirectory},,')
    PKG_BASH=$(find ${buildRootDirectory}/nix/store -path '*/bin/bash' | sed 's,^${buildRootDirectory},,')
    PKG_BASH=''${PKG_BASH%/bin/bash}
    PKG_NIX=$(find ${buildRootDirectory}/nix/store -path '*/bin/nix' | sed 's,^${buildRootDirectory},,')
    PKG_NIX=''${PKG_NIX%/bin/nix}

    for i in $(< ${prootTermuxClosure}/store-paths); do
      cp --archive "$i" "${buildRootDirectory}$i"
    done

    USER=${config.user.userName} NIX_STORE_DIR=${buildRootDirectory} nix-store --init
    USER=${config.user.userName} NIX_STORE_DIR=${buildRootDirectory} nix-store --load-db < .reginfo
    USER=${config.user.userName} NIX_STORE_DIR=${buildRootDirectory} nix-store --load-db < ${prootTermuxClosure}/registration

    cat > package-info.nix <<EOF
    {
      bash = "$PKG_BASH";
      cacert = "$CACERT";
      nix = "$PKG_NIX";
    }
    EOF
  '';

  installPhase = ''
    mkdir $out
    cp --recursive ${buildRootDirectory}/nix/store $out/store
    cp --recursive ${buildRootDirectory}/nix/var $out/var
    install -D -m 0644 package-info.nix $out/nix-support/package-info.nix
  '';

  fixupPhase = "true";
}
