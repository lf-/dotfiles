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
This plugin might add support via a work-around that automatically discovers share paths from `$PATH` in the future.

### `direnv` (without nix)

Ensure that `.envrc` exports an extended `$XDG_DATA_DIRS`. each path should contain a folder `zsh/site-functions` or `zsh/$ZSH_VERSION/functions`, (often this path also contains completion scripts for other shells and is therefore shell agnostic and preferrable over setting fpath directly). Alternatively, expand `$FPATH` with the folders containing the completion scripts (Remember that direnv uses a bash subshell, so you need to use the scalar `$FPATH` and not the array `$fpath`)

## How does it work?

This plugin registers a hook for both `precmd` (run each time before the prompt is displayed) and `chpwd` (run when changing directories). It registers itself at the end of the hook chain when it is loaded, in the hope of going last after all hooks that might change the env vars (especially after the dir env hook).


## Options

You can use zstyle to control the behaviour of the plugin. For now this is only used to enable debugging in different parts of the plugin

### XDG_DATA_DIRS sync

To turn the XDG_DATA_DIRS feature on or off, set `zstyle 'completion-sync:xdg' enabled` (default enabled).
Note that disabling this feature during runtime will not remove the dirs added to the fpath at startup, it will only pause the syncing. To avoid adding paths from `$XDG_DATA_DIRS` to `$FPATH`, set the zstyle in `.zshrc` (i.e. before the first prompt is rendered)

### Debug Logging
Examples:
```zsh
  # Enable debug logging by default
  zstyle ':completion-sync:*' debug true
  # Turn off the very verbose line diffs
  zstyle ':completion-sync:*:diff' debug false
  # Turn off debug logging about internal manipulation of how/whether compinit is loaded
  zstyle ':completion-sync:compinit:autoload' debug false
```
You can control the debug logging very precisely if you need to, but for most use cases the options above are sufficient. If you need more precision, search for `:completion-sync:` in the source.
