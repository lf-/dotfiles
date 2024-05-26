{ ... }: {
  services.resolved.enable = true;
  networking.networkmanager = {
    enable = true;
    wifi.backend = "iwd";
  };
}
