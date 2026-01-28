{ openttd, fetchFromGitHub }:
openttd.overrideAttrs (old: {
  src = fetchFromGitHub {
    owner = "jgrennison";
    repo = "openttd-patches";
    rev = "jgrpp-0.69.1";
    sha256 = "sha256-CCevSynseaL0yjEiSMc/ACWmUAYMl5yTAg1/2CkhDOo=";
  };
})
