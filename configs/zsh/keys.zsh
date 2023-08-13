bindkey -M vicmd "?" history-incremental-pattern-search-backward
bindkey -M vicmd "/" history-incremental-pattern-search-forward

bindkey -M viins '\C-T' _atuin_search_widget
bindkey -M viins '\C-R' history-incremental-pattern-search-backward
bindkey -M viins '\C-S' history-incremental-pattern-search-forward

unsetopt FLOW_CONTROL # disable C-s/C-q in the editor
