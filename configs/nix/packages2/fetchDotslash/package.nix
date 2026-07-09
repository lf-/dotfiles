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
    zst = "do_zstd";
  };

  manifests = map (
    x:
    lib.pipe x [
      builtins.readFile
      (lib.removePrefix "#!/usr/bin/env dotslash")
      builtins.fromJSON
    ]
  ) srcs;

  fabricateStringContext =
    p:
    builtins.appendContext p {
      ${p} = {
        path = true;
      };
    };

  manifestsOwnPlatform = map (
    manifest: manifest.platforms.${systemMapping.${stdenv.hostPlatform.system}}
  ) manifests;

  decompressors = map (x: decompressor.${x.format or ""} or "cp") manifestsOwnPlatform;
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
        else if prov ? store_path then
          "${fabricateStringContext prov.store_path}/${platform.path}"
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

      do_zstd() {
        unzstd -o "$2" "$1"
      }

      for idx in "''${!srcs[@]}"; do
        src="''${srcs[idx]}"
        srcName="''${names[idx]}"
        decompressor="''${decompressors[idx]}"

        $decompressor "$src" "$out/bin/$srcName"
        chmod +x "$out/bin/$srcName"
      done
      runHook postUnpack
    '';

    __structuredAttrs = true;

    doBuild = false;
  }
)
