alias e='${(z)VISUAL:-${(z)EDITOR}}'
alias grep="${aliases[grep]:-grep} --color=auto"
alias ls="${aliases[ls]:-ls} --group-directories-first --color=auto"

function mkcd() {
    mkdir -p $1 && cd $1
}

function cdnv() {
    pushd ~/.dotfiles/configs/nvim
}

alias gdba=/opt/gdb/bin/gdb

function cdnix() {
    pushd ~/.dotfiles/configs/nix
}

function pquartus() {
    . ~/.dotfiles/configs/support/pquartus
}

# Make man pages a reasonable width to actually read them
function man() {
    local cols=$(tput cols || echo ${COLUMNS:-80})
    if [[ cols -gt 100 ]]; then
        MANWIDTH=100 command man "$@"
    else
        MANWIDTH="${cols}" command man "$@"
    fi
}

