# Sort of based on: https://github.com/zimfw/minimal/blob/master/minimal.zsh-theme

# vim:et sts=2 sw=2 ft=zsh
#
# Original minimal theme for zsh written by subnixr:
# https://github.com/subnixr/minimal
#
# Requires the `prompt-pwd` and `git-info` zmodules to be included in the .zimrc file.

# Global settings
if (( ! ${+MNML_OK_COLOR} )) typeset -g MNML_OK_COLOR=green
if (( ! ${+MNML_ERR_COLOR} )) typeset -g MNML_ERR_COLOR=red
if (( ! ${+MNML_BGJOB_MODE} )) typeset -g MNML_BGJOB_MODE=4
if (( ! ${+MNML_USER_CHAR} )) typeset -g MNML_USER_CHAR=λ
if (( ! ${+MNML_INSERT_CHAR} )) typeset -g MNML_INSERT_CHAR=›
if (( ! ${+MNML_NORMAL_CHAR} )) typeset -g MNML_NORMAL_CHAR=·

# Components
_prompt_mnml_keymap() {
  case ${KEYMAP} in
    vicmd) print -n -- ${MNML_NORMAL_CHAR} ;;
    *) print -n -- ${MNML_INSERT_CHAR} ;;
  esac
}

_prompt_mnml_keymap-select() {
  zle reset-prompt
}
if autoload -Uz is-at-least && is-at-least 5.3; then
  autoload -Uz add-zle-hook-widget && \
      add-zle-hook-widget -Uz keymap-select _prompt_mnml_keymap-select
else
  zle -N zle-keymap-select _prompt_mnml_keymap-select
fi

# Setup
typeset -g VIRTUAL_ENV_DISABLE_PROMPT=1

setopt nopromptbang prompt{cr,percent,sp,subst}

zstyle ':zim:prompt-pwd:tail' length 2
zstyle ':zim:prompt-pwd:separator' format '%f/%F{244}'

typeset -gA git_info
if (( ${+functions[git-info]} )); then
  zstyle ':zim:git-info:branch' format '%b'
  zstyle ':zim:git-info:commit' format 'HEAD'
  zstyle ':zim:git-info:clean' format '%F{${MNML_OK_COLOR}}'
  zstyle ':zim:git-info:dirty' format '%F{${MNML_ERR_COLOR}}'
  zstyle ':zim:git-info:keys' format \
      'rprompt' ' %C%D%b%c'

  autoload -Uz add-zsh-hook && add-zsh-hook precmd git-info
fi

PS1=$'$(prompt-pwd) ${VIRTUAL_ENV:+"${VIRTUAL_ENV:t} "}%(1j.%{\E[${MNML_BGJOB_MODE}m%}.)%F{%(?.${MNML_OK_COLOR}.${MNML_ERR_COLOR})}%(!.#.${MNML_USER_CHAR})%f%{\E[0m%}$(_prompt_mnml_keymap)'
RPS1='%F{244}${SSH_TTY:+"%m "}${(e)git_info[rprompt]}%f'
