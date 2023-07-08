# Fixes rr on coreutils
final: curr: {
  rr = curr.rr.overrideAttrs (old: {
    patches = old.patches ++ [
      (
        final.fetchpatch {
          name = "fix_gnu_prctl.patch";
          url = "https://github.com/rr-debugger/rr/commit/0c0f3f737c99caafccd35f652cebb0a7d73b6165.patch";
          sha256 = "sha256-kKUuYjMfO0o2bkfHyrK5F178mOrDFlLoTyOz8B51b8Y=";
        })
    ];
  });
}
