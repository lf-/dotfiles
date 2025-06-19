# nix-drv.nvim

This plugin allows you to simply open .drv files from /nix/store and have them show as the mostly readable JSON format rather than the raw ATerm format.

## TODOs

- Shell quoting is wrong if you are opening a .drv file with quotes in it or similar.
- It probably does not work properly to open a .drv file from outside /nix/store (and this may in fact just be broken entirely).

  This probably should actually be fixed by introducing a counterpart to `nix derivation show` in Lix that operates on stdin, but we do not currently have one of those.
- We could make it able to write back to the drv format using `nix derivation add`, perhaps, but the correct semantics to actually implement that are not clear.

## Credit

A lot of the code structure (and some pieces verbatim) are taken from https://github.com/RaafatTurki/hex.nvim, licensed MIT.

