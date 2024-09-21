fpath_sync_debug=false
_fpath_sync:debug_log(){
  if [[ "$fpath_sync_debug" = true ]]; then
    echo "FPATH_SYNC: $1"
  fi
}

_fpath_sync:delete_first_from_fpath(){
  # There might be multiple instances of the same path on the fpath
  # We will only delete the first instance to "reset" the priority order
  # but leave later occurences
  local idx="$fpath[(Ie)$1]"
  if (( $idx != 0 )); then
    _fpath_sync:debug_log "deleting '$1' from FPATH at index '$idx'"
    fpath[$idx]=()
  fi
}

_fpath_sync:fpath_maybe_add_xdg(){
  # There are two valid paths in an XDG_DATA_DIR, one from the zsh install and one from third party
  # It is unclear if would ever make sense to add the ones from the zsh install,
  # since they should be always on the fpath, but for now we test for both

  local p="$1/zsh/$ZSH_VERSION/functions"

  if [[ -d $p ]]; then
    _fpath_sync:debug_log "Added '$p' to FPATH"
    fpath=("$p" $fpath)
  fi


  p="$1/zsh/site-functions"
  if [[ -d $p ]]; then
    _fpath_sync:debug_log "Added '$p' to FPATH"
    fpath=("$p" $fpath)
  fi
}

_fpath_sync:functions_from_xdg_data(){
  local a=($(echo "$XDG_DATA_DIRS" | tr ':' "\n" | xargs -I{} realpath -e "{}/zsh/site-functions" "\n" realpath -e "{}/zsh/$ZSH_VERSION/functions" 2>/dev/null | tr "\n" ' '))
  # unique the directories
  echo "${(u)a[@]}"
}

_fpath_sync:hook(){
  if [[ ! -v FPATH_SYNC_OLD_XDG_DATA_DIRS ]] then
    _fpath_sync:debug_log "Syncing XDG_DATA_DIRS into FPATH enabled"

    _fpath_sync:debug_log  "old FPATH\n${(F)fpath}"

    # First time around, only add relevant XDG_DATA_DIRs, which are not on the FPATH yet
    # Find XDG_DATA_DIRS which have $ZSH function dirs under them
    fpath_sync_old_xdg_fpaths=( $(_fpath_sync:functions_from_xdg_data) )

    _fpath_sync:debug_log  "adding from XDG"

    # Prepend in reverse order to maintain their order in the final path
    for idx in {${#fpath_sync_old_xdg_fpaths}..1} ; do
      local elem="${fpath_sync_old_xdg_fpaths[$idx]}"
      if (( ! ${fpath[(I)"$elem"]} )); then

        _fpath_sync:debug_log $elem

        fpath=($elem $fpath)
      fi
    done

    _fpath_sync:debug_log  "New FPATH\n${(F)fpath}"

  elif [[ "$FPATH_SYNC_OLD_XDG_DATA_DIRS" != "$XDG_DATA_DIRS" ]]; then
    _fpath_sync:debug_log  "XDG_DATA_DIRS CHANGED"
    # Check if the fpath dirs changed
    local new_paths=( $(_fpath_sync:functions_from_xdg_data) )

    if [[ "$fpath_sync_old_xdg_fpaths" != "$new_paths" ]]; then
      _fpath_sync:debug_log  "Need to update FPATH from XDG_DATA_DIRS!"

      local diff=( "${(@)$(diff <(for p in $new_paths; do echo $p; done) <(for p in $fpath_sync_old_xdg_fpaths; do echo $p; done) | grep -E "<|>")}" )

      # Prepend in reverse order to maintain their order in the final path
      for idx in {${#diff}..1} ; do
        local p=$diff[$idx]
        case "${p[1]}" in
          \<)
            # path got added
            local p_path="${p:2}"
            _fpath_sync:debug_log "Adding path '$p_path'"
            fpath=("$p_path" $fpath)
            ;;
          \>)
            # path got removed
            local p_path="${p:2}"
            _fpath_sync:debug_log "Removing path '$p_path'"
            _fpath_sync:delete_first_from_fpath "$p_path"
            ;;
          *)
            # This should not happen
            _fpath_sync:debug_log "Invalid diff line $p"
            _fpath_sync:debug_log "Tried to match on character ${p[1]}"
            ;;
        esac
      done

      fpath_sync_old_xdg_fpaths=( "${(@f)new_paths}" )

    fi
  fi
  FPATH_SYNC_OLD_XDG_DATA_DIRS="$XDG_DATA_DIRS"

  if [[ ! -v fpath_sync_old_fpath ]]; then
    _fpath_sync:debug_log "FPATH_SYNC init"
    # Do no re-init the first time around
  elif [[ "$fpath_sync_old_fpath" != "$fpath" ]]; then

    _fpath_sync:debug_log "FPATH Changed!"
    if [[ "$fpath_sync_debug" = true ]]; then
      diff <(echo "${(F)fpath}" | sort ) <(echo "${(F)fpath_sync_old_fpath}" | sort) | grep -E "<|>"
    fi

    # Allow us to restore the previous compinit, to be a good citizen
    functions -c compinit compinit_orig
    # Remove the current compinit to allow for reloading
    unfunction compinit
    # restore original compinit
    autoload +X compinit

    _fpath_sync:debug_log "previous compinit: $(whence -v compinit_orig)"
    _fpath_sync:debug_log "loaded compinit: $(whence -v compinit)"cccccbeneuikghktjlffbnvdfidhnlbcjtkcgkldfvkr


    # do not write dumpfile, since we are likely working on a temporary FPATH
    # TODO: make argument configurable
    _fpath_sync:debug_log "invoking compinit as 'compinit -D'"
    compinit -D
    # restore original function
    functions -c compinit_orig compinit
    _fpath_sync:debug_log "restored compinit: $(whence -v compinit)"

  fi
  fpath_sync_old_fpath=( "${(@f)fpath}" )
}

typeset -ag precmd_functions
if (( ! ${precmd_functions[(I)_fpath_sync:hook]} )); then
# Add our hook last to go after _direnv_hook
  precmd_functions=($precmd_functions _fpath_sync:hook)
fi
typeset -ag chpwd_functions
if (( ! ${chpwd_functions[(I)_fpath_sync:hook]} )); then
  # Add our hook last to go after _direnv_hook
  chpwd_functions=($chpwd_functions _fpath_sync:hook)
fi
