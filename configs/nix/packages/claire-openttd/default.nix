{ openttd, fetchFromGitHub }:
openttd.overrideAttrs (old: {
  src = fetchFromGitHub {
    owner = "jgrennison";
    repo = "openttd-patches";
    rev = "jgrpp-0.56.2";
    sha256 = "sha256-87MquPFoFz6LFlwBTDrFNO11UYCtZUzdZYR1YttkDF8=";
  };
})
