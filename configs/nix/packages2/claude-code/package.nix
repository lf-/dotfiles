{
  lib,
  stdenvNoCC,
  fetchurl,
  glibc,
  patchelf,
  makeWrapper,
  perl,
}:

let
  release = lib.importJSON ./release.json;
  platform =
    release.${stdenvNoCC.hostPlatform.system}
      or (throw "Unsupported system: ${stdenvNoCC.hostPlatform.system}");
  isLinux = stdenvNoCC.hostPlatform.isLinux;
in

stdenvNoCC.mkDerivation {
  pname = "claude-code";
  version = release.version;

  src = fetchurl {
    url = "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/${release.version}/${platform.platform}/claude";
    inherit (platform) hash;
  };

  dontUnpack = true;
  dontConfigure = true;
  dontBuild = true;

  nativeBuildInputs =
    [ makeWrapper ]
    ++ lib.optionals isLinux [
      patchelf
      perl
    ];

  # Do NOT use autoPatchelfHook — it adds RPATH, which breaks this Bun
  # standalone binary. The .bun ELF section (122MB embedded JS bundle) gets
  # corrupted when patchelf relocates .dynamic to make room for DT_RUNPATH.
  # Setting only the interpreter is sufficient because all shared library
  # deps (libc, libm, librt, libpthread, libdl) are part of glibc, and the
  # Nix ld-linux finds them in its own directory.
  installPhase = ''
    runHook preInstall

    install -Dm755 $src $out/bin/.claude-unwrapped
  ''
  + lib.optionalString isLinux ''
    patchelf --set-interpreter ${glibc}/lib/ld-linux-${
      if stdenvNoCC.hostPlatform.isx86_64 then "x86-64" else "aarch64"
    }.so.2 $out/bin/.claude-unwrapped
    # Replace "google-chrome" with "chromium" in the embedded JS.
    # Both are 15 bytes with quotes, padded with trailing spaces:
    #   "google-chrome"  →  "chromium"
    # This is safe because the spaces land outside the closing quote,
    # where they're ignored JS whitespace (before , ] etc).
    perl -pi -e 's/"google-chrome"/"chromium"     /g' $out/bin/.claude-unwrapped
  ''
  + ''
    makeWrapper $out/bin/.claude-unwrapped $out/bin/claude \
      --add-flags "--allow-dangerously-skip-permissions" \
      --set CLAUDE_CODE_NO_FLICKER 1

    runHook postInstall
  '';

  meta = {
    description = "Claude Code - an agentic coding tool from Anthropic";
    homepage = "https://claude.ai/code";
    license = lib.licenses.unfree;
    mainProgram = "claude";
    platforms = builtins.filter (s: release ? ${s}) (lib.platforms.linux ++ lib.platforms.darwin);
    sourceProvenance = [ lib.sourceTypes.binaryNativeCode ];
  };
}
