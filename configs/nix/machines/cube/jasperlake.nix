# the tiny computer that successfully hardware re-encodes 4k in realtime. nice.
{ config, pkgs, lib, ... }:
{
  environment.systemPackages = with pkgs; [
    libva-utils
    intel-gpu-tools
    ffmpeg-headless
  ];

  # accelerate video encode/decode
  hardware.opengl = {
    enable = true;
    extraPackages = with pkgs; [ intel-media-driver ];
  };

  # i915 driver defaults break hw video encode/decode on Jasper Lake
  # https://gitlab.freedesktop.org/drm/intel/-/issues/8080
  boot.extraModprobeConfig = ''
    options i915 enable_guc=2
  '';
}
