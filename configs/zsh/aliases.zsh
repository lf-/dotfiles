alias e='${(z)VISUAL:-${(z)EDITOR}}'
alias grep="${aliases[grep]:-grep} --color=auto"

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

