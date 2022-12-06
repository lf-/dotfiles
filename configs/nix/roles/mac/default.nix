{pkgs, config, ...}:
{
  imports = [
    # see note below on fonts being slow
    # ../fonts
  ];
  # https://github.com/NixOS/nixpkgs/issues/175875
  nixpkgs.config.allowBroken = true;

  environment.systemPackages = with pkgs; [
    gitFull
    openssh
    coreutils-full

    gnused
    gnugrep
  ];

  homebrew.enable = true;
  homebrew.casks = [
    "spotify"
    "amethyst"
    "iterm2"
    "pritunl"
    "unnaturalscrollwheels"
  ];

  services.nix-daemon.enable = true;
  programs.zsh.enable = true;

  # uncomment to run once, but takes forever on rebuild so not going to do that thanks
  # fonts.fontDir.enable = true;
}
