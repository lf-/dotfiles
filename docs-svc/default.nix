{}:
let
  pkgs = import <nixpkgs> { };
  buildHtmlWith = f: pkg: pkg.overrideAttrs (old@{ nativeBuildInputs ? [ ], ... }: {
    installPhase = ''
      mkdir -p $out
      find . -name '*.html' -exec cp '{}' $out/ ';'
    '';
    dontFixup = true;
    doInstallCheck = false;
    doCheck = false;
    doDist = false;
    outputs = [ "out" ];

    nativeBuildInputs = nativeBuildInputs ++ [ pkgs.texinfo ];
  } // (f old));

  defaultAutotools = buildHtmlWith (old: {
    buildPhase = ''
      make html -j$NIX_BUILD_CORES MAKEINFO=makeinfo MAKEINFOFLAGS='--no-split'
    '';
  });

  autotoolsBuildFirst = buildHtmlWith (old: {
    buildPhase = ''
      make -j$NIX_BUILD_CORES
      make html -j$NIX_BUILD_CORES MAKEINFO=makeinfo MAKEINFOFLAGS='--no-split'
    '';
  });

  buildM4 = buildHtmlWith (old: {
    nativeBuildInputs = [
      pkgs.recode
      pkgs.texinfo
    ];
    postPatch = ''
      find doc/ -name '*.texi' -exec recode latin1..utf8 '{}' ';'
    '';
    buildPhase = ''
      make html -j$NIX_BUILD_CORES MAKEINFO=makeinfo MAKEINFOFLAGS='--no-split'
    '';
  });

  buildBash = buildHtmlWith (old: {
    buildPhase = ''
      make doc
    '';
    installPhase = ''
      mkdir -p $out
      find . -name 'bash*.html' -exec cp '{}' $out/ ';'
    '';
  });

  buildScreen = buildHtmlWith (old: {
    dontConfigure = true;
    nativeBuildInputs = [
      pkgs.recode
      pkgs.texinfo
    ];
    buildPhase = ''
      recode latin1..utf8 doc/screen.texinfo
      makeinfo --html --no-split doc/screen.texinfo -o $out/
    '';
  });
  buildEd = manuallyMakeinfo "ed.texi";
  buildDdrescue = manuallyMakeinfo "ddrescue.texi";

  buildFindutils = name: buildHtmlWith (old: {
    buildPhase = ''
      make html -j$NIX_BUILD_CORES MAKEINFO=makeinfo MAKEINFOFLAGS='--no-split'
    '';
  });

  manuallyMakeinfo = name: buildHtmlWith (old: {
    dontConfigure = true;
    buildPhase = ''
      makeinfo --html --no-split doc/${name} -o $out/
    '';
  });

  buildGcc = buildHtmlWith (old: {
    # we completely replace the build system
    pname = "gcc-html";
    dontConfigure = true;
    buildPhase = ''
      cd gcc/doc
      # see gcc/doc/install.texi2html
      cat > gcc-vers.texi <<EOF
      @set version-GCC ${old.version}
      @set VERSION_PACKAGE (GCC)
      @clear DEVELOPMENT
      @set srcdir $(realpath ..)
      EOF

      # see "HTMLS_BUILD"
      for f in cpp gcc cppinternals; do
        echo makeinfo $f
        makeinfo --html -I $(realpath ..) -I $(realpath include) -o $out/ --no-split $f.texi
      done
    '';
    dontInstall = true;
  });
in
rec {
  gcc = buildGcc pkgs.gcc11.cc;
  ed = buildEd pkgs.ed;
  ddrescue = buildDdrescue pkgs.ddrescue;
  findutils = autotoolsBuildFirst pkgs.findutils;
  m4 = buildM4 pkgs.m4;

  bash = buildBash pkgs.bash;
  screen = buildScreen pkgs.screen;

  defaults = map defaultAutotools (with pkgs; [
    automake
    coreutils
    cpio
    diffutils
    gdb
    gnufdisk
    gnumake
    gnupg
    gnused
    gnutar
    grub
    guile
    gzip
    nano
    parallel
    readline
    wget
    which
  ]);

  allDocs = pkgs.stdenv.mkDerivation {
    name = "all-gnu-docs";
    phases = [ "buildPhase" ];

    buildCommand = ''
      mkdir -p $out
      for inp in $buildInputs ; do
        echo $inp copy $inp/*.html
        cp $inp/*.html $out
      done
      chmod +w $out/*.html

      parallel -j $NIX_BUILD_CORES python3 ${./add_css.py} ::: $out/*.html
    '';

    nativeBuildInputs = [
      pkgs.python3Packages.beautifulsoup4
      pkgs.python3Packages.lxml
      pkgs.python3
      pkgs.parallel
    ];

    buildInputs = [
      gcc
      ed
      ddrescue
      findutils
      m4
      bash
      screen
    ] ++ defaults;
  };
}
