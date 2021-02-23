# nvimsplit

this tool does basically the same thing as
[nvr](https://github.com/mhinz/neovim-remote) but is written in the
crab language and has fewer features

it lets you open files in new windows, tabs, and more from within the editor,
which is super useful if you need to e.g. `git commit` something which opens an
editor and waits for it to finish.

this is accomplished by connecting to the unix socket of the running neovim
instance it's called in and booping its api.

## changes over nvr

* the client process will exit when you `:q` the buffer even if you have `:set
  hidden` enabled.
* cozier for the use case of only wanting to open files in the editor, as all
  the flags necessary to set what kind of split you want are one character,
  including opening in a new tab
* very careful filename escaping

## usage

```
nvimsplit

USAGE:
    nvimsplit [FLAGS] <filename>

ARGS:
    <filename>    filename to open

FLAGS:
        --debug      debug logging
    -d, --detach     should nvimsplit return immediately or wait for the edit to be finished?
    -h, --help       Prints help information
    -s, --split      open in a :split
    -t, --tab        open in a :tabedit; default
    -V, --version    Prints version information
    -v, --vsplit     open in a :vsplit
```
