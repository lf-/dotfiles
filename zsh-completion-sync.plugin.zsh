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
  local a=($(echo "$XDG_DATA_DIRS" | tr ':' "\n" | xargs -I{} realpath -e "{}/zsh/site-functions" "\n" realpath -e "{}/zsh/$ZSH_VERSION/functions" 2>/dev/null | tr "\n" ' '))
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


_completion_sync:zsh_autocomplete_compat_detect(){
  # Find the first instance of a function provided by zsh-autocomplete (which are prefixed by '.autocomplete:' )
  local zacFname="$(functions | grep --max-count=1 -o -E "^\.autocomplete:([^([:space:]])+")"
  if [[ -z "$zacFname" ]]; then
    _completion_sync:debug_log ':completion-sync:compinit:compat:zsh-autocomplete' "compat: zsh-autocomplete: could not find loaded functions from zsh-autocomplete. Disabling integration"
    _completion_sync:zsh_autocomplete_compat_disable
    return
  else
    # Hopefully whence has a stable output, since we need to parse out the path
    # Currently the path is an absolute path and the last part of the output,
    # so we can return the longest match that starts with "/" and runs till the end of the line
    local curDir="$(whence -v $zacFname | grep -Eo '(/.*)$' | xargs dirname)"
    if [[ -z "$curDir" ]]; then
      _completion_sync:debug_log ':completion-sync:compinit:compat:zsh-autocomplete' "compat: zsh-autocomplete: could not determine directory that '$zacFname' was loaded from. Disabling integration"
      _completion_sync:zsh_autocomplete_compat_disable
      return
    fi
    _completion_sync:debug_log ':completion-sync:compinit:compat:zsh-autocomplete' "compat: zsh-autocomplete: found zsh-autocomplete function '$zacFname' loaded from '$curDir'"

    local zacPluginFileName="zsh-autocomplete.plugin.zsh"

    # Canonicalize and resolve symlinks
    curDir="${curDir:A}"

    completion_sync_zac_plugin_path=""
    #do while
    while
      _completion_sync:debug_log ':completion-sync:compinit:compat:zsh-autocomplete' "compat: zsh-autocomplete: looking for '$zacPluginFileName' in directory '$curDir' "
      if [[ -f "$curDir/$zacPluginFileName" ]]; then
        completion_sync_zac_plugin_path="$curDir/$zacPluginFileName"
        _completion_sync:debug_log ':completion-sync:compinit:compat:zsh-autocomplete' "compat: zsh-autocomplete: found plugin source at '$completion_sync_zac_plugin_path'"
        break
      fi
    local oldDir="${curDir:A}"
    if [[ "$oldDir" != "/" ]]; then
      local newPath="$oldDir/.."
      # Canonicalize and resolve symlinks
      curDir="${newPath:A}"
    fi
    # use $oldDir for the condition, to ensure that we run once even in root
    # It is extremely unlikely that the plugin would be at root,
    # but this technically prepares us for some really weird sandboxing
    [[ "$oldDir" != "/" ]]
    do :; done

    if [[ "$completion_sync_zac_plugin_path" == "" ]]; then
      _completion_sync:debug_log ':completion-sync:compinit:compat:zsh-autocomplete' "compat: zsh-autocomplete: unable to detect plugin source in parent directories of load dir for $zacFname. Disabling integration"
      _completion_sync:zsh_autocomplete_compat_disable
      return
    fi

  fi
}

_completion_sync:compsys_reload(){
  if _completion_sync:custom_compinit_isenabled ; then
    local custom
    zstyle -s ':completion-sync:compinit:custom' command custom
    _completion_sync:debug_log ':completion-sync:compinit:custom' "compinit: using custom command instead of compinit: ${(q)custom}"
    eval $custom
  elif _completion_sync:zsh_autocomplete_compat_isenabled ; then
    # Check if unset or set to empty string (which might indicate previous failed detection)
    if [[ -z "${completion_sync_zac_plugin_path+1}"  ]]; then
      # zstyle was enabled post init
      _completion_sync:debug_log ':completion-sync:compinit:compat:zsh-autocomplete' "compat: zsh-autocomplete: enabled, but path to plugin not set. Trying auto detection"
      # We rely on detect either correctly setting the var or disabling the compat feature to not get into a loop here
      _completion_sync:zsh_autocomplete_compat_detect
      _completion_sync:compsys_reload
    else
      local zacCompargs
      zstyle -a ':autocomplete::compinit' arguments zaCompargs;

      # -D is required to disable caching
      if [[ "${zacCompargs[(Ie)'-D']}" -eq 0 ]] then
        _completion_sync:debug_log ':completion-sync:compinit:compat:zsh-autocomplete:compargs' "compat: zsh-autocomplete: adding missing '-D' option to zsh-autocomplete compinit arguments'"
        _completion_sync:debug_log ':completion-sync:compinit:compat:zsh-autocomplete:compargs:diff' "compat: zsh-autocomplete: previous arguments '${zacCompargs[@]}'"
        newCompargs=('-D' $zacCompargs)
        _completion_sync:debug_log ':completion-sync:compinit:compat:zsh-autocomplete:compargs:diff' "compat: zsh-autocomplete: new arguments '$newCompargs'"
        zstyle ':autocomplete::compinit' arguments $newCompargs;
      fi
      _completion_sync:debug_log ':completion-sync:compinit:compat:zsh-autocomplete' "compat: zsh-autocomplete: reloading via 'source $completion_sync_zac_plugin_path'"
      source "$completion_sync_zac_plugin_path"
      if [[ -v newCompargs ]]; then
        _completion_sync:debug_log ':completion-sync:compinit:compat:zsh-autocomplete:compargs' "compat: zsh-autocomplete: restoring previous arguments '${zacCompargs[@]}'"
      fi
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

    # do not write dumpfile, since we are likely working on a temporary FPATH
    # TODO: make argument configurable
    _completion_sync:debug_log ':completion-sync:compinit' "invoking compinit as 'compinit -D'"
    compinit -D

    if zstyle -t ':completion-sync:compinit:builtin-compinit' enabled; then
      # restore original function
      functions -c compinit_orig compinit
      _completion_sync:debug_log ':completion-sync:compinit:builtin-compinit' "restored compinit: $(whence -v compinit)"
    fi

  fi
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

      local diff=( "${(@)$(diff <(${(F)completion_sync_fpaths_from_path}) <(${(F)completion_sync_fpaths_from_path}) | grep -E "<|>")}" )
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

        local diff=( "${(@)$(diff <(for p in $new_paths; do echo $p; done) <(for p in $completion_sync_old_xdg_fpaths; do echo $p; done) | grep -E "<|>")}" )
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

if _completion_sync:zsh_autocomplete_compat_isenabled ; then
  _completion_sync:zsh_autocomplete_compat_detect
  if [[ -f "$completion_sync_zac_plugin_path" ]] && zstyle -T ':completion-sync:compinit:compat:zsh-autocomplete' optimize; then
    # Detection was successful, and optimization reminder is turned on
    echo "completion sync: Found functions belonging to zsh-autocomplete plugin at '$completion_sync_zac_plugin_path'. Using zsh-autocomplete specific reloading"
    echo "completion sync: If you want to disable this integration, set\n\
        zstyle ':completion-sync:compinit:compat:zsh-autocomplete' enabled false"
    echo "completion sync: compat: zsh-autocomplete: Want faster shell init in the future? Set\n\
        zstyle ':completion-sync:compinit:custom' enabled true\n\
        zstyle ':completion-sync:compinit:custom' command 'source \"$completion_sync_zac_plugin_path\"'"
    echo "completion sync: compat: zsh-autocomplete: This disables autodetection and tells completion-sync directly how to reload zsh-autocomplete"
    echo "completion sync: compat: zsh-autocomplete: in your .zshrc before this plugin is loaded"
    echo "completion sync: compat: zsh-autocomplete: To disable these messages set\n\
          zstyle ':completion-sync:compinit:compat:zsh-autocomplete:optimize' debug false"
  fi
fi

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
