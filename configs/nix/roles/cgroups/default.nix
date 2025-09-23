# Relatively inspired by fbtax2:
# https://facebookmicrosites.github.io/cgroup2/docs/fbtax-results.html
#
# See also the Chris Down talk at LISA'21:
# https://www.usenix.org/conference/lisa21/presentation/down
{ ... }:
let
  systemCriticalSliceConfig = {
    ManagedOOMMemoryPressure = "kill";

    # guarantee availability of memory
    MemoryMin = "192M";
    # default 100
    IOWeight = 1000;
    # default 100
    CPUWeight = 1000;
  };
in
{
  systemd.oomd = {
    enable = true;
    # why not, we have cgroups at user level now so it'll just kill the
    # terminal
    enableRootSlice = true;
    enableSystemSlice = true;
    enableUserSlices = true;
  };

  systemd.services.nix-daemon = {
    serviceConfig = {
      Slice = "lowprio.slice";
    };
  };

  systemd.slices.hostcritical = {
    description = "Ensures that services to keep the system alive remain alive";

    unitConfig = {
      # required to avoid a dependency cycle on systemd-oomd. systemd will
      # actually guess this right but we should fix it anyway.
      DefaultDependencies = false;
    };

    sliceConfig = systemCriticalSliceConfig;
  };

  # make root logins higher priority for resources
  systemd.slices."user-0" = {
    sliceConfig = systemCriticalSliceConfig;
  };

  systemd.slices.lowprio = {
    sliceConfig = {
      # FIXME: how do i deprioritize this for memory
      IOWeight = 10;
      CPUWeight = 10;
    };
  };

  systemd.slices.system = {
    sliceConfig = {
      ManagedOOMMemoryPressure = "kill";
      ManagedOOMMemoryPressureLimit = "50%";

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

  systemd.services.systemd-journald = {
    serviceConfig = {
      Slice = "hostcritical.slice";
    };
  };
}
