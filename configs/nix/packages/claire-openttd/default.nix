{ openttd, fetchFromGitHub }:
openttd.overrideAttrs (old: {
  src = fetchFromGitHub {
    owner = "jgrennison";
    repo = "openttd-patches";
    rev = "jgrpp-0.56.1";
    sha256 = "sha256-+a5ShSdnlvgAFe1v8Z/MQiN+36J98Q0814R/uNI2wS0=";
  };
})
