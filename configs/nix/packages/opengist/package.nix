{ lib, buildGoModule, buildNpmPackage, fetchFromGitHub, moreutils, jq, git }:
let
  frontend = buildNpmPackage {
    pname = "opengist-frontend";
    inherit version src;

    nativeBuildInputs = [ moreutils jq ];
    # npm complains of "invalid package". shrug. we can give it a version.
    preBuild = ''
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

    npmDepsHash = "sha256-QdZPO5UWY3cXyrjsQu6MkWbQHznb/GJSNJxSkhZRm50=";
  };

  version = "1.7-dev20240224";
  src = fetchFromGitHub {
    owner = "thomiceli";
    repo = "opengist";
    rev = "390a18a143020838734fc020ff7eec4163d826fb";
    hash = "sha256-9lxNiohyjtlqeR9A+jb+iMJMQEArnVuVdBp8FcpoyPk=";
  };
in
buildGoModule {
  pname = "opengist";
  inherit version src;
  vendorHash = "sha256-ub1XQdzX+7oKyaGrZ7nnhxKK8tidRIlGonGjUACn+yI=";
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
