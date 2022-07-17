{ config, lib, nixpkgs, ... }: {
  imports = [ ../../roles/dev ../../roles/linux ];

  boot.initrd.availableKernelModules = [ "aesni_intel" "cryptd" ];
  # create a swap file on the encrypted partition
  swapDevices = [ { device = "/swapfile"; size = 16384; } ];
}
