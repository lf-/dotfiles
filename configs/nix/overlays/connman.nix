{}:
final: curr: {
  connmanFull = curr.connmanFull.overrideAttrs (old: {
    patches = old.patches ++ [
      ./patches/connman/0001-plugins-iwd-Rename-autoconnect-fields-to-clarify-mea.patch
      ./patches/connman/0002-plugins-iwd-Fix-typo-in-create_known_network-name.patch
      ./patches/connman/0003-plugins-iwd-fix-iwd-autoconnect-being-set-wrongly-on.patch
    ];
  });
}
