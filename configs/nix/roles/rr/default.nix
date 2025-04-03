{ pkgs, lib, ... }:
{
  # N.B. note that Meteor Lake and probably certain other heterogeneous CPUs
  # are kind of busted with rr: you have to run the rr workload on the p-cores
  # only.
  # https://github.com/rr-debugger/rr/issues/3338
  boot.kernel.sysctl."kernel.perf_event_paranoid" = "1";
  environment.systemPackages = [
    pkgs.rr
  ];
}
