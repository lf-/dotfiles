# udev rules

## `./50-stop-crashing-rtl8152.rules`

Fixes a Lenovo ThinkPad Ethernet adapter locking up kernel threads. Reported in
2018, not fixed yet: https://bugzilla.kernel.org/show_bug.cgi?id=200977.

You can probably update the `idVendor` and `idProduct` to match another
crashing Realtek device.

## `./99-usbtinyisp.rules`

Makes the `usbtinyisp` device and clones accessible without root to the `uucp`
group (on Arch Linux, this is the serial group).
