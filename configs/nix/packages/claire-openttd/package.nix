{ openttd, fetchFromGitHub }:
openttd.overrideAttrs (old: {
  src = fetchFromGitHub {
    owner = "jgrennison";
    repo = "openttd-patches";
    rev = "jgrpp-0.63.1";
    sha256 = "sha256-Jg+BBGab23pBREVjiyxbUimKfpSoYxMfNjko02QaHcw=";
  };
})
