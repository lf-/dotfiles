git-info
========

Exposes git repository status information to prompts.

Many thanks to [Sorin Ionescu] and [Colin Hebert] for the original code.

Settings
--------

### Ignore submodules

Retrieving the status of a repository with submodules can take a long time.
So by default 'all' submodules are ignored. Optionally, 'untracked', 'dirty', or
'none' submodules can be ignored:

    zstyle ':zim:git-info' ignore-submodules 'none'

### Verbose mode

Verbose mode uses `git status` and computes the count of indexed, unindexed and
also untracked files. Verbose mode can be slower, depending on your repository
and the git version being used. It can be enabled with the following zstyle:

    zstyle ':zim:git-info' verbose yes

In non-verbose mode, the untracked context is not available (see *Main contexts*
below), and untracked files are also not considered for computing the dirty
context.

Theming
-------

To display information about the current repository in a prompt, use the
following syntax to define custom styles for each context you want displayed:

    zstyle ':zim:git-info:<context_name>' format '<string>'

### Main contexts

| Name      | Code | Description
| --------- | :--: | -----------------------------------------------------------
| action    |  %s  | Special action name (see *Special action contexts* below)
| ahead     |  %A  | Commits ahead of remote count
| behind    |  %B  | Commits behind remote count
| diverged  |  %V  | Diverged commits (both ahead and behind are yield when it's not defined)
| branch    |  %b  | Branch name
| commit    |  %c  | Commit short hash (when in 'detached HEAD' state)
| clean     |  %C  | Clean state
| dirty     |  %D  | Dirty state (count with untracked files when verbose mode enabled)
| indexed   |  %i  | Indexed files (count when verbose mode enabled)
| unindexed |  %I  | Unindexed files (count when verbose mode enabled)
| position  |  %p  | Name of tag that contains current commit (when in 'detached HEAD' state)
| remote    |  %R  | Remote name
| stashed   |  %S  | Stashed states count
| untracked |  %u  | Untracked files count (only when verbose mode enabled)

While the commit and position contexts are only available when in ['detached
HEAD' state], on the other hand, the ahead, behind, diverged, branch and remote
contexts are only available when an actual branch is checked out (so when
**not** in 'detached HEAD' state).

### Special action contexts

| Name              | Description             | Default value
| ----------------- | ----------------------- | -------------
| action:rebase-i   | Rebase interactive      | rebase-i
| action:rebase-m   | Rebase merge            | rebase-m
| action:rebase     | Rebase                  | rebase
| action:am         | Apply mailbox           | am
| action:am/rebase  | Apply mailbox or rebase | am/rebase
| action:merge      | Merge                   | merge
| action:revert-seq | Revert sequence         | revert-seq
| action:revert     | Revert                  | revert
| action:cherry-seq | Cherry-pick sequence    | cherry-seq
| action:cherry     | Cherry-pick             | cherry
| action:bisect     | Bisect                  | bisect

Formatting example for special actions:

    zstyle ':zim:git-info:action:bisect' format '<B>'
    zstyle ':zim:git-info:action:merge'  format '>M<'
    zstyle ':zim:git-info:action:rebase' format '>R>'

### Usage

First, customize the contexts you want displayed. For example, to format the
branch name, commit, and remote name, define the following styles:

    zstyle ':zim:git-info:branch' format 'branch:%b'
    zstyle ':zim:git-info:commit' format 'commit:%c'
    zstyle ':zim:git-info:remote' format 'remote:%R'

Second, define where the above contexts are displayed in prompts:

    zstyle ':zim:git-info:keys' format \
        'prompt'  'git(%b%c)' \
        'rprompt' '[%R]'

Last, add `${(e)git_info[prompt]}` and `${(e)git_info[rprompt]}` to `PS1` and
`RPS1` respectively, and add `git-info` to the precmd hooks.

Here's a complete example:
```zsh
setopt nopromptbang prompt{cr,percent,sp,subst}

zstyle ':zim:git-info:branch' format 'branch:%b'
zstyle ':zim:git-info:commit' format 'commit:%c'
zstyle ':zim:git-info:remote' format 'remote:%R'

zstyle ':zim:git-info:keys' format \
    'prompt'  'git(%b%c)' \
    'rprompt' '[%R]'

autoload -Uz add-zsh-hook && add-zsh-hook precmd git-info

PS1='${(e)git_info[prompt]}%# '
RPS1='${(e)git_info[rprompt]}'
```

[Sorin Ionescu]: https://github.com/sorin-ionescu
[Colin Hebert]: https://github.com/ColinHebert
['detached HEAD' state]: https://git-scm.com/docs/git-checkout#_detached_head
