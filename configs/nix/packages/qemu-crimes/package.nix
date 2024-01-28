{ qemu }: qemu.overrideAttrs (old: {
  patches = old.patches ++ [ ./0001-hack-two-uarts-in-the-virt-machine.patch ];
})
