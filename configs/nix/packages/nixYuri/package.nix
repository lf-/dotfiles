# lol lmao
# SPDX-License-ID: NONE

# This is this dubious piece of software, with nvidia removed, and unified
# to just fix all graphics. https://github.com/nix-community/nixGL

{
  # Enable 32 bits driver
  # This is one by default, you can switch it to off if you want to reduce a
  # bit the size of nixGL closure.
  enable32bits ? true
, writeTextFile
, shellcheck
, pcre
, runCommand
, linuxPackages
, fetchurl
, lib
, runtimeShell
, bumblebee
, libglvnd
, vulkan-validation-layers
, mesa
, libvdpau-va-gl
, intel-media-driver
, pkgsi686Linux
, driversi686Linux
, zlib
, libdrm
, xorg
, wayland
, gcc
}:

let
  writeExecutable = { name, text }:
    writeTextFile {
      inherit name text;

      executable = true;
      destination = "/bin/${name}";

      checkPhase = ''
        ${shellcheck}/bin/shellcheck "$out/bin/${name}"

        # Check that all the files listed in the output binary exists
        for i in $(${pcre}/bin/pcregrep  -o0 '/nix/store/.*?/[^ ":]+' $out/bin/${name})
        do
          ls $i > /dev/null || (echo "File $i, referenced in $out/bin/${name} does not exists."; exit -1)
        done
      '';
    };

  nixYuri = vadrivers: writeExecutable {
    name = "nixYuri";
    text =
      let
        # generate a file with the listing of all the icd files
        icd = runCommand "mesa_icd" { } (
          # 64 bits icd
          ''
            ls ${mesa.drivers}/share/vulkan/icd.d/*.json > f
          ''
          #  32 bits ones
          + lib.optionalString enable32bits ''
            ls ${pkgsi686Linux.mesa.drivers}/share/vulkan/icd.d/*.json >> f
          ''
          # concat everything as a one line string with ":" as seperator
          + ''cat f | xargs | sed "s/ /:/g" > $out''
        );
        mesa-drivers = [ mesa.drivers ]
          ++ lib.optional enable32bits pkgsi686Linux.mesa.drivers;
        libvdpau = [ libvdpau-va-gl ]
          ++ lib.optional enable32bits pkgsi686Linux.libvdpau-va-gl;
        glxindirect = runCommand "mesa_glxindirect" { } (
          ''
            mkdir -p $out/lib
            ln -s ${mesa.drivers}/lib/libGLX_mesa.so.0 $out/lib/libGLX_indirect.so.0
          ''
        );
        libPathGL = "${lib.makeLibraryPath mesa-drivers}:${lib.makeSearchPathOutput "lib" "lib/vdpau" libvdpau}:${glxindirect}/lib:${lib.makeLibraryPath [libglvnd]}";
      in
      ''
        #!${runtimeShell}
        export VK_LAYER_PATH=${vulkan-validation-layers}/share/vulkan/explicit_layer.d
        ICDS=$(cat ${icd})
        export VK_ICD_FILENAMES=$ICDS"''${VK_ICD_FILENAMES:+:$VK_ICD_FILENAMES}"
        export LIBGL_DRIVERS_PATH=${lib.makeSearchPathOutput "lib" "lib/dri" mesa-drivers}
        export LIBVA_DRIVERS_PATH=${lib.makeSearchPathOutput "out" "lib/dri" (mesa-drivers ++ vadrivers)}
        ${''export __EGL_VENDOR_LIBRARY_FILENAMES=${mesa.drivers}/share/glvnd/egl_vendor.d/50_mesa.json${
          lib.optionalString enable32bits
          ":${pkgsi686Linux.mesa.drivers}/share/glvnd/egl_vendor.d/50_mesa.json"
          }"''${__EGL_VENDOR_LIBRARY_FILENAMES:+:$__EGL_VENDOR_LIBRARY_FILENAMES}"''
        }
        export LD_LIBRARY_PATH=${
          lib.makeLibraryPath [
            zlib
            libdrm
            xorg.libX11
            xorg.libxcb
            xorg.libxshmfence
            wayland
            gcc.cc
          ]
        }:${libPathGL}"''${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
        exec "$@"
      '';
  };

  top = {
    nixYuri = nixYuri [ ];
    nixYuriIntel = nixYuri [ intel-media-driver ];
  };
in
top
