{ ghcVer
}:
let pkgs = import ../../../dev/nixpkgs { };
in

pkgs.mkShell {
  packages = with pkgs; [ haskell.packages.${ghcVer}.ghc cabal-install zlib xz ];
}

