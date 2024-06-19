{ lib, rustPlatform, libiconv, pkg-config, gitignoreSource }:
rustPlatform.buildRustPackage {
  pname   = "nvremote";
  version = "0.0.0";

  cargoLock.lockFile = ./Cargo.lock;

  src = lib.fileset.toSource {
    root = ../.;
    fileset = lib.fileset.unions [
      ../vim-swapfile-header/src
      ../vim-swapfile-header/Cargo.toml
      ../vim-swapfile-header/Cargo.lock
      ./Cargo.toml
      ./Cargo.lock
      ./src
    ];
  };
  sourceRoot = "source/nvremote";

  nativeBuildInputs = [
    pkg-config
  ];

  buildInputs = [
    libiconv
  ];
}
