final: prev:
{
  gitFull = (prev.gitFull.override { doInstallCheck = false; }).overrideAttrs (old: {
    patches = old.patches or [] ++ [
      ./patches/git/0001-builtin-blame-ignore-nonexistent-ignore-files.patch
    ];
  });
}
