# zsh-completion-sync
A zsh plugin that automatically loads completions added dynamically to FPATH or XDG_DATA_DIRS

## What does it do?

Anytime after the start of your shell if new entries have been added to your FPATH, this plugin will reload your completion system to make the new completions functions immediately available. It also loads extra paths from `$XDG_DATA_DIRS` to comply with the XDG spec.
This plugin is especially useful/important for users of dynamic development shells via tools like `direnv`, `nix-direnv`, `nix develop`, which dynamically put specific versions of executables on the front of `$PATH` and typically surface matching completion scripts via `$XDG_DATA_DIRS`

## Motivation
Normally zsh only builds the pairing of executable name and completion functions once at shell startup, when `compinit` is called, typically while sourcing `~/.zshrc`. For this, only directories on `$FPATH` are considered. Any additions to `$FPATH` after this point, will make the functions themselves available for autoloading, but the completion system will not consider them anymore. This means that any tools that are installed non-permanently, will never have their completions picked up, since they will generally not be on the startup `$FPATH` (or `$PATH` for that matter).
Users of `nix` and `direnv` are hit especially hard by this, since they rely on non-permanent changes to the running shell or shells with dynamically generated `$PATH`. This plugin bridges that [still unresolved need](https://github.com/direnv/direnv/issues/443) for zsh users. (Note, for fish users, there is a similar plugin [here](https://github.com/pfgray/fish-completion-sync))


## Installation

When sourced, this plugin only defines functions and registers hooks. The hooks are only executed the first time the prompt is rendered. Therefore it is not very sensitive to load order, however it should be loaded late to ensure that it only runs after all other hooks that could affect the relevant env vars have run.

## Quickstart

### Nix `mkShell` (via `nix-direnv` or `nix develop`)

Should work out of the box.

Most packages have shell completion scripts for bash,zsh, and fish available in their share directory. `mkShell` automatically adds their share directories to `$XDG_DATA_DIRS`, so if they ship a `zsh/site-functions` dir in them (i.e. they used `installShellCompletion --zsh`, which is most), this plugin will add them to the `$FPATH` and make the functions available for completion.


### `nix-shell -p`

Currently, `nix-shell` does not currently set nativeBuildInputs (https://github.com/NixOS/nix/issues/4254) and therefore does not set/expand `$XDG_DATA_DIR`.
This plugin offers a slightly hacky workaround which tries to [discover fpaths from entries on `$PATH`](#path-sync).
You can enable it by setting `zstyle ':completion-sync:path' enabled true`. Since this behaviour does not conform to the meaning of the `$PATH` variable (as opposed to `$FPATH` and `$XDG_DATA_DIR`) it is not enabled by default. Putting relevant packages into `nativeBuildInputs` (once supported) is the preferred way.

### `direnv` (without nix)

Ensure that `.envrc` exports an extended `$XDG_DATA_DIRS`. each path should contain a folder `zsh/site-functions` or `zsh/$ZSH_VERSION/functions`, (often this path also contains completion scripts for other shells and is therefore shell agnostic and preferrable over setting fpath directly). Alternatively, expand `$FPATH` with the folders containing the completion scripts (Remember that direnv uses a bash subshell, so you need to use the scalar `$FPATH` and not the array `$fpath`)

## How does it work?

This plugin registers a hook for both `precmd` (run each time before the prompt is displayed) and `chpwd` (run when changing directories). It registers itself at the end of the hook chain when it is loaded, in the hope of going last after all hooks that might change the env vars (especially after the dir env hook).

### XDG_DATA_DIRS sync

The first time this feature loads, it will enumerate all subpaths of XDG_DATA_DIRS that contain zsh functions (`$dir/zsh/site-functions` or `$dir/zsh/$ZSH_VERSION/functions`) and then prepend all of these paths *that are not on the FPATH yet* to the FPATH. This avoids overriding custom overrides for internal functions again by putting the zsh install directory on the front of the path, because it is also reachable via `$XDG_DATA_DIRS`.

Then everytime `$XDG_DATA_DIRS` changes, the plugin then enumerates the zsh function subpaths again and then diffs that against the last state of the function dirs. It then adds/removes these from fpaths as indicated by the diff. Note, that unlike in the initialization, this will always prepend or remove the first occurence of a path from the fpath. If a directory is dynamically added during runtime, we assume that the user wants it to take priority.

### PATH sync
The PATH sync feature is a workaround for [`nix-shell -p`](#nix-shell--p), which puts the `bin/` folder of nix a set of nix derivations on the PATH, but doesn't export their `share/` directory on `$XDG_DATA_DIRS`. (This is in tune with how nix works, since only `nativeBuildInputs` and not `packages` are meant to export their data dirs). In nix, these `share/` dirs are siblings to the `bin/` path on `$PATH` and if they have a corresponding zsh completions, those are installed in `share/zsh/site-functions`. So, to discover these fpaths, the plugin tests for the existence of a directory at `$p/$relPath` for every `$p` from `$PATH` and `$rp` from the [configured array of relative paths](#path-to-fpath-sync--nix-shell-compat). The default works for discovering any zsh FPATHs in nix derivations on `$PATH`. The resultant array of paths is then added to the front of `$FPATH` (preserving priority order from `$PATH`) *if the relevant path if not on `$FPATH` yet*. When there is a change in `$PATH`, the plugin builds the array from the current `$PATH` again and diffs it against the last state, adding or/removing to/from the front of `$FPATH` as needed.

## Options

You can use zstyle to control the behaviour of the plugin. This includes enabling/disabling certain feature-sets and fine-grained control over debug logging.

### XDG_DATA_DIRS sync

To turn the XDG_DATA_DIRS feature on or off, set `zstyle 'completion-sync:xdg' enabled` (default enabled).
Note that disabling this feature during runtime will not remove the dirs added to the fpath at startup, it will only pause the syncing. To avoid adding paths from `$XDG_DATA_DIRS` to `$FPATH`, set the zstyle in `.zshrc` (i.e. before the first prompt is rendered)

### PATH to FPATH sync / nix-shell compat

To enable detecting zsh function paths from the binary search path, set `zstyle :completion-sync:path enabled true` (default false).

The plugin searches the relative paths indicated in the array set in `zstyle :completion-sync:path rel_dirs` (default: `("../share/zsh/$ZSH_VERSION/functions" '../share/zsh/site-functions')`). The default is setup based on the typical nix derivation structure, which has its `share/`/`XDG_DATA_DIR` as a sibling to the `bin/` directory on the path.

Note that if you want nix-shell to put you into zsh by default and only need support for `nix-shell` compatibility, you should install [this plugin for compatibility](https://github.com/chisui/zsh-nix-shell) which does put nix fpaths onto path already and does not require this plugin's workaround.

### Builtin Compinit

Caution: This is hacky and will probably break something.

```zsh
zstyle ':completion-sync:compinit:builtin-compinit' enabled true #default: false
```

Some plugins patch or otherwise modify the compinit function. this can leave us unable to access the functionality necessary for reloading the completion system. As a workaround, this option, if enabled will first copy the existing compinit function out of the way and autoload `compinit` from the fpath again. The result of this is almost always the builtin `compinit` or a function meant to act as a drop-in replacement and therefore safe to call.
Note that while this will bruteforce re-enable the ability to reload completions, there is often a very good reason why plugins patch compinit. Sometimes, it is only the goal of improving performance ensuring that multiple calls to `compinit`  in `.zshrc` via different plugins do not slow down shell start. In this case, where `compinit` was no-op'ed for performance, it is safe to enable this option.
On the other hand, plugins like [zsh-autocomplete](https://github.com/marlonrichert/zsh-autocomplete/) (which made me originally write this workaround) no-op the function, because it's default behaviour will break `zsh-autocomplete` in subtle ways. Using builtin-compinit with it gets completions for new commands, but at degraded autocomplete functionality across the board.

### Debug Logging
Examples:
```zsh
  # Enable debug logging by default
  zstyle ':completion-sync:*' debug true
  # Turn off the very verbose line diffs
  zstyle ':completion-sync:*:diff' debug false
  # Turn off debug logging about candidate paths
  zstyle ':completion-sync:**:candidate' debug false
  zstyle ':completion-sync:**:candidate:*' debug false
```
You can control the debug logging very precisely if you need to, but for most use cases the options above are sufficient. If you need more precision, search for `:completion-sync:` in the source.
