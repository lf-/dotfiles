from pathlib import Path
dotconfig = lambda n: (n, (Path('~/.config') / n))

actions = [
    SymlinkAction('colors', '~/.colors'),
    SymlinkAction('qt4/Trolltech.conf', '~/.config/Trolltech.conf'),
    SymlinkAction('gtk3', '~/.config/gtk-3.0'),
    SymlinkAction('prezto', '~/.zprezto'),
    SymlinkAction('icons', '~/.icons'),
    SymlinkAction('bin', '~/bin'),
    SymlinkAction('fonts', '~/.fonts'),
    SymlinkAction('compton/compton.conf', '~/.config/compton.conf'),
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
]

for dc in dotconfigs:
    actions.append(SymlinkAction(*dotconfig(dc)))
