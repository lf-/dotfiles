{ lib, buildGoModule, buildNpmPackage, fetchFromGitHub, moreutils, jq, git }:
let
  frontend = buildNpmPackage {
    pname = "opengist-frontend";
    inherit version src;

    nativeBuildInputs = [ moreutils jq ];
    # npm complains of "invalid package". shrug. we can give it a version.
    postPatch = ''
      jq '.version = "${version}"' package.json | sponge package.json
    '';

    # copy pasta from the Makefile upstream
    postBuild = ''
      EMBED=1 npx postcss 'public/assets/embed-*.css' -c public/postcss.config.js --replace
    '';

    installPhase = ''
      mkdir -p $out
      cp -R public $out
    '';

    npmDepsHash = "sha256-Sy321tIQOOrypk+EOGGixEzrPdhA9U8Hak+DOS+d00A=";
  };

  version = "1.6.1";
  src = fetchFromGitHub {
    owner = "thomiceli";
    repo = "opengist";
    rev = "v${version}";
    hash = "sha256-rJ8oiH08kSSFNgPHKGo68Oi1i3L1SEJyHuzoxKMOZME=";
  };
in
buildGoModule {
  pname = "opengist";
  inherit version src;
  vendorHash = "sha256-IorqXJKzUTUL5zfKRipZaJtRlwVOmTwolJXFG/34Ais=";
  tags = [
    "fs_embed"
  ];

  nativeBuildInputs = [
    git
  ];

  postPatch = ''
    cp -R ${frontend}/public/{manifest.json,assets} public/
  '';

  env = {
    OG_OPENGIST_HOME = "/tmp/opengist";
  };

  passthru.frontend = frontend;

  meta = {
    description = "Self-hosted pastebin powered by Git";
    homepage = "https://github.com/thomiceli/opengist";
    license = lib.licenses.agpl3Only;
    maintainers = with lib.maintainers; [ lf- ];
    platforms = lib.platforms.unix;
  };
}
