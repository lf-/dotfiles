# connman

Fixes a race condition where sometimes connman would steal the network
interface before udev renames it to its persistent name. It's worked around by
adding the `eth*` and `wlan*` interfaces to the list of ignored interfaces.
