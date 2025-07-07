{ config, pkgs, lib, ... }:
let sddmCfg = config.services.displayManager.sddm;
in {
  services.displayManager = {
    sddm = {
      enable = true;
      wayland.enable = true;
    };

    defaultSession = "plasma";
    autoLogin = {
      enable = true;
      user = "jade";
    };
  };

  systemd.services.display-manager.serviceConfig = {
    KeyringMode = "inherit";
  };

  security.pam.services = {
    # I think there is no clean way to do this; also the normal auth stack is
    # bypassed? this seems very broken.
    sddm-autologin.text = lib.mkForce ''
      auth     requisite pam_nologin.so
      auth     optional  ${config.systemd.package}/lib/security/pam_systemd_loadkey.so debug
      auth     optional  ${pkgs.kdePackages.kwallet-pam}/lib/security/pam_kwallet5.so
      auth     optional  ${pkgs.gnome-keyring}/lib/security/pam_gnome_keyring.so
      auth     required  pam_succeed_if.so uid >= ${toString sddmCfg.autoLogin.minimumUid} quiet
      auth     required  pam_permit.so

      account  include   sddm

      password include   sddm

      session  include   sddm
    '';
  };
}
