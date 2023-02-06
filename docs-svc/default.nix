{}:
let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs { };

  buildHtmlWith = f: pkg: pkg.overrideAttrs (
    old@{ nativeBuildInputs ? [ ], ... }: {
      docsSvcName = pkgs.lib.getName old;
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
    } // (f old)
  );

  addNativeBuildInputs = addInputs: pkg: pkg.overrideAttrs (
    old@{ nativeBuildInputs ? [ ], ... }: {
      nativeBuildInputs = nativeBuildInputs ++ addInputs;
    }
  );

  defaultAutotools = buildHtmlWith (
    old: {
      buildPhase = ''
        make html -j$NIX_BUILD_CORES MAKEINFO=makeinfo MAKEINFOFLAGS='--no-split'
      '';

      # we don't build execs so there will be no debuginfo
      separateDebugInfo = false;
      outputs = [ "out" ];
    }
  );

  autotoolsBuildFirst = buildHtmlWith (
    old: {
      buildPhase = ''
        make -j$NIX_BUILD_CORES
        make html -j$NIX_BUILD_CORES MAKEINFO=makeinfo MAKEINFOFLAGS='--no-split'
      '';
    }
  );

  # it's got a bunch of rubbish in tests
  buildTexinfo = buildHtmlWith (
    old: {
      buildPhase = ''
        make html -j$NIX_BUILD_CORES MAKEINFO=makeinfo MAKEINFOFLAGS='--no-split'
      '';
      installPhase = ''
        mkdir -p $out
        find doc/ -name '*.html' -print -exec cp '{}' $out/ ';'
      '';
    }
  );

  buildBinutils = buildHtmlWith (
    old: {
      # i quite frankly have no idea why they did this
      # there's a html-local target that builds docs with split=node
      # forced?????
      # WHY!! Let's break it!
      postPatch = ''
        find . '(' -name 'Makefile*' -or -name 'local.mk' ')' -exec sed -Ei '/html-am:/s/html-local//' '{}' ';'
      '';

      buildPhase = ''
        make html -j$NIX_BUILD_CORES MAKEINFO=makeinfo MAKEINFOFLAGS='--no-split'
      '';

      # we don't build execs so there will be no debuginfo
      separateDebugInfo = false;
      outputs = [ "out" ];
    }
  );

  buildM4 = buildHtmlWith (
    old: {
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
    }
  );

  buildBash = buildHtmlWith (
    old: {
      buildPhase = ''
        make doc
      '';
      installPhase = ''
        mkdir -p $out
        find . -name 'bash*.html' -exec cp '{}' $out/ ';'
      '';
    }
  );

  # gdb has a broken makefile for some reason. just do it manually....
  buildGdb = buildHtmlWith (
    old: {
      configurePhase = ''
        ./configure
        cd gdb
        ./configure
        cd ../libiberty
        ./configure
        cd ../bfd
        ./configure
        cd ../gnulib

        # ???? lmao
        chmod +x configure
        ./configure
      '';
      buildPhase = ''
        cd ../gdb/
        make html MAKEINFO=makeinfo MAKEINFOFLAGS='--no-split'
        cd ../libiberty/
        make html MAKEINFO=makeinfo MAKEINFOFLAGS='--no-split'
        cd ../bfd/
        make html MAKEINFO=makeinfo MAKEINFOFLAGS='--no-split'
      '';
      installPhase = ''
        mkdir -p $out
        cd ..
        find gdb -name '*.html' -exec cp '{}' $out/ ';'
        find libiberty -name '*.html' -exec cp '{}' $out/ ';'
        cp bfd/doc/bfd.html $out/
      '';
    }
  );

  # glibc is a special little shit, it doesn't have a makefile target to
  # produce the artefact we want. We can get what we want by doing make html
  # then building the final artefact manually though.
  buildGlibc = buildHtmlWith (
    old:
    let
      ver = builtins.elemAt (pkgs.lib.splitString "-" old.version) 0;
    in
    {
      buildPhase = ''
        # this builds a bunch of garbage we don't want
        make -j$NIX_BUILD_CORES html

        echo 'Makeinfo for real'
        makeinfo --no-split -P ./manual ../glibc-${ver}/manual/libc.texinfo -I $(realpath ../glibc-${ver}/manual) --html -o .
      '';
      installPhase = ''
        mkdir -p $out
        cp libc.html $out/glibc.html
      '';

      # we don't have debug info just html
      separateDebugInfo = false;
      outputs = [ "out" ];
    }
  );


  buildScreen = buildHtmlWith (
    old: {
      dontConfigure = true;
      nativeBuildInputs = [
        pkgs.recode
        pkgs.texinfo
      ];
      buildPhase = ''
        recode latin1..utf8 doc/screen.texinfo
        makeinfo --html --no-split doc/screen.texinfo -o $out/
      '';
    }
  );
  buildEd = manuallyMakeinfo "ed.texi";
  buildDdrescue = manuallyMakeinfo "ddrescue.texi";

  manuallyMakeinfo = name: buildHtmlWith (
    old: {
      dontConfigure = true;
      buildPhase = ''
        makeinfo --html --no-split doc/${name} -o $out/
      '';
    }
  );

  buildZsh = buildHtmlWith (
    old: {
      buildPhase = ''
        cd Doc
        makeinfo --html --no-split zsh.texi -o $out/
      '';
    }
  );

  buildGcc = buildHtmlWith (
    old: {
      # we completely replace the build system
      pname = "gcc";
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
        for f in cpp gcc cppinternals gccint; do
          echo makeinfo $f
          makeinfo --html -I $(realpath ..) -I $(realpath include) -o $out/ --no-split $f.texi
        done

        cd ../fortran
        for f in gfortran gfc-internals; do
          echo makeinfo $f
          makeinfo --html -I $(realpath ..) -I $(realpath ../doc) -I $(realpath ../doc/include) -o $out/ --no-split $f.texi
        done

        cd ../ada
        for f in gnat_rm gnat_ugn; do
          echo makeinfo $f
          makeinfo --html -I $(realpath ..) -I $(realpath ../doc) -I $(realpath ../doc/include) -o $out/ --no-split $f.texi
        done
      '';
      dontInstall = true;
    }
  );

  buildBison = buildHtmlWith (
    old: {
      nativeBuildInputs = [
        pkgs.texinfo
      ];
      # builds doxygen crap I don't care about
      buildPhase = ''
        make -j$NIX_BUILD_CORES
        make -j$NIX_BUILD_CORES doc/bison.html
      '';
    }
  );

  buildPostgres = buildHtmlWith (
    old: {
      buildInputs = old.buildInputs ++ (with pkgs; [
        docbook_xsl
        docbook_xml_dtd_45
      ]);
      nativeBuildInputs = old.nativeBuildInputs ++ (with pkgs; [
        libxslt
        perl
      ]);
      doConfigure = false;
      separateDebugInfo = false;
      buildPhase = ''
        cd doc/src/sgml
        make postgres.html
      '';

      installPhase = ''
        mkdir -p $out
        find . -name postgres.html -exec cp '{}' $out ';'
      '';
    }
  );

  # gnuplot uses a custom documentation system, which makes our life a little
  # bit difficult. However, someone wrote Emacs Lisp to convert the manual to
  # texinfo, so we can work with that. Hard to say if it's better than what we
  # would have otherwise, though...
  buildGnuplot = buildHtmlWith (old: {
    buildInputs = old.buildInputs ++ (with pkgs; [
      emacs-nox
    ]);

    buildPhase = ''
      cd docs
      make gnuplot.texi
      makeinfo --html --no-split gnuplot.texi
    '';
  });

  docify = p: pkgs.stdenv.mkDerivation {
    name = "${p.name}-htmldoc";
    phases = [ "buildPhase" ];

    nativeBuildInputs = [
      pkgs.python3Packages.beautifulsoup4
      pkgs.python3Packages.lxml
      pkgs.python3
      pkgs.parallel
    ];

    buildCommand = ''
      mkdir -p $out
      for inp in $buildInputs ; do
        ls $inp
        htmls=($inp/*.html)

        if (( ''${#htmls[@]} > 1 )); then
          mkdir -p $out/${p.docsSvcName}
          cp ''${htmls[@]} $out/${p.docsSvcName}
          chmod +w $out/${p.docsSvcName}/*
        else
          cp ''${htmls[@]} $out
          chmod +w $out/*
        fi
      done

      ls $out

      # nn = shush you
      parallel --nn -j $NIX_BUILD_CORES python3 ${./add_css.py} ::: $(find $out -name '*.html')
    '';

    buildInputs = [ p ];
    outputs = [ "out" ];
  };

  shortcuts = [
    "as:binutils"
    "autoconf"
    "automake"
    "bash"
    "bashref:bash"
    "bfd:binutils"
    "binutils"
    "cpp:gcc"
    "find:findutils"
    "gawk"
    "gcc"
    "gdb"
    "gfortran:gcc"
    "gprof:binutils"
    "grub"
    "guile"
    "ld:binutils"
    "nano"
    "parallel"
    "readline"
    "texinfo"
  ];

  myGcc = pkgs.callPackage (pkgs.path + "/pkgs/development/compilers/gcc/11/default.nix") {
    langFortran = true;
    langAda = true;
    noSysDirs = true;

    reproducibleBuild = true;
    profiledCompiler = false;

    libcCross = null;
    threadsCross = null;
    isl = null;
  };

in
rec {
  gcc = buildGcc myGcc;
  ed = buildEd pkgs.ed;
  ddrescue = buildDdrescue pkgs.ddrescue;
  findutils = autotoolsBuildFirst pkgs.findutils;
  m4 = buildM4 pkgs.m4;
  texinfo = buildTexinfo pkgs.texinfo;
  gdb = buildGdb pkgs.gdb;
  gnuplot = buildGnuplot pkgs.gnuplot;

  bash = buildBash pkgs.bash;
  screen = buildScreen pkgs.screen;
  glibc = buildGlibc (
    pkgs.glibc.overrideAttrs (
      old: {
        # need perl for texi generation scripts
        nativeBuildInputs = old.nativeBuildInputs ++ [ pkgs.perl ];
      }
    )
  );

  bison = buildBison pkgs.bison;
  zsh' = docify (buildZsh pkgs.zsh);
  zsh = pkgs.stdenv.mkDerivation {
    name = "zsh-dir";
    phases = [ "buildPhase" ];

    buildCommand = ''
      mkdir -p $out
      for inp in $buildInputs ; do
        echo $inp copy
        cp -R $inp/* $out
      done

      cat > $out/index.html <<EOF
        <!DOCTYPE html>
        <html>
        <head>
          <meta charset="utf-8">
          <meta http-equiv="refresh" content="0;./zsh.html">
        </head>
        <body>
        </body>
        </html>
      EOF
    '';

    buildInputs = [ zsh' ];

  };

  postgresql = docify (buildPostgres pkgs.postgresql_14);

  coreutils = defaultAutotools pkgs.coreutils;

  binutils = buildBinutils pkgs.binutils-unwrapped;

  defaults = map defaultAutotools (
    with pkgs; [
      gawk
      autoconf
      automake
      cflow
      coreutils
      cpio
      diffutils
      flex
      gnufdisk
      gnumake
      gnupg
      gnused
      gnutar
      grub
      guile
      gzip
      libtool
      nano
      parallel
      readline
      wget
      which
    ]
  );


  allDocs = pkgs.stdenv.mkDerivation {
    name = "all-gnu-docs";
    phases = [ "buildPhase" ];

    buildCommand = ''
      mkdir -p $out
      for inp in $buildInputs ; do
        echo $inp copy
        cp -R $inp/* $out
      done

      # check the shortcuts are synced with the actual state of things
      # continued below the next section
      mapfile -t expectScs < <(find $out/ -maxdepth 1 -mindepth 1 -type d -printf '%f.html\n' | sort)

      shortcuts=(${builtins.toString shortcuts})
      for sc in "''${shortcuts[@]}" ; do
        scArr=(''${sc//:/ })
        scName=''${scArr[0]}
        if (( ''${#scArr[@]} > 1 )); then
          scTargetDir=''${scArr[1]}
        else
          scTargetDir=$sc
        fi

        echo "$scName -> $scTargetDir"
      # !! do not reindent me
      cat > $out/$scName.html <<EOF
        <!DOCTYPE html>
        <html>
        <head>
          <meta charset="utf-8">
          <meta http-equiv="refresh" content="0;./$scTargetDir/$scName.html">
        </head>
        <body>
        </body>
        </html>
      EOF
      done

      shouldFail=0
      for expectSc in "''${expectScs[@]}" ; do
        if [[ ! -f "$out/$expectSc" ]] ; then
          # findutils does not produce a findutils.html
          if [[ "$expectSc" == "findutils.html" ]] ; then
            continue
          fi

          shouldFail=1
          echo "!! missing shortcut: $out/$expectSc" >&2
        fi
      done
      if [[ "$shouldFail" == 1 ]] ; then
        exit 1
      fi

    '';

    buildInputs = map docify (
      [
        bash
        bison
        binutils
        ddrescue
        ed
        findutils
        gcc
        gdb
        glibc
        m4
        screen
        texinfo
        gnuplot
      ] ++ defaults
    );
  };
}
