final: prev:
let
  inherit (prev) lib;
  makeBin = name: ''
    substitute ${./watchman.sh.in} $out/bin/${name} \
      --replace-fail @watchman@ ${prev.watchman} \
      --replace-fail @exe@ ${name}
    chmod +x $out/bin/${name}
  '';

  addOverlay =
    set: overrides:
    set.override (old: {
      packageOverrides = lib.composeExtensions (old.packageOverrides or (_: _: { })) overrides;
    });
in
{
  # Silly wrapper to workaround https://github.com/facebook/watchman/pull/1236
  watchman = final.runCommand "watchman-wrapped-${prev.watchman.version}" { } ''
    mkdir -p $out/bin
    ${makeBin "watchman"}
    ${makeBin "watchmanctl"}
  '';

  # dodge pointless rebuilds. we are not using the django autoreloader!!
  python313 = addOverlay prev.python313 (
    pfinal: pprev:
    let
      pywatchman-old = pprev.pywatchman.override { inherit (prev) watchman; };
    in
    {
      django = pprev.django.override { pywatchman = pywatchman-old; };
    }
  );

  python311 = addOverlay prev.python311 (
    pfinal: pprev:
    let
      pywatchman-old = pprev.pywatchman.override { inherit (prev) watchman; };
    in
    {
      django = pprev.django.override {
        pywatchman = pywatchman-old;
      };
    }
  );
}
