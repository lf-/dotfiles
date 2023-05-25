# requires gitignore.nix overlay
{ rustPlatform, gitignoreSource }:
rustPlatform.buildRustPackage {
  pname   = "vim-swapfile-header";
  version = "0.1.0";

  cargoLock.lockFile = ./Cargo.lock;

  src = gitignoreSource ./.;

  nativeBuildInputs = [
  ];

  buildInputs = [
  ];
}
