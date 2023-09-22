{ stdenv, lib, fetchzip, jdk, ant, fetchurl, p7zip, fetchMavenArtifact }:
let
  jmupdf = stdenv.mkDerivation {
    pname = "jmupdf";
    version = "0.4.1";

    src = fetchurl {
      name = "source";
      url = "https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/jmupdf/2012-02-23-source-jmupdf-0.4.1.7z";
      hash = "sha256-x/11RQlWaL2Nz6TYdKCOFbqIPDmFO6DfNIRsoD4uSI0=";

      downloadToTemp = true;

      postFetch = ''
        ${p7zip}/bin/7z x -o$out $downloadedFile
      '';

      recursiveHash = true;
    };

    nativeBuildInputs = [ jdk ant ];

    prePatch = ''
      substituteInPlace jmupdf/jmupdf/build.xml --replace 'value="''${basedir}/bin"' 'value="''${basedir}/src"'
    '';

    buildPhase = ''
      cd jmupdf/jmupdf
      ant
    '';

    installPhase = ''
      mkdir -p $out
      cp build/jmupdf.jar $out
    '';
  };

  fetchMavenArtifactOrig = fetchMavenArtifact;
  deps =
    let
      fetchMavenArtifact = args: { jarName = args.jarName or args.artifactId; jar = (fetchMavenArtifactOrig (builtins.removeAttrs args [ "jarName" ])).passthru.jar; };
    in
    [
      (fetchMavenArtifact {
        jarName = "itext";
        groupId = "com.itextpdf";
        artifactId = "itextpdf";
        version = "5.1.3";
        hash = "sha256-Y0UJU+SVUTFABwY/9/bhgK9E0qepqzG2m46xnql+dkY=";
      })
      (fetchMavenArtifact {
        groupId = "com.jgoodies";
        artifactId = "jgoodies-common";
        version = "1.4.0";
        hash = "sha256-79mG7IUcOlzVeQfnLyfRr5weWxh0sHqLd4WIZG1x2fw=";
      })
      (fetchMavenArtifact {
        jarName = "forms";
        groupId = "com.jgoodies";
        artifactId = "jgoodies-forms";
        version = "1.6.0";
        hash = "sha256-9IKrYZ0n0CyiXSB/B3DrnguSlYYi65cQXJXStIZIqMw=";
      })
    ];
in
stdenv.mkDerivation {
  pname = "jpdftweak";
  version = "1.1";

  passthru.deps = deps;
  passthru.jmupdf = jmupdf;

  src = fetchzip {
    url = "http://prdownloads.sourceforge.net/jpdftweak/jpdftweak-src-1.1.zip";
    stripRoot = false;
    sha256 = "sha256-Fby6D97NR8hq/cLdcgdDr63Z6rTxzlttTomWYzEpxIc=";
  };

  prePatch = ''
    sed -i -e 's/source="1.5"/source="7"/g' -e 's/target="1.5"/target="7"/g' build.xml
    ${lib.concatMapStringsSep "\n" (artifact: ''
      cp ${artifact.jar} lib/${artifact.jarName}.jar
    '') deps}
  '';

  nativeBuildInputs = [
    jdk
    ant
  ];

  buildPhase = "ant";
}
