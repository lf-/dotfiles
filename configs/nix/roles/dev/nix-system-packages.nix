# This is the list of packages for if the system has all tooling managed by nix
{
  pkgs,
  nixos ? false,
}:
let
  pyPkgs =
    ppkgs: with ppkgs; [
      ipython
      ipython-sql
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
    ctags
    moreutils
    git-lfs

    xxd

    p7zip
    unzip

    msmtp

    man-pages
    man-pages-posix

    (python3.withPackages pyPkgs)
  ]
  ++ import ../base/packages.nix { inherit pkgs; }
  # replace apple's bad tools
  ++ lib.optionals (!nixos && stdenv.isDarwin) (
    with pkgs;
    [
      openssh
      coreutils-full
      gitFull

      gnused
      gnugrep
    ]
  )
)
