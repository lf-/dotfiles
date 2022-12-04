{ rustPlatform, libiconv, pkg-config }:
rustPlatform.buildRustPackage {
  pname   = "nvimsplit";
  version = "0.0.0";

  cargoLock.lockFile = ./Cargo.lock;

  src = ./.;

  nativeBuildInputs = [
    pkg-config
  ];

  buildInputs = [
    libiconv
  ];
}
