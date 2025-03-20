# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

_No unreleased changes._

## [1.18.0] - 2025-03-20

Changes in this release are one more little step towards better adherence to the
[command line interface guidelines].

### Added
- `--help` and `--version` actions. These are aliases to the already existing
  `help` and `version` actions.

### Changed
- Disable color output when executed through a pipe or as a non-TTY ssh command.

## [1.17.1] - 2025-02-12

### Fixed
- Create `ZIM_HOME` if it does not exist.
- Simplify output. Don't send any ANSI escape codes to the terminal when
  `NO_COLOR` is set.

## [1.17.0] - 2025-01-16

### Added
- Also list not installed modules with `list` action, when not in verbose mode.
- `auto` tool in `zmodule`, which auto detects the best tool available for
  installing a new module or the tool used when an existing module was
  installed. This is now the default tool and makes life automatically easier
  for users without git installed.

### Fixed
- Print help or version even if `ZIM_HOME` is not set.
- "no such file or directory: /path/to/.zdegit" error when installing a new
  module with the degit tool.

## [1.16.0] - 2024-11-25

### Added
- Also output zimfw config and zimfw.zsh script paths in `info` action,
  following symlinks if any.
- Don't output colors if `NO_COLOR` environment variable is set to a non-empty
  value.

## [1.15.1] - 2024-10-10

### Fixed
- Preserve original module if reinstall fails instead of removing it first.

## [1.15.0] - 2024-10-08

### Added
- `reinstall` action, that removes and then installs again the modules that
  failed any of the checks: (See [#542](https://github.com/zimfw/zimfw/issues/542))
  - module was installed with the defined tool,
  - module URL matches the defined one.
- `--if-ostype` option to `zmodule`. This option is equivalent to
  `--if "[[ \${OSTYPE} == ${1} ]]"`.

### Changed
- Ask before uninstalling each unused module, instead of asking just once for
  all.
- Add disclaimer comment at beginning of .zimrc file.

## [1.14.0] - 2024-06-25

### Changed
- Don't expand `${HOME}` in the init.zsh script. (See
  [#509](https://github.com/zimfw/zimfw/issues/509))
- Don't allow calling `zmodule` from the command line. Let it fail with "command
  not found" instead, as it's intended to be used only in the .zimrc script.
- `ZIM_HOME` must be defined before sourcing zimfw.zsh. All documentation was
  already doing so, hence not considering this as a breaking change.
- Allow zimfw.zsh to exist anywhere else, not only inside `ZIM_HOME`. This
  enables installing the zimfw.zsh script independently with a package manager.
- Don't try to upgrade if sourced zimfw.zsh is not in a writable path.
- Don't try actions that write to `ZIM_HOME` if user has no write permissions
  there.

### Fixed
- Update error messages to hopefully make it clearer when either the git or the
  degit tool is being used.
- Set read permissions to generated init.zsh script, so it can be read from
  other users.

## [1.13.1] - 2024-04-28

### Fixed
- The `--strip` option in tar command is not BSD compatible.

## [1.13.0] - 2024-02-17

### Added
- `--if-command` option to `zmodule`. This option is equivalent to
  `--if "(( \${+commands[${1}]} ))"`.
- `mkdir` tool option in `zmodule` that creates an empty directory. This allows
  creating modules that contain only externally generated files.

## [1.12.1] - 2023-09-16

### Fixed
- Expansion of prompt sequences in print statements causing text between
  backticks to be executed by the shell.

## [1.12.0] - 2023-07-17

### Added
- `check-version` action, that immediately checks if a new version of `zimfw` is
  available and returns code 4 if there is one.
- `check` action, that checks if there are updates available for current modules.
- Output of `LANG` and `LC_*` parameters in `info` action.

### Changed
- Don't resolve symlinks when building init.zsh.

### Fixed
- Show warning when there's no write permission to compile Zsh scripts.

## [1.11.3] - 2023-02-26

### Deprecated
- `check-dumpfile` action. The [completion] module alone now handles
  checking the dumpfile. (See
  [zimfw/completion#12](https://github.com/zimfw/completion/pull/12))

## [1.11.2] - 2023-02-16

### Fixed
- Quote path names in init.zsh to properly handle path names with spaces.

## [1.11.1] - 2023-02-04

### Fixed
- Use `_zim_dumpfile_fpath` defined by the completion module
  [here](https://github.com/zimfw/completion/blob/33737e8c15fa8dba9af47bef8408b1af2599c21b/init.zsh#L11),
  right before `compinit` is run, to more accurately do `zimfw check-dumpfile`.

## [1.11.0] - 2022-12-18

### Added
- `--if` option to `zmodule` that will only initialize the module root if the
  specified test returns a zero exit status. The test is evaluated at every new
  terminal startup.
- Ability to customize the .zimrc file name and path with the `ZIM_CONFIG_FILE`
  environment variable.

## [1.10.0] - 2022-09-27

### Added
- `--root` option to `zmodule`. Combined with the ability to call `zmodule`
  multiple times for the same module, this allows initializing from multiple
  roots in repositories like prezto or ohmyzsh. Also, `--on-pull` and `--disable`
  now work on a per-module-root basis.

### Changed
- Show `OSTYPE`, `TERM`, `TERM_PROGRAM` and `TERM_PROGRAM_VERSION` environment
  variables instead of calling the `uname -a` command to show system info in the
  `zimfw info` action.

## [1.9.1] - 2022-05-24

### Fixed
- Override repository options along multiple `zmodule` calls with the same
  module name.
- Show already installed modules skipped with install action and `-v`.
- Consider external module directory paths when calling compile action directly.
- Ignore return value from `zargs` with `-P`.
  (See https://www.zsh.org/mla/workers/2022/msg00611.html)

## [1.9.0] - 2022-05-09

### Added
- `--on-pull` option to `zmodule`, which allows setting a command that is always
  triggered after the module is installed or updated.

## [1.8.0] - 2022-01-25

### Added
- `check-dumpfile` action. It runs in the build, install and update actions, and
  checks if a new completion configuration needs to be dumped. It's intended to
  be used with `compinit -C`, so no checks are done during the shell startup.
  (See [zimfw/completion#8](https://github.com/zimfw/completion/pull/8))
- `--no-submodules` option to `zmodule`, which disables installing or updating
  git submodules.

## [1.7.0] - 2022-01-12

### Changed
- The output of `zimfw init` to be friendlier to the terminal startup screen
  when called without `-q`.
- Only compile scripts via the `zimfw` tool after actions where scripts can
  change (build, install, update, upgrade).
- Move compilation of the completion dumpfile to the completion module,
  [here](https://github.com/zimfw/completion/blob/9386a76eac3f55b1c04d57d26238f725b4b3ba25/init.zsh#L10-L11).
- Don't compile user Zsh startup scripts anymore
  (See [#450](https://github.com/zimfw/zimfw/pull/450)). This means you can:
  - either manually delete the compiled files, as they won't be updated by zimfw
    anymore (recommended):
    ```
    for zfile in ${ZDOTDIR:-${HOME}}/.z(shenv|profile|shrc|login|logout); do
      rm -f ${zfile}.zwc(|.old)(N)
    done
    ```
  - or add the following to your .zlogin so Zsh startup scripts continue to be
    compiled:
    ```diff
    +for zfile in ${ZDOTDIR:-${HOME}}/.z(shenv|profile|shrc|login|logout); do
    +  if [[ ! ${zfile}.zwc -nt ${zfile} ]] zcompile -R ${zfile}
    +done
    +unset zfile
    ```

### Deprecated
- The login_init.zsh script, which is now empty. This means you can safely
  remove the following line from your .zlogin:
  ```diff
  -source ${ZIM_HOME}/login_init.zsh -q &!
  ```

## [1.6.2] - 2021-11-21

### Fixed
- Force local zsh emulation options, so the code is not broken by unexpected
  option changes by the user.

## [1.6.1] - 2021-11-08

### Fixed
- Missing line break before showing git log when using the git tool to update.

## [1.6.0] - 2021-11-06

### Added
- `list` action. Using it with `-v` also shows the current details for all
  modules.

### Changed
- Be quieter and don't output warnings when `-q` is provided.
- Be more verbose when `-v` is provided: show skipped external and frozen
  modules with the install and update actions.
- Show warning instead of error when module was not installed with the tool
  currently in use.
- Manually setting any `zmodule` initialization option will disable all the
  default values from the other initialization options, so only user-provided
  values are used in this case. I.e. it's either all automatic, or all manual.
- Also install new modules when starting a new shell (via `zimfw init`, that
  is sourced in .zshrc).

### Fixed
- Error in `zimfw update` with the `git` tool when module directory is under a
  symlinked directory.
- Warning when `WARN_CREATE_GLOBAL` is set and `ZIM_HOME` is not.
- "zsh: command not found: zmodule" when trying to run `zmodule` from the shell.
  Show a more informative error instead.
- Don't try to install or update external modules.

## [1.5.0] - 2021-08-10

### Added
- Option to use the new `degit` tool in `zmodule`, that is able to install and
  update modules from GitHub without requiring `git`. Modules are installed
  faster and take less disk space when using this tool. It can be set as the
  default with `zstyle ':zim:zmodule' use 'degit'`.

### Fixed
- Force `core.autocrlf=false` when doing `git clone`.
  (See [#404](https://github.com/zimfw/zimfw/issues/404))
- Allow uninstalling modules with custom names that have a slash.

## [1.4.3] - 2021-03-19

### Fixed
- Prefer the prezto module format when using defaults to initialize a module.
  This is the format we use in our Zim framework modules. It's not well
  documented anywhere officially, but in short words a prezto module can have:
  * a `functions` subdirectory that is added to the fpath by the framework,
  * files inside the `functions` subdirectory that are autoloaded by the
    framework (except for those with names matching `_*` or `prompt_*_setup`),
  * an `init.zsh` file that is sourced by the framework.

## [1.4.2] - 2021-02-19

### Fixed
- "Not a valid ref: refs/remotes/origin/main" error in `zimfw update`, when the
  repository's default branch was renamed to main.

## [1.4.1] - 2021-02-17

### Fixed
- Correctly get the repository's default branch in `zimfw update`. The related
  change in version 1.4.0 actually broke updating the modules, as new changes
  stopped being fetched.

## [1.4.0] - 2021-01-07

### Added
- Prompt before uninstalling modules, unless `-q` is set.
- Show build date in info.

### Fixed
- Show error when no parameter is provided to `-c|--cmd` in `zmodule`.
- Use repository's default branch instead of hardcoding the default to `master`
  in `zimfw update`, when no branch is specified in `zmodule`.

## [1.3.2] - 2020-08-01

### Fixed
- Compiled files must also be cleaned from modules defined with absolute paths.

## [1.3.1] - 2020-07-24

### Fixed
- "gzip: stdin: unexpected end of file" error when trying to upgrade.
  (See [#407](https://github.com/zimfw/zimfw/issues/407))

## [1.3.0] - 2020-07-05

### Added
- `-c|-cmd` option to `zmodule`. This allows for executing any specified command.

## [1.2.2] - 2020-06-10

### Fixed
- Allow local modules to be initialized and compiled in their respective
  directories, when absolute paths are given, instead of forcing them to be
  installed inside `ZIM_HOME`.

## [1.2.1] - 2020-05-26

### Fixed
- "No such file or directory" error when building a new file. This was a
  regression introduced after replacing `cmp` by `cksum` in version 1.2.0.
- Show warning message when nothing found to be initialized in a module.

## [1.2.0] - 2020-05-17

### Changed
- Use `cksum` instead of `cmp`, and `zargs` instead of `xargs`, so we don't
  depend on busybox or diffutils and findutils.

### Fixed
- Error messages and the `zmodule` usage text.

## [1.1.1] - 2020-01-26

### Fixed
- "no such file or directory" error before initial check for latest version.
- Show error when no modules defined in .zimrc, instead of allowing xargs to
  execute the action with no positional parameters.

## [1.1.0] - 2020-01-20

### Added
- `help` and `version` actions.
- `-v` verbose option. Normal mode output is now focused on the specified action.
- Asynchronously check the latest version every 30 days. This can be disabled
  with `zstyle ':zim' disable-version-check yes`.

### Changed
- When upgrading, download latest release asset instead of raw file from the
  master branch.
- `curl` is preferred over `wget`.
  (See [#360](https://github.com/zimfw/zimfw/issues/360))
- `wget`'s output is only shown in verbose mode.

## [1.0.1] - 2020-01-09

### Fixed
- Zsh 5.2 does not recognize the `:P` modifier. Replace it by `:A`.
- Also compile and clean .zprofile among the startup files.
- Don't fail on `clean-dumpfile` when there's nothing to remove.

## [1.0.0] - 2020-01-07

This is a major change, where modules are not git submodules in the Zim repo
anymore, but customized and installed separately as individual repositories.
External modules can more easily be installed, updated and uninstalled. This
makes Zim a project for Zsh that is both a set of community-maintained
modules with a default installation (like on-my-zsh and prezto) and a plugin
manager (like antigen and zplug).

This version is not backwards-compatible with previous versions, so a new
installation of Zim is required.

Take your time to review the updated [README.md] and the changes listed below.

### Added
- `zimfw` CLI tool.
- `zmodule` function to define modules.
- Automatic installation script.
- zsh-users/zsh-autosuggestions is enabled by default in new installations.

### Changed
- The Zim "core" is reduced to a single file, namely zimfw.zsh, that is
  self-updated without requiring git. With this, `ZIM_HOME` is not (the root of)
  a git repo anymore.
- Zsh and modules are initialized in .zshrc instead of .zimrc.
- .zimrc is not sourced during Zsh startup anymore, and only contains the module
  definitions.
- Zim's init.zsh and login_init.zsh scripts are generated by the `zimfw` CLI
  tool and contain static code. This allows for constant startup time,
  regardless of how complex the module definitions are.
- Zim modules moved to individual repositories in the https://github.com/zimfw
  organization.
- Zim modules are configured with `zstyle` instead of environment variables.
- Zim themes are sourced directly, instead of working with prompinit, and are
  configured with environment variables instead of with promptinit parameters.
- The [environment] module is reduced in scope to to only set Zsh options. The
  additional code moved to the [input] module (smart-URL widgets), the [utility]
  module (default pager), and a new [termtitle] module (terminal window title).
- The minimal theme is renamed to [s1ck94].

### Removed
- `zmanage` CLI tool.
- The directory and history modules. Their code moved into the [environment]
  module.
- The prompt module, and the external lean, liquidprompt and pure themes.
  Use `zmodule miekg/lean`, or `zmodule nojhan/liquidprompt`, or `zmodule
  sindresorhus/pure --source async.zsh --source pure.zsh` to define one of these
  external themes, respectively. The Zim themes moved to individual repositories.
- Support for themes that require promptinit.
  (See [#325](https://github.com/zimfw/zimfw/issues/325))

### Fixed
- `ZIM_HOME` is set in .zshenv instead of .zshrc. The issue was that the
  variable was not available in .zlogin in non-interactive login shells.

[command line interface guidelines]: https://clig.dev
[completion]: https://github.com/zimfw/completion
[README.md]: https://github.com/zimfw/zimfw/blob/master/README.md
[environment]: https://github.com/zimfw/environment
[input]: https://github.com/zimfw/input
[utility]: https://github.com/zimfw/utility
[termtitle]: https://github.com/zimfw/termtitle
[s1ck94]: https://github.com/zimfw/s1ck94

[Unreleased]: https://github.com/zimfw/zimfw/compare/v1.18.0...HEAD
[1.18.0]: https://github.com/zimfw/zimfw/compare/v1.17.1...v1.18.0
[1.17.1]: https://github.com/zimfw/zimfw/compare/v1.17.0...v1.17.1
[1.17.0]: https://github.com/zimfw/zimfw/compare/v1.16.0...v1.17.0
[1.16.0]: https://github.com/zimfw/zimfw/compare/v1.15.1...v1.16.0
[1.15.1]: https://github.com/zimfw/zimfw/compare/v1.15.0...v1.15.1
[1.15.0]: https://github.com/zimfw/zimfw/compare/v1.14.0...v1.15.0
[1.14.0]: https://github.com/zimfw/zimfw/compare/v1.13.1...v1.14.0
[1.13.1]: https://github.com/zimfw/zimfw/compare/v1.13.0...v1.13.1
[1.13.0]: https://github.com/zimfw/zimfw/compare/v1.12.1...v1.13.0
[1.12.1]: https://github.com/zimfw/zimfw/compare/v1.12.0...v1.12.1
[1.12.0]: https://github.com/zimfw/zimfw/compare/v1.11.3...v1.12.0
[1.11.3]: https://github.com/zimfw/zimfw/compare/v1.11.2...v1.11.3
[1.11.2]: https://github.com/zimfw/zimfw/compare/v1.11.1...v1.11.2
[1.11.1]: https://github.com/zimfw/zimfw/compare/v1.11.0...v1.11.1
[1.11.0]: https://github.com/zimfw/zimfw/compare/v1.10.0...v1.11.0
[1.10.0]: https://github.com/zimfw/zimfw/compare/v1.9.1...v1.10.0
[1.9.1]: https://github.com/zimfw/zimfw/compare/v1.9.0...v1.9.1
[1.9.0]: https://github.com/zimfw/zimfw/compare/v1.8.0...v1.9.0
[1.8.0]: https://github.com/zimfw/zimfw/compare/v1.7.0...v1.8.0
[1.7.0]: https://github.com/zimfw/zimfw/compare/v1.6.2...v1.7.0
[1.6.2]: https://github.com/zimfw/zimfw/compare/v1.6.1...v1.6.2
[1.6.1]: https://github.com/zimfw/zimfw/compare/v1.6.0...v1.6.1
[1.6.0]: https://github.com/zimfw/zimfw/compare/v1.5.0...v1.6.0
[1.5.0]: https://github.com/zimfw/zimfw/compare/v1.4.3...v1.5.0
[1.4.3]: https://github.com/zimfw/zimfw/compare/v1.4.2...v1.4.3
[1.4.2]: https://github.com/zimfw/zimfw/compare/v1.4.1...v1.4.2
[1.4.1]: https://github.com/zimfw/zimfw/compare/v1.4.0...v1.4.1
[1.4.0]: https://github.com/zimfw/zimfw/compare/v1.3.2...v1.4.0
[1.3.2]: https://github.com/zimfw/zimfw/compare/v1.3.1...v1.3.2
[1.3.1]: https://github.com/zimfw/zimfw/compare/v1.3.0...v1.3.1
[1.3.0]: https://github.com/zimfw/zimfw/compare/v1.2.2...v1.3.0
[1.2.2]: https://github.com/zimfw/zimfw/compare/v1.2.1...v1.2.2
[1.2.1]: https://github.com/zimfw/zimfw/compare/v1.2.0...v1.2.1
[1.2.0]: https://github.com/zimfw/zimfw/compare/v1.1.1...v1.2.0
[1.1.1]: https://github.com/zimfw/zimfw/compare/v1.1.0...v1.1.1
[1.1.0]: https://github.com/zimfw/zimfw/compare/v1.0.1...v1.1.0
[1.0.1]: https://github.com/zimfw/zimfw/compare/v1.0.0...v1.0.1
[1.0.0]: https://github.com/zimfw/zimfw/compare/5d66578...v1.0.0
