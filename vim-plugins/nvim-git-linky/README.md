# git-linky

This plugin allows you to create permalinks to Git repos trivially from within
Neovim. It's more or less a clone of [vim-github-link] rewritten in Lua, and
with forgejo support and configurability.

[vim-github-link]: https://github.com/knsh14/vim-github-link

## Configuration

Set `linky.remote` to select the remote to use for the git linking. If you have
a non autodetected (HTTPS) remote, you can set the type of it with
`remotes.some-remote.linky-type = "github"` or `"forgejo"`.

It's future work on this to teach it how to strip ssh remotes automatically
given the knowledge of what the service is.
