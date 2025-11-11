# shift-space in CSI u mode: https://www.leonerd.org.uk/hacks/fixterms/
bindkey '^[[32;2u' magic-space

bindkey -M vicmd "?" history-incremental-pattern-search-backward
bindkey -M vicmd "/" history-incremental-pattern-search-forward

bindkey -M viins '\C-T' _atuin_search_widget
bindkey -M viins '\C-R' history-incremental-pattern-search-backward

unsetopt FLOW_CONTROL # disable C-s/C-q in the editor
