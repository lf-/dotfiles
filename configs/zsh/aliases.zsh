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

function ndr() {
    direnv reload
    nix-direnv-reload
}

function buck() {
    noglob command buck "$@"
}

function buck2() {
    noglob command buck2 "$@"
}

# Make man pages a reasonable width to actually read them
function man() {
    local cols=$(tput cols || echo ${COLUMNS:-80})
    if [[ $cols -gt 100 ]]; then
        MANWIDTH=100 command man "$@"
    else
        MANWIDTH="${cols}" command man "$@"
    fi
}

function removepath() {
    excl=()
    for item in "${path[@]}"; do
        if [[ "${item}" =~ "$1" ]]; then
            echo "remove: ${item}" >&2
            excl+=("${item}")
        fi
    done
    path=(${path:|excl})
}

# Resolves // git-root-relative args. Populates _git_resolved_args array and
# _git_resolved_print flag. Returns 1 (with error) if // is used outside a repo.
function _git_resolve_args() {
    local _cmd=$1 _top; shift
    _git_resolved_args=() _git_resolved_print=0
    while [[ $# -gt 0 ]]; do
        if [[ $1 == //* ]]; then
            if ! _top=$(git rev-parse --show-toplevel 2>/dev/null); then
                print -u2 "${_cmd}: not inside a git repository"
                return 1
            fi
            _git_resolved_print=1
            _git_resolved_args+=("${_top}/${1#//}")
        else
            _git_resolved_args+=("$1")
        fi
        shift
    done
}

function cd() {
    local _git_resolved_args _git_resolved_print
    _git_resolve_args cd "$@" || return
    (( _git_resolved_print )) && echo "cd ${_git_resolved_args[@]}"
    builtin cd "${_git_resolved_args[@]}"
}

function pushd() {
    local _git_resolved_args _git_resolved_print
    _git_resolve_args pushd "$@" || return
    (( _git_resolved_print )) && echo "pushd ${_git_resolved_args[@]}"
    builtin pushd "${_git_resolved_args[@]}"
}

# Tab completion for cd/pushd: complete `//path` as dirs relative to the git
# top-level; otherwise delegate to the standard completer for $service.
# aliases.zsh is sourced before compinit runs (zim's completion module comes
# later), so compdef doesn't exist yet. Defer registration to the first precmd.
_git_root_dir_completer() {
    local top
    if [[ $words[CURRENT] == //* ]] && top=$(git rev-parse --show-toplevel 2>/dev/null); then
        compset -P '//'
        _path_files -W $top -/
        return
    fi
    _${service}
}
autoload -Uz add-zsh-hook
_register_git_root_completion() {
    compdef _git_root_dir_completer cd pushd
    add-zsh-hook -d precmd _register_git_root_completion
}
add-zsh-hook precmd _register_git_root_completion

alias haiku='claude --model haiku'
alias skep='node ~/co/skepsis/cli.ts'
