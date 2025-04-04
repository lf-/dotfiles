final: prev: {
  curl-head = final.curl.overrideAttrs (old: {
    src = final.fetchFromGitHub {
      owner = "icing";
      repo = "curl";
      # https://github.com/curl/curl/pull/16960
      rev = "1618d32750bd4a130226a052f3ac4edfebc252e4";
      hash = "sha256-QOukgRZXZf+5Esy6nGAg4bVUtoJ8ipqnn+TUZY4fymY=";
    };
    patches = [ ];
    postPatch = null;
    nativeBuildInputs = old.nativeBuildInputs or [ ] ++ [
      final.buildPackages.autoreconfHook
      final.buildPackages.updateAutotoolsGnuConfigScriptsHook
    ];
    configureFlags = old.configureFlags or [ ] ++ [
      "--enable-debug"
    ];
    env.CFLAGS = "-O2 -g";
    preConfigure = ''
      sed -e 's|/usr/bin|/no-such-path|g' -i.bak configure
      patchShebangs scripts/
    '';
  });

  lix = prev.lix.override (old: {
    curl = final.curl-head;
    aws-sdk-cpp = old.aws-sdk-cpp.override {
      curl = final.curl-head;
    };
  });
}
