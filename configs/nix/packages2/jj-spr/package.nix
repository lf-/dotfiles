{
  lib,
  rustPlatform,
  fetchFromGitHub,
  pkg-config,
  libgit2,
  jujutsu,
  gitMinimal,
  zlib,
  nix-update-script,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "jj-spr";
  version = "0-unstable-2026-07-28";
  __structuredAttrs = true;

  src = fetchFromGitHub {
    owner = "jennings";
    repo = "jj-spr";
    rev = "998ee83de8d7dee301a0109cc3feed421c86cae0";
    hash = "sha256-djt781zEGhvhsI9CnFxCkopICFHg/hLpo2RK2HO0mfY=";
  };

  cargoHash = "sha256-4fRM2fMlEFM9d/W4QyBrBebtsQpPuq4hELKQBU74FLE=";

  nativeBuildInputs = [
    pkg-config
    jujutsu
    gitMinimal
  ];

  # jj wants to put repo configs into $HOME so this doesn't work otherwise
  preCheck = ''
    export HOME="$(mktemp -d)"
    export XDG_CONFIG_HOME="$HOME/config"
  '';

  checkFlags = [
    # hates the nix sandbox or something idk man
    "--skip=config::tests::test_set_jj_config_multiple_values"
    "--skip=config::tests::test_set_jj_config_success"
  ];

  buildInputs = [
    libgit2
    zlib
  ];

  passthru.updateScript = nix-update-script { };

  meta = {
    description = "The power tool for Jujutsu + GitHub workflows. Adapted from spr by @LucioFranco";
    homepage = "https://github.com/jennings/jj-spr";
    changelog = "https://github.com/jennings/jj-spr/blob/${finalAttrs.src.rev}/CHANGELOG.md";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ lf- ];
    mainProgram = "jj-spr";
  };
})
