{pkgs, lib, config, ...}: {
  services.tailscale = {
    enable = true;
  };

  networking.firewall.checkReversePath = "loose";

  services.connman.extraFlags = [ "--nodevice=${config.services.tailscale.interfaceName}" ];
}
