_source_if_exists() {
    [[ -e "$1" ]] && . "$1"
}
_source_if_exists ~/.dotfiles-work/configs/zsh/completion-add.zsh
