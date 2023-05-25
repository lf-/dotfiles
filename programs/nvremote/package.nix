{ rustPlatform, libiconv, pkg-config, gitignoreSource }:
rustPlatform.buildRustPackage {
  pname   = "nvremote";
  version = "0.0.0";

  cargoLock.lockFile = ./Cargo.lock;

  src = gitignoreSource ../.;
  sourceRoot = "source/nvremote";

  nativeBuildInputs = [
    pkg-config
  ];

  buildInputs = [
    libiconv
  ];
}
