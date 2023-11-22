{ hplip }:
hplip.overrideAttrs (old: {
  configureFlags = old.configureFlags ++ [ "--enable-hpijs-install" ];
  preFixup = ''
    buildPythonPath "$out $pythonPath"

    for bin in $out/bin/*; do
      if [[ "$(basename "$bin")" == "hpijs" ]]; then
        continue
      fi
      py=$(readlink -m $bin)
      rm $bin
      echo "patching \`$py'..."
      patchPythonScript "$py"
      echo "wrapping \`$bin'..."
      makeWrapper "$py" "$bin" \
          --prefix PATH ':' "$program_PATH" \
          --set PYTHONNOUSERSITE "true" \
          $makeWrapperArgs
    done
  '';
})
