{ buildNpmPackage, fetchFromGitHub, lib }:
buildNpmPackage rec {
  pname = "xunit-viewer";
  version = "10.6.1";

  src = fetchFromGitHub {
    owner = "lukejpreston";
    repo = "xunit-viewer";
    rev = "v${version}";
    hash = "sha256-n9k1Z/wofExG6k/BxtkU8M+Lo3XdCgCh8VFj9jcwL1Q=";
  };

  npmDepsHash = "sha256-6PV0+G1gzUWUjOfwRtVeALVFFiwkCAB33yB9W0PCGfc=";

  meta = {
    description = "Viewer for XUnit test reports";
    homepage = "https://github.com/lukejpreston/xunit-viewer";
    maintainers = [ lib.maintainers.lf- ];
    license = lib.licenses.mit;
  };
}
