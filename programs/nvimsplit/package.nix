{ rustPlatform, libiconv, pkg-config, gitignoreSource }:
rustPlatform.buildRustPackage {
  pname   = "nvimsplit";
  version = "0.0.0";

  cargoLock.lockFile = ./Cargo.lock;

  src = gitignoreSource ./.;

  nativeBuildInputs = [
    pkg-config
  ];

  buildInputs = [
    libiconv
  ];
}
