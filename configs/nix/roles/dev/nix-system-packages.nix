# This is the list of packages for if the system has all tooling managed by nix
{
  pkgs,
  nixos ? false,
}:
let
  pyPkgs =
    ppkgs: with ppkgs; [
      ipython
      # Busted for some reason
      # ipython-sql
      # jacked on macos currently https://github.com/NixOS/nixpkgs/issues/185918
      # pgcli
      requests
      tkinter
      pyperclip
      dbus-python

      pip
      ruff

      numpy
    ];
  inherit (pkgs) lib stdenv;
in
lib.filter (lib.meta.availableOn stdenv.hostPlatform) (
  with pkgs;
  [
    direnv

    delta
    ripgrep

    dtach
    tmux
    gh
    fd
    gdb
    jq
    graphviz
    universal-ctags
    moreutils
    git-lfs
    socat

    xxd

    p7zip
    unzip

    msmtp

    man-pages-posix

    pipenv
    poetry

    (python3.withPackages pyPkgs)
  ]
  ++ import ../base/packages.nix { inherit pkgs; }
  ++ lib.optionals (!stdenv.isDarwin) (
    with pkgs;
    [
      man-pages
    ]
  )
  # replace apple's bad tools
  ++ lib.optionals (!nixos && stdenv.isDarwin) (
    with pkgs;
    [
      openssh
      coreutils-full
      # lol, lmao: horrifying toolchain bug:
      # https://github.com/NixOS/nixpkgs/issues/320900
      # which seems to hit a similar bug as
      # https://github.com/NixOS/nixpkgs/issues/208951
      # gitFull
      git

      gnused
      gnugrep
      # sketchy but necessary tbh
      bashInteractive
      bash-completion

      # mac app store cli
      mas
    ]
  )
)
