{}:
let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs { };
  inherit (pkgs) lib;

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

  defaultAutotools = buildHtmlWith (
    old: {
      buildPhase = ''
        runHook preBuild
        make html -j$NIX_BUILD_CORES MAKEINFO=makeinfo MAKEINFOFLAGS='--no-split'
        runHook postBuild
      '';

      # we don't build execs so there will be no debuginfo
      separateDebugInfo = false;
      outputs = [ "out" ];
    }
  );

  buildGuile3 = buildHtmlWith (
    old: {
      docsSvcName = "guile3";
      buildPhase = ''
        runHook preBuild
        make html -j$NIX_BUILD_CORES MAKEINFO=makeinfo MAKEINFOFLAGS='--no-split'
        runHook postBuild
      '';

      # we don't build execs so there will be no debuginfo
      separateDebugInfo = false;
      outputs = [ "out" ];
    }
  );

  buildOctave = buildHtmlWith (
    old: {
      postConfigure = ''
        sed -i 's|-o \$\(OCTAVE_HTML_TMP_DIR\)|-o $(OCTAVE_HTML_TMP_DIR)/octave.html|' Makefile
      '';
      buildPhase = ''
        make -j$NIX_BUILD_CORES
        rm -rf doc/interpreter/octave.html doc/interpreter/octave.htp
        mkdir doc/interpreter/octave.htp
        make -j$NIX_BUILD_CORES MAKEINFOFLAGS=--no-split doc/interpreter/octave.html
      '';
      installPhase = ''
        mkdir -p $out
        cp doc/interpreter/octave.html/octave.html $out
      '';
    }
  );

  buildOpenocd = buildHtmlWith (
    old: {
      buildPhase = ''
        make html -j$NIX_BUILD_CORES MAKEINFO=makeinfo MAKEINFOFLAGS='--no-split'
      '';
      installPhase = ''
        mkdir -p $out
        cp doc/openocd.html $out/
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

  buildEmacs = buildHtmlWith (
    old: {
      # package name is emacs-nox but we want it called emacs
      docsSvcName = "emacs";

      buildPhase = ''
        make html -j$NIX_BUILD_CORES MAKEINFO=makeinfo MAKEINFOFLAGS='--no-split'
      '';

      installPhase = ''
        mkdir -p $out
        find doc -name '*.html' -exec cp '{}' $out/ ';'
      '';

      # we don't build execs so there will be no debuginfo
      separateDebugInfo = false;
      outputs = [ "out" ];
    }
  );

  # they didn't use MAKEINFOFLAGS ;-)
  buildGforth = p: (defaultAutotools p).overrideAttrs (old: {
    # creates a site-lisp directory, no thanks
    preConfigure = "true";
    preBuild = ''
      sed -i -e 's/--html/--html --no-split/' -e 's/-o gforth/-o gforth.html/' -e 's/--css-ref=gforth.css//' doc/Makefile doc/Makefile.in
    '';
  });

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
      outputs = [ "out" ];
      buildPhase = ''
        make doc
      '';
      installPhase = ''
        mkdir -p $out
        find . -name 'bash*.html' -exec cp '{}' $out/ ';'
      '';

      # we don't build execs so there will be no debuginfo
      separateDebugInfo = false;
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
        # Broken makeinfo invocations generate no-extension files
        cp gdb/doc/gdb $out/gdb.html
        cp gdb/doc/stabs $out/stabs.html
        cp gdb/doc/annotate $out/annotate.html
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
  buildEd = p: (manuallyMakeinfo "ed.texi" p).overrideAttrs (old: {
    nativeBuildInputs = old.nativeBuildInputs or [ ] ++ [
      pkgs.recode
    ];
    # my tooling does not eat iso-8859. dont do that.
    postBuild = ''
      recode ISO_8859-15..utf8 $out/ed.html
      sed -i s/iso-8859-15/utf-8/ $out/ed.html
    '';
  });

  buildDdrescue = manuallyMakeinfo "ddrescue.texi";

  manuallyMakeinfo = name: buildHtmlWith (
    old: {
      dontConfigure = true;
      buildPhase = ''
        makeinfo --html --no-split doc/${name} -o $out/
        runHook postBuild
      '';
      dontInstall = true;
    }
  );

  # "We still prefer texi2html over texi2any because it includes the titlepage."
  # we, on the other hand prefer to use the same tool for everything. thanks
  # for the input.
  buildGperf = manuallyMakeinfo "gperf.texi";

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

      # preFixupLibGccPhase is broken
      preFixupPhases = [ ];

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
        find . -name postgres.html -exec cp '{}' $out/postgres-${lib.versions.major old.version}.html ';'
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

  # ironically, this is because they are being kinda extra nice and building
  # both versions of the manual.
  buildStow = x: (defaultAutotools x).overrideAttrs (old: {
    installPhase = ''
      mkdir -p $out
      cp doc/manual-single.html $out/stow.html
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
    "emacs"
    "find:findutils"
    "gawk"
    "gcc"
    "gdb"
    "gfortran:gcc"
    "gprof:binutils"
    "grub"
    "guile"
    "ld:binutils"
    "poke"
    "nano"
    "parallel"
    "readline"
    "texinfo"
  ];

  myGcc = pkgs.gcc12.cc.override (old: {
    langFortran = true;
    langAda = true;
    noSysDirs = true;

    reproducibleBuild = true;
    profiledCompiler = false;

    libcCross = null;
    threadsCross = { };
    isl = null;
  });

in
rec {
  inherit docify;
  gcc = buildGcc myGcc;
  ed = buildEd pkgs.ed;
  ddrescue = buildDdrescue pkgs.ddrescue;
  findutils = autotoolsBuildFirst pkgs.findutils;
  m4 = buildM4 pkgs.m4;
  texinfo = buildTexinfo pkgs.texinfo;
  gdb = buildGdb pkgs.gdb;
  gnuplot = docify (buildGnuplot pkgs.gnuplot);
  emacs = buildEmacs pkgs.emacs-nox;

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
  gforth = buildGforth pkgs.gforth;

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

  postgresql =
    let
      one = drv: ''
        cp ${docify (buildPostgres drv)}/*.html $out
      '';
      versions = with pkgs; [
        postgresql_14
        postgresql_15
        postgresql_16
      ];
    in
    pkgs.runCommand "postgres-joined" { } ''
      mkdir -p $out
      ${lib.concatMapStringsSep "\n" one versions}
    '';

  openocd = docify (buildOpenocd pkgs.openocd);

  coreutils = defaultAutotools pkgs.coreutils;

  binutils = buildBinutils pkgs.binutils-unwrapped;

  octave = buildOctave pkgs.octave;

  poke = autotoolsBuildFirst pkgs.poke;

  gperf = buildGperf pkgs.gperf;

  stow = buildStow pkgs.stow;

  guile3 = buildGuile3 pkgs.guile_3_0;

  defaults = map defaultAutotools (
    with pkgs; [
      autoconf
      automake
      cflow
      coreutils
      cpio
      diffutils
      flex
      gawk
      gnu-cobol
      gnu-shepherd
      gnufdisk
      gnugrep
      gnulib
      gnumake
      gnupg
      gnused
      gnutar
      grub2
      guile
      gzip
      libtool
      mailutils
      nano
      parallel
      readline
      time
      sharutils
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
          if [[ "$expectSc" == "guile3.html" ]] ; then
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
        binutils
        bison
        ddrescue
        ed
        emacs
        findutils
        guile3
        gcc
        gdb
        gforth
        glibc
        m4
        octave
        poke
        screen
        stow
        texinfo
      ] ++ defaults
    );
  };
}
