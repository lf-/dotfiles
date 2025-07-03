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
      yapf

      numpy
    ];
  inherit (pkgs) lib stdenv;
in
lib.filter (lib.meta.availableOn stdenv.hostPlatform) (
  with pkgs;
  [
    direnv

    gitAndTools.delta
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
      gitFull

      gnused
      gnugrep
      # sketchy but necessary tbh
      bashInteractive
    ]
  )
)
