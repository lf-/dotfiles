{ nix-on-droid, overlays, path, hostArch, applyPatches }:
let patched = applyPatches {
    name = "nixpkgs-crosscompilation-patched";
    src = path;
    patches = [
      "${nix-on-droid}/pkgs/cross-compiling/compiler-rt.patch"
      "${nix-on-droid}/pkgs/cross-compiling/libunwind.patch"
    ];
  };
in
import patched {
  inherit overlays;
  crossSystem = {
    config = "${hostArch}-unknown-linux-android";
    sdkVer = "32";
    libc = "bionic";
    useAndroidPrebuilt = false;
    useLLVM = true;
    isStatic = true;
  };
}
