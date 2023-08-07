# pretty sure this is off by default but I still don't like it
unsetopt EXTENDED_GLOB

# save history
if (( ! ${+HISTFILE} )); then
    typeset -g HISTFILE=${ZDOTDIR:-${HOME}}/.zhistory
fi

# save infinite history
HISTSIZE=1000000
SAVEHIST=1000000

# all instances share the same history
setopt SHARE_HISTORY

# history expansion goes into the command line first
setopt HIST_VERIFY

# don't show dupes in history search
setopt HIST_FIND_NO_DUPS

# don't history commands beginning in space (consistent with bash)
setopt HIST_IGNORE_SPACE

# allow comments in the shell
setopt INTERACTIVE_COMMENTS
