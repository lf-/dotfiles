{ kio-extras, libimobiledevice, libplist }:
kio-extras.overrideAttrs (old: {
  buildInputs = old.buildInputs ++ [
    libimobiledevice
    libplist
  ];
})
