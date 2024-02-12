{ lib, fetchFromGitHub, rustPlatform, stdenv, Security }:
rustPlatform.buildRustPackage {
  pname = "spr";
  version = "1.3.6-beta.1";

  src = fetchFromGitHub {
    owner = "sunshowers";
    repo = "spr";
    rev = "13cfcfe21f6cd2cbbea18ce21af64e77e00c949f";
    hash = "sha256-1Otlw3ZFGrDdIewj9Sq4Mr4ALkrYfm1s7UYLDPoVwWQ=";
  };

  cargoHash = "sha256-EOt4e0gqzwGXSMcCbkrvuMy2hu5G0MRyGIJfNgRI3oc=";

  buildInputs = lib.optional stdenv.isDarwin Security;

  meta = with lib; {
    description = "Submit pull requests for individual, amendable, rebaseable commits to GitHub; fork with jj";
    homepage = "https://github.com/sunshowers/spr";
    license = licenses.mit;
  };
}
