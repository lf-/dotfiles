{}:
final: curr: {
  # allow overriding TERM sent using SetEnv
  openssh = curr.openssh.overrideAttrs (old: {
    patches = old.patches ++ [ ./patches/openssh/0002-Allow-overriding-TERM-with-SetEnv-directives-in-ssh_.patch ];
  });

  # reduce scroll emulation delay
  libinput = curr.libinput.overrideAttrs (old: {
    patches = old.patches ++ [ ./patches/libinput/180.patch ];
  });
}
