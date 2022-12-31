# Relatively inspired by fbtax2:
# https://facebookmicrosites.github.io/cgroup2/docs/fbtax-results.html
#
# See also the Chris Down talk at LISA'21:
# https://www.usenix.org/conference/lisa21/presentation/down
{ config, pkgs, ... }: {
  systemd.oomd = {
    enable = true;
    # not yet, since I currently don't have a properly cgroupified launching
    # infrastructure at the user level, so it will kill off my entire session.
    # enableRootSlice = true;
    enableSystemSlice = true;
    enableUserServices = true;
  };

  systemd.enableCgroupAccounting = true;

  systemd.services.nix-daemon = {
    serviceConfig = {
      # FIXME: how do i deprioritize this for memory
      CPUWeight = 10;
      IOWeight = 10;
    };
  };

  systemd.slices.hostcritical = {
    description = "Ensures that services to keep the system alive remain alive";
    sliceConfig = {
      CPUAccounting = true;
      ManagedOOMMemoryPressure = "kill";

      # guarantee availability of memory
      MemoryMin = "192M";
      # default 100
      IOWeight = 1000;
      # default 100
      CPUWeight = 1000;
    };
  };

  systemd.slices.system = {
    sliceConfig = {
      ManagedOOMMemoryPressure = "kill";
      ManagedOOMPressureLimit = "50%";

      IOWeight = 100;
    };
  };

  systemd.services.sshd = {
    serviceConfig = {
      Slice = "hostcritical.slice";
    };
  };

  systemd.services.systemd-oomd = {
    serviceConfig = {
      Slice = "hostcritical.slice";
    };
  };
}
