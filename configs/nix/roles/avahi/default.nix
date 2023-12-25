{ config, pkgs, ... }: {
  services.avahi = {
    enable = true;
    publish.enable = true;
    publish.addresses = true;
    publish.workstation = true;
  };
}
