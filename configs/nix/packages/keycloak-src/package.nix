{ maven, fetchFromGitHub, keycloak }:
let
  version = "26.0.5";

  # rebuild services with patches
  services = assert keycloak.version == version; maven.buildMavenPackage {
    pname = "keycloak";
    inherit version;

    src = fetchFromGitHub {
      owner = "keycloak";
      repo = "keycloak";
      rev = version;
      hash = "sha256-OnFNaS1o6e3x53h28sygymlQH6RGwl+bqKlPm5i8uu8=";
    };

    patches = [ ./0001-hack-make-the-WebAuthn-authenticator-accept-binary-U.patch ];

    mvnDepsParameters = "-Daether.dependencyCollector.impl=bf";

    mvnHash = "sha256-QeCQr/CNoe7bEdjvEbUE2q50jU5oJow/KQ7jjiGqpNk=";

    mvnParameters = "-DskipTestsuite -DskipExamples -DskipTests -pl :keycloak-services,:keycloak-core,:keycloak-crypto-default,:keycloak-common,:keycloak-server-spi,:keycloak-server-spi-private,:keycloak-saml-core-public,:keycloak-saml-core,:keycloak-model-storage-private,:keycloak-model-storage,:keycloak-config-api";

    installPhase = ''
      mkdir -p $out
      cp services/target/keycloak-services-${version}.jar $out/
    '';

    buildOffline = true;
  };
in
keycloak.overrideAttrs (old: {
  preBuild = ''
    cp -r ${services}/* lib/lib/main/
  '';
})
