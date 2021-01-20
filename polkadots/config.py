from pathlib import Path
dotconfig = lambda n: (n, (Path('~/.config') / n))

actions = [
    SymlinkAction('colors', '~/.colors'),
    SymlinkAction('prezto', '~/.zprezto'),
    SymlinkAction('icons', '~/.icons'),
    SymlinkAction('bin', '~/bin'),
    SymlinkAction('fonts', '~/.fonts'),
    SymlinkAction('main', '~', dir_mode=True),
]

dotconfigs = [
    'polkadots',
    'aiopanel',
    'sxhkd',
    'nvim',
    'bspwm',
    'qemu-box',
    'rofi',
    'alacritty',
]

for dc in dotconfigs:
    actions.append(SymlinkAction(*dotconfig(dc)))
