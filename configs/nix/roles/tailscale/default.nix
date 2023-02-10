{pkgs, lib, config, ...}: {
  services.tailscale = {
    enable = true;
  };

  networking.firewall.checkReversePath = "loose";

  # Moved to rawethernet role due to combining of nodevice opts being broken
  # services.connman.extraFlags = [ "--nodevice=${config.services.tailscale.interfaceName}" ];
}
