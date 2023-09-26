{ stdenv, lib, fetchzip, jdk, ant, fetchurl, p7zip, jre, fetchMavenArtifact, runtimeShell }:
stdenv.mkDerivation {
  pname = "jpdftweak";
  version = "1.1";

  src = fetchzip {
    url = "http://prdownloads.sourceforge.net/jpdftweak/jpdftweak-1.1.zip";
    stripRoot = false;
    sha256 = "sha256-rQv3HH1lXaOSldJjDUTRZEbdXamlZC/HpSwk0KvUPsc=";
  };

  buildPhase = "true";

  installPhase = ''
    mkdir -p $out
    mkdir -p $out/share/jpdftweak/java
    cp lib/* $out/share/jpdftweak/java
    mkdir -p $out/share/java
    cp jpdftweak.jar $out/share/java

    mkdir -p $out/bin
    cat > $out/bin/jpdftweak <<EOF
    #!${runtimeShell}
    export JAVA=${jre}/bin/java
    JAVA_HOME=${jre} \$JAVA -cp $out/share/jpdftweak/java -jar $out/share/java/jpdftweak.jar
    EOF
    chmod +x $out/bin/jpdftweak
  '';
}
