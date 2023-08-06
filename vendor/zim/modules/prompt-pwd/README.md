prompt-pwd
==========

Formats the path to the current working directory to be used by prompts.

Settings
--------

Use the following zstyle to truncate the path to the git root when in a git repo:

    zstyle ':zim:prompt-pwd' git-root yes

To truncate the number of trailing path components, use the following zstyle
with a positive value:

    zstyle ':zim:prompt-pwd:tail' length <value>

To customize the maximum number of characters per path component, use:

    zstyle ':zim:prompt-pwd:fish-style' dir-length <value>

Setting the value to 0 will disable shortening entirely, which is the default
behavior.

The default path separator is `/` and it can be customized using:

    zstyle ':zim:prompt-pwd:separator' format '<format>'

You can include [prompt expansion escape sequences] in your custom separator
format.

Theming
-------

Add a call to the `prompt-pwd` function in your prompt code where you want the
current working directory to be displayed. Here's an example:

```zsh
setopt nopromptbang prompt{cr,percent,sp,subst}

zstyle ':zim:prompt-pwd' git-root yes
zstyle ':zim:prompt-pwd:fish-style' dir-length 1
zstyle ':zim:prompt-pwd:separator' format '❯'

PS1='$(prompt-pwd)❯ '
```

If you want to use `prompt-pwd` inside a function, call it passing the variable
name you want it to set. A dummy example:
```zsh
prompt-pwd-len() {
  local current_dir
  prompt-pwd current_dir
  print ${#current_dir}
}
```

[prompt expansion escape sequences]: http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#Simple-Prompt-Escapes
