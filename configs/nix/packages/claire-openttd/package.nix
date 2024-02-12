{ openttd, fetchFromGitHub }:
openttd.overrideAttrs (old: {
  src = fetchFromGitHub {
    owner = "jgrennison";
    repo = "openttd-patches";
    rev = "jgrpp-0.57.1";
    sha256 = "sha256-mQy+QdhEXoM9wIWvSkMgRVBXJO1ugXWS3lduccez1PQ=";
  };
})
