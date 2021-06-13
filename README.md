# jade's repo

## stuff you might want

unique ~reusable things I've made that are hosted in here

- [programs/](./programs) for compiled programs
  - [`nvimsplit`](./programs/nvimsplit) -- use this as `$VISUAL` in your
    `init.vim` to open recursive invocations of the editor (e.g. `git commit`)
    inside the editor by calling the nvim RPC interface. Depends on neovim-git
    by accident and I've not backported it.
- [bin/](./bin) for scripts. highlights:
  - [`_cargo_doc_open`](./bin/_cargo_doc_open) -- links cargo docs into a web
    root then calls the browser
  - [`raisepid`](./bin/raisepid) -- finds that !@#$# nvim that got lost behind
    a bunch of windows and is holding your file lock
  - [`cargo-play`](./bin/cargo-play) -- does local rust playgrounding and lets
    you upload the results. [more info here](./pwaygwoumd).
- [vim-plugins/](./vim-plugins) -- vim plugins I maintain
  - [vim-indent-guides](./vim-plugins/vim-indent-guides) -- fork of
    vim-indent-guides but with rainbow indents

## dotfiles

I have dotfiles in here, which will run on more or less any linux.
Configurations are provided for:

#### desktops

this is desktop agnostic, in general. however, some desktops have configs.

- `bspwm`/`sxhkd`/[`aiopanel`][aiopanel] tiling wm setup
- KDE (colours, mostly)

#### editor

nvim, with a buncha vim-plug plugins. Can be installed post-polkadots:

```sh
# ensure you have neovim-git. I use nvim-treesitter. :/ sorry
$ ~/.config/nvim/setup.sh
```

#### shell

zsh with prezto. Can be installed post-polkadots:

```sh
$ zsh ~/.zprezto/install.zsh
```

[aiopanel]: https://github.com/lf-/aiopanel

### Usage

#### Install polkadots

```
$ pip install git+https://github.com/lf-/polkadots.git
```

#### Install the dotfiles

```sh
# go meta
ln -s ~+/polkadots ~/.config/polkadots
# deal with the rest of them
polkadots -2
```

#### Set a wallpaper (bspwm env only)

```sh
ln -s ~+/wallpaper_orig.png ~+/wallpaper.png
# or
ln -s ~+/wallpaper_4-3.png ~+/wallpaper.png
```

### Guides

* [tpm/ssh](https://jade.fyi/blog/tpm-ssh/)
