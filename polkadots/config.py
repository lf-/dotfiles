from pathlib import Path
import subprocess
import re
import logging

LAPTOP_THRESHOLD = 75000

def get_is_laptop():
    # XXX: this is mildly cursed
    try:
        randr_output = subprocess.check_output('xrandr').decode()
    except (subprocess.CalledProcessError, FileNotFoundError):
        logging.warning('xrandr was not available or failed. defaulting to '
                        'desktop alacritty config')
        randr_output = ''

    sq_mm_re = re.compile(r'^.+?(\d+(\.\d+)?)mm x (\d+(\.\d+)?)mm$')
    primary_sq_mm = None
    for line in randr_output.split('\n'):
        if 'primary' in line:
            m = sq_mm_re.match(line)
            if not m:
                logging.warning('failed to match xrandr output')
                continue
            h, _, w, _ = m.groups()
            if not h or not w:
                logging.warning('xrandr output changed??')
                continue
            primary_sq_mm = int(h) * int(w)
    return primary_sq_mm and primary_sq_mm < LAPTOP_THRESHOLD


dotconfig = lambda n: (n, (Path('~/.config') / n))

actions = [
    MkdirAction('~/.config'),
    SymlinkAction('colors', '~/.colors'),
    SymlinkAction('prezto', '~/.zprezto'),
    SymlinkAction('icons', '~/.icons'),
    SymlinkAction('bin', '~/bin'),
    SymlinkAction('fonts', '~/.fonts'),

    MkdirAction('~/.config/fontconfig/conf.d'),
    SymlinkAction('fontconfig/conf.d', '~/.config/fontconfig/conf.d', dir_mode=True),

    SymlinkAction('main', '~', dir_mode=True),

    MkdirAction('~/.config/Code/User'),
    SymlinkAction('Code', '~/.config/Code/User', dir_mode=True),

    MkdirAction('~/.ipython/profile_default'),
    SymlinkAction('ipython/ipython_config.py', '~/.ipython/profile_default/ipython_config.py'),
    SymlinkAction('ipython/startup', '~/.ipython/profile_default/startup'),
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
    'git',
    'gh',
]

alacritty_config = 'alacritty-laptop.yml' \
    if get_is_laptop() \
    else 'alacritty-desktop.yml'

for dc in dotconfigs:
    actions.append(SymlinkAction(*dotconfig(dc)))

alacritty = Path('~/.config/alacritty')
actions.append(CatAction(
    alacritty / 'alacritty.yml',
    alacritty / 'alacritty-base.yml',
    alacritty / alacritty_config
))
