{ maven, fetchFromGitHub, keycloak }:
let
  version = "26.0.6";

  # rebuild services with patches
  services = assert keycloak.version == version; maven.buildMavenPackage {
    pname = "keycloak";
    inherit version;

    src = fetchFromGitHub {
      owner = "keycloak";
      repo = "keycloak";
      rev = version;
      hash = "sha256-UYE25jJJ13Pg+EeKhIE2NojiDrg1fZQO9n/DeAfB/pQ=";
    };

    patches = [ ./0001-hack-make-the-WebAuthn-authenticator-accept-binary-U.patch ];

    mvnDepsParameters = "-Daether.dependencyCollector.impl=bf";

    mvnHash = "sha256-/hqO+PrPlkTw4rs4VgO0azig2tk8f2Qr4DBxz3EgRLQ=";

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
    cp ${services}/keycloak-services-${version}.jar lib/lib/main/org.keycloak.keycloak-services-${version}.jar
  '';

  passthru = old.passthru // {
    services = services;
  };
})
