My dotfiles, managed by `polkadots`
===================================

To use:
-------

Install polkadots
~~~~~~~~~~~~~~~~~

`pip install polkadots_dotfile_manager`

Install the dotfiles
~~~~~~~~~~~~~~~~~~~~

.. code:: bash

        # go meta
        ln -s "$(pwd)/polkadots" ~/.config/polkadots
        # deal with the rest of them
        polkadots

Set a symlink for the wallpaper variant you want
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code:: bash

        ln -s "$(pwd)/wallpaper_orig.png" "$(pwd)/wallpaper.png"
        # or
        ln -s "$(pwd)/wallpaper_4-3.png" "$(pwd)/wallpaper.png"

