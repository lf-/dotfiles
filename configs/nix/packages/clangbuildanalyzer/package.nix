{ stdenv, lib, cmake, fetchFromGitHub}:
stdenv.mkDerivation (finalAttrs: {
  pname = "clangbuildanalyzer";
  version = "1.5.0";

  src = fetchFromGitHub {
    owner = "aras-p";
    repo = "ClangBuildAnalyzer";
    rev = "v${finalAttrs.version}";
    sha256 = "sha256-kmgdk634zM0W0OoRoP/RzepArSipa5bNqdVgdZO9gxo=";
  };

  nativeBuildInputs = [
    cmake
  ];
})
