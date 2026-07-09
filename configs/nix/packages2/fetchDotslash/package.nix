{
  fetchurl,
  stdenv,
  lib,
  fixDarwinDylibNames,
  autoPatchelfHook,
  zstd,
}:
args@{
  name,
  srcs,
  ...
}:
let
  systemMapping = {
    "aarch64-linux" = "linux-aarch64";
    "x86_64-linux" = "linux-x86_64";
    "aarch64-darwin" = "macos-aarch64";
  };

  decompressor = {
    zst = "unzstd";
  };

  manifests = map (
    x:
    lib.pipe x [
      builtins.readFile
      (lib.removePrefix "#!/usr/bin/env dotslash")
      builtins.fromJSON
    ]
  ) srcs;

  manifestsOwnPlatform = map (
    manifest: manifest.platforms.${systemMapping.${stdenv.hostPlatform.system}}
  ) manifests;

  decompressors = map (x: decompressor.${x.format}) manifestsOwnPlatform;
  names = map (x: x.name) manifests;

  mkDownloader =
    platform:
    lib.findFirst (x: x != null) null (
      map (
        prov:
        if prov ? url then
          fetchurl {
            outputHashAlgo = platform.hash;
            outputHash = platform.digest;
            url = prov.url;
          }
        else
          null
      ) platform.providers
    );
in
stdenv.mkDerivation (
  args
  // {
    inherit name;
    srcs = map mkDownloader manifestsOwnPlatform;
    inherit decompressors names;

    nativeBuildInputs = [
      zstd
    ]
    ++ lib.optionals stdenv.hostPlatform.isLinux [
      autoPatchelfHook
    ]
    ++ lib.optionals stdenv.hostPlatform.isDarwin [
      fixDarwinDylibNames
    ]
    ++ (args.nativeBuildInputs or [ ]);

    unpackPhase = ''
      runHook preUnpack
      mkdir -p $out/bin

      for idx in "''${!srcs[@]}"; do
        src="''${srcs[idx]}"
        srcName="''${names[idx]}"
        decompressor="''${decompressors[idx]}"

        $decompressor -o "$out/bin/$srcName" "$src"
        chmod +x "$out/bin/$srcName"
      done
      runHook postUnpack
    '';

    __structuredAttrs = true;

    doBuild = false;
  }
)
