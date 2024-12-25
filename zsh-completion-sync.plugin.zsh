_completion_sync:debug_log(){
  if zstyle -t "$1" debug; then
    echo "completion sync: $2"
  fi
}

_completion_sync:delete_first_from_fpath(){
  # There might be multiple instances of the same path on the fpath
  # We will only delete the first instance to "reset" the priority order
  # but leave later occurences
  local idx="$fpath[(Ie)$1]"
  if (( $idx != 0 )); then
    _completion_sync:debug_log ':completion-sync:fpath:delete' "deleting '$1' from FPATH at index '$idx'"
    fpath[$idx]=()
  fi
}

_completion_sync:fpath_maybe_add_xdg(){
  # There are two valid paths in an XDG_DATA_DIR, one from the zsh install and one from third party
  # It is unclear if would ever make sense to add the ones from the zsh install,
  # since they should be always on the fpath, but for now we test for both

  local p="$1/zsh/$ZSH_VERSION/functions"

  if [[ -d $p ]]; then
    _completion_sync:debug_log ':completion-sync:xdg:add' "Added '$p' to FPATH"
    fpath=("$p" $fpath)
  fi


  p="$1/zsh/site-functions"
  if [[ -d $p ]]; then
    _completion_sync:debug_log ':completion-sync:xdg:add' "Added '$p' to FPATH"
    fpath=("$p" $fpath)
  fi
}

_completion_sync:functions_from_xdg_data(){
  local a=($(echo "$XDG_DATA_DIRS" | tr ':' "\n" | xargs -I{} realpath -e "{}/zsh/site-functions" "\n" realpath -e "{}/zsh/$ZSH_VERSION/functions" "\n" realpath -e "{}/zsh/vendor-completions" 2>/dev/null | tr "\n" ' '))
  # unique the directories
  echo "${(u)a[@]}"
}

# This function directly reads into the completion_sync_fpaths_from_path variable to avoid a subshell invocation
_completion_sync:find_fpaths_from_path(){
  local rel_paths=()
  if ! zstyle -g rel_paths ':completion-sync:path' rel_paths; then
    rel_paths=("../share/zsh/$ZSH_VERSION/functions" '../share/zsh/site-functions')
  fi

  completion_sync_fpaths_from_path=()

  for p in $path; do
    for rp in $rel_paths; do
      local maybe_fpath="$p/$rp"
      # This is the equivalent of using readlink on the path (i.e. canonicalize it, and resolve symlinks)
      _completion_sync:debug_log ':completion-sync:path:path2fpath:candidate' "fpath candidate: $maybe_fpath"
      maybe_fpath=${maybe_fpath:A}
      _completion_sync:debug_log ':completion-sync:path:path2fpath:candidate:canonicalize' "fpath candidate (canonicalized): $maybe_fpath"
      if [[ -d "$maybe_fpath" ]]; then
        _completion_sync:debug_log ':completion-sync:path:path2fpath' "found fpath on path: $maybe_fpath"
        completion_sync_fpaths_from_path=("$maybe_fpath" $completion_sync_fpaths_from_path)
      fi
    done
  done
  # unique the directories
  _completion_sync:debug_log ':completion-sync:path:path2fpath:unique' "fpaths on path (non-unique):\n${(F)completion_sync_fpaths_from_path}\n"
  completion_sync_fpaths_from_path=(${(u)completion_sync_fpaths_from_path[@]})
  _completion_sync:debug_log ':completion-sync:path:path2fpath:unique' "fpaths on path (unique):\n${(F)completion_sync_fpaths_from_path}\n"

}

_completion_sync:custom_compinit_isenabled(){
  zstyle -t ':completion-sync:compinit:custom' enabled
  return
}

_completion_sync:zsh_autocomplete_compat_isenabled(){
  # set return code to !custom_isenabled && compat:zsh-autocomplete enabled
  _completion_sync:custom_compinit_isenabled
  if [[ $? -ne 0 ]]; then
    zstyle -T ':completion-sync:compinit:compat:zsh-autocomplete' enabled
    return
  else
    return 1
  fi
}

_completion_sync:zsh_autocomplete_compat_disable(){
  zstyle ':completion-sync:compinit:compat:zsh-autocomplete' enabled false
}


_completion_sync:zsh_autocomplete_compat_reload(){
  # If zsh-autocomplete is loaded, it will either be in the fully initiliazed state, or the pre-initialized state

  # In the pre-initilaized state, a precmd hook is waiting to execute, which will setup the plugin and among other things reload compinit and define a named-directory
  # Instead of waiting for the pre-cmd hook to fire, we want it to execute right now.

  # Find the autocomplete hook if present
  local precmd=${(M)precmd_functions:#.autocomplete:*}
  # If the plugin is already fully initialized, then the relevant functions have been undefined and we need to re-initialize it from the start.
  if [[ -z $precmd ]]; then
    # In this case the named directory "~zsh-autocomplete" will be present, which we can use to reload regardless of install location
    if [[ ! -v nameddirs[zsh-autocomplete] ]]; then
      _completion_sync:debug_log ':completion-sync:compinit:compat:zsh-autocomplete' "compat: zsh-autocomplete: unable to detect plugin setup functions or named directory, disabling compat"
      _completion_sync:zsh_autocomplete_compat_disable
      return 1
    else
      # Since the named directory exists we can source the plugin again, which will put the precmd hook back in the array
      _completion_sync:debug_log ':completion-sync:compinit:compat:zsh-autocomplete' "compat: zsh-autocomplete: re-initializing zsh-autocomplete via 'source ~zsh-autocomplete/zsh-autocomplete.plugin.zsh'"
      source ~zsh-autocomplete/zsh-autocomplete.plugin.zsh

      precmd=${(M)precmd_functions:#.autocomplete:*}
      if [[ -z $precmd ]]; then
        _completion_sync:debug_log ':completion-sync:compinit:compat:zsh-autocomplete' "compat: zsh-autocomplete: unable to detect plugin setup functions even after reinitializing, disabling compat"
        _completion_sync:zsh_autocomplete_compat_disable
        return 1
      fi
    fi
  fi

  # Execute the precmd hook, this will re-initialize the compsys (since we are handling the zcompdump file)
  _completion_sync:debug_log ':completion-sync:compinit:compat:zsh-autocomplete' "compat: zsh-autocomplete: executing precmd hook '$precmd' now"
  _completion_sync:debug_log ':completion-sync:compinit:compat:zsh-autocomplete:diff' "compat: zsh-autocomplete: precmd hooks before"
  _completion_sync:debug_log ':completion-sync:compinit:compat:zsh-autocomplete:diff' "$precmd_functions"
  $precmd
  _completion_sync:debug_log ':completion-sync:compinit:compat:zsh-autocomplete:diff' "compat: zsh-autocomplete: precmd hooks after"
  _completion_sync:debug_log ':completion-sync:compinit:compat:zsh-autocomplete:diff' "$precmd_functions"

}

# Take a path (as first arg) to a zstyle which has two leaf keys "enabled" and "command"
# if enabled is true, eval the string inside command
_completion_sync:run_hook_if_enabled(){
  local style="$1"

  if zstyle -t "$style" enabled; then
    local hook
    zstyle -s "$style" command hook
    eval "$hook"
  fi
}

_completion_sync:compsys_reload(){
  # Delete current cache
  rm -rf "$_per_shell_compdump"

  _completion_sync:run_hook_if_enabled ':completion-sync:compinit:custom:pre-hook'

  if _completion_sync:custom_compinit_isenabled ; then
    local custom
    zstyle -s ':completion-sync:compinit:custom' command custom
    _completion_sync:debug_log ':completion-sync:compinit:custom' "compinit: using custom command instead of compinit: ${(q)custom}"
    eval $custom
  elif _completion_sync:zsh_autocomplete_compat_isenabled ; then
    # Reload will either reload zsh-autocomplete or disable the compat if it is not present
    if ! _completion_sync:zsh_autocomplete_compat_reload; then
      # zsh_autocomplete_compat could not properly reload, the plugin is likely not present, disable compat
      _completion_sync:zsh_autocomplete_compat_disable
      # Re-run the compsys logic with zac compat disabled
      _completion_sync:compsys_reload
    fi
  else

    # Ensure that we call compinit provided from the fpath (default: off)
    if zstyle -t ':completion-sync:compinit:builtin-compinit' enabled; then
      # Allow us to restore the previous compinit, to be a good citizen
      functions -c compinit compinit_orig
      # Remove the current compinit to allow for reloading
      unfunction compinit
      # restore original compinit
      autoload +X compinit

      _completion_sync:debug_log ':completion-sync:compinit:builtin-compinit' "previous compinit: $(whence -v compinit_orig)"
      _completion_sync:debug_log ':completion-sync:compinit:builtin-compinit' "loaded compinit: $(whence -v compinit)"
    fi

    _completion_sync:debug_log ':completion-sync:compinit' "invoking compinit as 'compinit -d \"$_per_shell_compdump\"'"
    compinit -d "$_per_shell_compdump"

    if zstyle -t ':completion-sync:compinit:builtin-compinit' enabled; then
      # restore original function
      functions -c compinit_orig compinit
      _completion_sync:debug_log ':completion-sync:compinit:builtin-compinit' "restored compinit: $(whence -v compinit)"
    fi

  fi

  _completion_sync:run_hook_if_enabled ':completion-sync:compinit:custom:post-hook'

}

_completion_sync:path_hook(){
  if [[ ! -v COMPLETION_SYNC_OLD_PATH ]]; then
    _completion_sync:debug_log ':completion-sync:path:init' "Detecting FPATHs from PATH enabled"

    _completion_sync:debug_log ':completion-sync:path:init:diff' "from path: old FPATH\n${(F)fpath}\n"
    # Detect current fpaths from path and read it into the variable
    _completion_sync:find_fpaths_from_path

    # Prepend in reverse order to maintain their order in the final path
    for idx in {${#completion_sync_fpaths_from_path}..1} ; do
      local elem=${completion_sync_fpaths_from_path[$idx]}
      # First time around, only add relevant XDG_DATA_DIRs, which are not on the FPATH yet
      if (( ! ${fpath[(I)"$elem"]} )); then

        _completion_sync:debug_log ':completion-sync:path:init:diff' "from path: $elem"

        fpath=($elem $fpath)
        completion_sync_fpath_changed_during_init=true
      fi
    done

    _completion_sync:debug_log ':completion-sync:path:init:diff' "from path: new FPATH\n${(F)fpath}\n"
  elif [[ "$COMPLETION_SYNC_OLD_PATH" != "$PATH" ]]; then
    _completion_sync:debug_log ':completion-sync:path:onchange' "PATH CHANGED"
    # Check if the fpath dirs changed
    local completion_sync_old_fpaths_from_path=( "${(@f)completion_sync_fpaths_from_path}" )

    if [[ "$completion_sync_old_fpaths_from_path" != "$completion_sync_fpaths_from_path" ]]; then
      _completion_sync:debug_log ':completion-sync:path:onchange' "Need to update FPATH from PATH!"

      local diff=( "${(@)$(diff <(echo "${(F)completion_sync_fpaths_from_path}") <( echo "${(F)completion_sync_old_fpaths_from_path}") | grep -E "<|>")}" )
      _completion_sync:debug_log ':completion-sync:path:diff' "$diff"

      # TODO: Generalize without subshell
      # Prepend in reverse order to maintain their order in the final path
      for idx in {${#diff}..1} ; do
        local p=$diff[$idx]
        case "${p[1]}" in
          \<)
            # path got added
            local p_path="${p:2}"
            _completion_sync:debug_log ':completion-sync:path:onchange:add' "Adding path '$p_path'"
            _completion_sync:debug_log ':completion-sync:fpath:add' "Adding '$p_path' to FPATH"
            fpath=("$p_path" $fpath)
            ;;
          \>)
            # path got removed
            local p_path="${p:2}"
            _completion_sync:debug_log ':completion-sync:path:onchange:delete' "Removing path '$p_path'"
            _completion_sync:delete_first_from_fpath "$p_path"
            ;;
          *)
            # This should not happen
            _completion_sync:debug_log ':completion-sync:path:onchange' "Invalid diff line $p"
            _completion_sync:debug_log ':completion-sync:path:onchange' "Tried to match on character ${p[1]}"
            ;;
        esac
      done
    else
      _completion_sync:debug_log ':completion-sync:path:onchange' "No FPATH change needed"
    fi
  fi
  COMPLETION_SYNC_OLD_PATH="$PATH"
}

_completion_sync:hook(){
  if zstyle -t ':completion-sync:path' enabled; then
    _completion_sync:path_hook
  fi

  if zstyle -T ':completion-sync:xdg' enabled; then
    if [[ ! -v COMPLETION_SYNC_OLD_XDG_DATA_DIRS ]]; then
      _completion_sync:debug_log ':completion-sync:xdg:init' "Syncing XDG_DATA_DIRS into FPATH enabled"

      _completion_sync:debug_log ':completion-sync:xdg:init:diff' "old FPATH\n${(F)fpath}"

      # First time around, only add relevant XDG_DATA_DIRs, which are not on the FPATH yet
      # Find XDG_DATA_DIRS which have $ZSH function dirs under them
      completion_sync_old_xdg_fpaths=( $(_completion_sync:functions_from_xdg_data) )

      _completion_sync:debug_log ':completion-sync:xdg:init:diff' "adding from XDG"

      # Prepend in reverse order to maintain their order in the final path
      for idx in {${#completion_sync_old_xdg_fpaths}..1} ; do
        local elem="${completion_sync_old_xdg_fpaths[$idx]}"
        if (( ! ${fpath[(I)$elem]} )); then

          _completion_sync:debug_log ':completion-sync:xdg:init:diff' $elem

          fpath=($elem $fpath)
          completion_sync_fpath_changed_during_init=true
        fi
      done

      _completion_sync:debug_log ':completion-sync:xdg:init:diff' "New FPATH\n${(F)fpath}"

    elif [[ "$COMPLETION_SYNC_OLD_XDG_DATA_DIRS" != "$XDG_DATA_DIRS" ]]; then
      _completion_sync:debug_log ':completion-sync:xdg:onchange' "XDG_DATA_DIRS CHANGED"
      # Check if the fpath dirs changed
      local new_paths=( $(_completion_sync:functions_from_xdg_data) )

      if [[ "$completion_sync_old_xdg_fpaths" != "$new_paths" ]]; then
        _completion_sync:debug_log ':completion-sync:xdg:onchange' "Need to update FPATH from XDG_DATA_DIRS!"

        local diff=( "${(f)$(diff <(echo "${(F)new_paths}") <( echo "${(F)completion_sync_old_xdg_fpaths}") | grep -E "<|>")}" )
        _completion_sync:debug_log ':completion-sync:xdg:diff' "$diff"

        # Prepend in reverse order to maintain their order in the final path
        for idx in {${#diff}..1} ; do
          local p=$diff[$idx]
          case "${p[1]}" in
            \<)
              # path got added
              local p_path="${p:2}"
              _completion_sync:debug_log ':completion-sync:xdg:onchange:add' "Adding path '$p_path'"
              _completion_sync:debug_log ':completion-sync:fpath:add' "Adding '$p_path' to FPATH"
              fpath=("$p_path" $fpath)
              ;;
            \>)
              # path got removed
              local p_path="${p:2}"
              _completion_sync:debug_log ':completion-sync:xdg:onchange:delete' "Removing path '$p_path'"
              _completion_sync:delete_first_from_fpath "$p_path"
              ;;
            *)
              # This should not happen
              _completion_sync:debug_log ':completion-sync:xdg:onchange' "Invalid diff line $p"
              _completion_sync:debug_log ':completion-sync:xdg:onchange' "Tried to match on character ${p[1]}"
              ;;
          esac
        done

        completion_sync_old_xdg_fpaths=( "${(@f)new_paths}" )
      else
        _completion_sync:debug_log ':completion-sync:xdg:onchange' "No FPATH change needed"
      fi
    fi
    COMPLETION_SYNC_OLD_XDG_DATA_DIRS="$XDG_DATA_DIRS"
  fi

  if [[ ! -v completion_sync_old_fpath ]]; then
    _completion_sync:debug_log ':completion-sync:fpath:init' "Syncing completions to fpath enabled"
    # Do not re-init the first time around unless other init code extended FPATH
    if [[ "$completion_sync_fpath_changed_during_init" == "true" ]]; then
      _completion_sync:debug_log ':completion-sync:fpath:init' "FPATH Changed during init, reloading compsys!"
      _completion_sync:compsys_reload
    fi
  elif [[ "$completion_sync_old_fpath" != "$fpath" ]]; then

    _completion_sync:debug_log ':completion-sync:fpath:onchange' "FPATH Changed!"
    if zstyle -t ':completion-sync:fpath:onchange:diff' debug; then
      diff <(echo "${(F)fpath}" | sort ) <(echo "${(F)completion_sync_old_fpath}" | sort) | grep -E "<|>"
    fi

    _completion_sync:compsys_reload
  fi
  completion_sync_old_fpath=( "${(@f)fpath}" )
}

local compDumpDir="${TMPDIR:-/tmp}/per-shell-zcompdumps"
mkdir -p $compDumpDir
# Create a specific zcompdump for this pid. This allows us to use a zcompdump per shell and identify it later if desired
_per_shell_compdump="$compDumpDir/$$.zcompdump"
# Set the relevant env vars for compdump location, various plugins/mechanisms will create the compdump there
ZSH_COMPDUMP="$_per_shell_compdump"
_comp_dumpfile="$_per_shell_compdump"

typeset -ag precmd_functions
if (( ! ${precmd_functions[(I)_completion_sync:hook]} )); then
# Add our hook last to go after _direnv_hook
  precmd_functions=($precmd_functions _completion_sync:hook)
fi
typeset -ag chpwd_functions
if (( ! ${chpwd_functions[(I)_completion_sync:hook]} )); then
  # Add our hook last to go after _direnv_hook
  chpwd_functions=($chpwd_functions _completion_sync:hook)
fi
