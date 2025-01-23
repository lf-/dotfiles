# git-linky

This plugin allows you to create permalinks to Git repos trivially from within
Neovim. It's more or less a clone of [vim-github-link] rewritten in Lua, and
with forgejo support and configurability.

[vim-github-link]: https://github.com/knsh14/vim-github-link

## Configuration

Set the git config `linky.remote` to select the remote to use for the git
linking. If you have a non autodetected remote (ssh or https; ssh-looking
remotes will be guessed into https ones with some questionable regexes), you
can set the type of it with `remote.some-remote.linky-type = "github"` or
`"forgejo"`.

GitLab uses the same links as GitHub, so linky-type = "github" works for it
too.
