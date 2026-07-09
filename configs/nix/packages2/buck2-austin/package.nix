{
  fetchDotslash,
  stdenv,
  buildPackages,
  installShellFiles,
  lib,
}:
fetchDotslash {
  name = "buck2-austin";
  srcs = [
    ./buck2
    ./rust-project
  ];

  # same hacks as the nixpkgs derivation
  nativeBuildInputs = [
    installShellFiles
  ];
  doInstallCheck = true;

  postInstall = ''
    ln -s buck2 $out/bin/buck
  '';

  preInstallCheck =
    let
      emulator = stdenv.hostPlatform.emulator buildPackages;
    in
    lib.optionalString (stdenv.hostPlatform.emulatorAvailable buildPackages) ''
      installShellCompletion --cmd buck2 \
        --bash <(${emulator} $out/bin/buck2 completion bash ) \
        --fish <(${emulator} $out/bin/buck2 completion fish ) \
        --zsh <(${emulator} $out/bin/buck2 completion zsh )
    '';
}
