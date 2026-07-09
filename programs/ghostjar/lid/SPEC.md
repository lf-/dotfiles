# lid config language — specification

This document is normative for `internal/config`. Property tests are written
against this spec, not against the implementation.

## Files

- Project config: `lid.star`, found by walking up from the working directory.
- Global config: `${XDG_CONFIG_HOME:-~/.config}/lid/lid.star`.
- Both optional; at least one must define a profile for `lid run` to work.
- Merge rule: global is evaluated first, project second. A project profile
  with the same name **replaces** the global one entirely (no field merge).

File discovery and merging happen in the CLI layer. `internal/config`
exposes pure functions over source text (see §Go API).

## Evaluation environment

Starlark (go.starlark.net) with:

- default dialect safety: no `while`, no recursion, float allowed, sets not
  required;
- an execution step limit (10,000,000 steps) — configs that exceed it fail
  with `ErrEval`;
- no I/O, no env access, no time: the only predeclared name is `lid`.
- Evaluation is deterministic: evaluating the same source twice yields
  deeply-equal `File` results.

Any starlark evaluation failure (syntax error, step limit, exception raised
by a builtin, `fail()`) is reported wrapped as `ErrEval`.

## The `lid` module

Predeclared as `lid`, with members: `sandbox`, `network`, `secret`, `github`,
`github_app`, `claude_subscription`, `from_keychain`, `hosts`. All builtin calls
validate eagerly: a bad
argument raises an error at the call site (surfacing from `LoadFile` wrapped in
`ErrEval`, with the underlying sentinel — see §Errors — matchable via
`errors.Is`).

### `lid.sandbox(...)` — register a profile

Keyword-only arguments (positional args are an error):

| kwarg       | type                          | default        | notes |
|-------------|-------------------------------|----------------|-------|
| `name`      | `str`, required, nonempty     | —              | duplicate name in same file ⇒ `ErrDuplicateProfile` |
| `image`     | `str`, required, nonempty     | —              | OCI image ref, passed through verbatim |
| `cpus`      | `int` or `float` > 0          | `2`            | ≤ 128; else `ErrInvalidCPU` |
| `memory`    | size (see §Sizes)             | `"2GiB"`       | |
| `disk`      | size                          | `"10GiB"`      | |
| `timeout`   | `int` seconds or duration str | `"12h"`        | positive; duration strings use Go syntax (`"90m"`, `"2h30m"`); else `ErrInvalidTimeout` |
| `workspace` | `str` absolute path           | `"/workspace"` | must start with `/`; else `ErrInvalidWorkspace` |
| `mount_cwd` | `"rw"`, `"ro"`, `"off"`       | `"rw"`         | else `ErrInvalidMount` |
| `network`   | `lid.network(...)` or `None`  | `None`         | `None` ⇒ no NIC |
| `secrets`   | `list` of secret values       | `[]`           | values must come from `lid.secret`/`lid.github`/`lid.github_app`/`lid.claude_subscription` |
| `env`       | `dict[str, str]`              | `{}`           | |
| `command`   | `list[str]`, nonempty         | `["claude"]`   | argv run by `lid run`; else `ErrBadCommand` |
| `mounts`    | `list` of `lid.mount(...)`    | `[]`           | live VFS mounts; each `guest` must be under `workspace`; else `ErrInvalidMount` |
| `seed`      | `list` of `lid.seed(...)`     | `[]`           | host files copied into any guest path at boot |
| `setup`     | `list[str]`                   | `[]`           | build-time shell commands for `lid bake`; else `ErrBadCommand` |

Unknown kwargs ⇒ error (`ErrEval` wrapping a message naming the kwarg).
Returns `None`. Registers the profile in file order.

### `lid.mount(host, guest, mode="rw")` — a live host-directory mount

Keyword-only. Returns an opaque value usable only inside `mounts=[...]`.

- `host`: required nonempty `str`. Kept verbatim; the runner resolves it at
  launch (a leading `~`/`~/` expands to the host home; relative paths resolve
  against the invocation cwd).
- `guest`: required `str`, absolute (`/`-prefixed). Must lie under the profile
  `workspace` — matchlock serves the whole guest VFS as one tree rooted at the
  workspace, so mounts outside it are impossible. Violations ⇒ `ErrInvalidMount`.
- `mode`: `"rw"` (default) or `"ro"`; else `ErrInvalidMount`.

The mount reports the guest agent's uid/gid so the non-root agent can access it;
it is a live passthrough (writes to `rw` mounts land on the host).

### `lid.seed(host, guest)` — copy a host file/dir into the guest at boot

Keyword-only. Returns an opaque value usable only inside `seed=[...]`.

- `host`: required nonempty `str`; resolved like `lid.mount`'s `host`.
- `guest`: required absolute `str`; may be **anywhere** (typically the HOME dir,
  e.g. `/home/node/.claude`), since agents read config from `$HOME` which is
  outside the workspace and thus unreachable by a VFS mount.

Seeding copies the host file/dir into the guest path at launch and chowns it to
the agent. Snapshot semantics: in-guest edits are not written back to the host.
Seeds are applied before the Claude bootstrap, so lid's managed auth-state files
(`.claude.json`, `.claude/settings.json`) remain authoritative.

### `lid.network(...)`

Keyword-only:

| kwarg           | type                     | default | notes |
|-----------------|--------------------------|---------|-------|
| `allow`         | `list[str]` of host globs| `[]`    | see §Hosts |
| `allow_all`     | `bool`                   | `False` | mutually exclusive with non-empty `allow` ⇒ `ErrAllowAllConflict` |
| `allow_private` | `bool`                   | `False` | `False` ⇒ private IP ranges (10/8, 172.16/12, 192.168/16) blocked |
| `add_hosts`     | `dict[str, str]` host→IP | `{}`    | static /etc/hosts entries; IP must parse as IPv4/IPv6 ⇒ else `ErrInvalidHost` |
| `dns`           | `list[str]` of IPs       | `[]`    | empty ⇒ matchlock defaults |

`allow == []` and `allow_all == False` is an error (`ErrEmptyAllow`): to run
without network, omit `network` entirely (or pass `None`).

### `lid.secret(name, from_env=None, from_cmd=None, value=None, hosts=[...])`

- `name`: required nonempty `str`, must match `[A-Za-z_][A-Za-z0-9_]*`
  (it becomes an env var in the guest); else `ErrSecretName`.
- Exactly one of `from_env` (`str`, nonempty), `from_cmd` (`list[str]`,
  nonempty), `value` (`str`, nonempty literal — discouraged, for tests) must
  be given; zero or ≥2 sources ⇒ `ErrSecretSource`.
- `hosts`: required non-empty `list[str]` of host globs (§Hosts); empty ⇒
  `ErrSecretHosts`.

Returns an opaque secret value usable only inside `secrets=[...]`.

### `lid.from_keychain(service, account=None)` — a deferred credential source

Returns an opaque **credential source**: a symbolic reference to an item in the
host platform credential store, *not* its value. A credential source describes
*where* a credential lives; it carries no secret material through config
evaluation and is resolved lazily by the runner at first use (see DESIGN.md). A
credential source is usable only where one is expected — currently
`lid.github_app(private_key=...)`.

- `service`: required nonempty `str` — the store item/service name.
- `account`: optional `str`, nonempty if given — disambiguates a service with
  multiple accounts; `None`/absent ⇒ unspecified.

Bad arguments ⇒ `ErrKeychainSource`.

Produces `Source{Kind: "keychain", Service, Account}`.

### `lid.github(hosts=None)`

Sugar for GitHub credential injection. Equivalent to a secret with:

- `Name = "GITHUB_TOKEN"`,
- source kind `github` (runner resolves: `$GITHUB_TOKEN`, `$GH_TOKEN`,
  else `gh auth token` on the host),
- `GitCredential = true` (runner installs a guest git credential helper and
  mirrors the placeholder into `GH_TOKEN`),
- default hosts (used when `hosts=None`):
  `github.com`, `api.github.com`, `codeload.github.com`,
  `objects.githubusercontent.com`, `raw.githubusercontent.com`,
  `*.githubusercontent.com`, `ghcr.io`.
- explicit `hosts` (non-empty list) replaces the default list; empty list ⇒
  `ErrSecretHosts`.

### `lid.github_app(app_id, private_key, installation_id=None, repositories=None, permissions=None, hosts=None)`

Sugar for GitHub App authentication. Like `lid.github` it injects a GitHub
credential, but instead of a personal token the runner mints a short-lived,
downscoped **installation access token** on the host (see DESIGN.md for the
JWT/mint/refresh flow). Belongs in `secrets=[...]`. The App private key never
enters config state or the VM; only a symbolic `private_key` credential source
is carried.

| kwarg             | type                       | default | notes |
|-------------------|----------------------------|---------|-------|
| `app_id`          | `int` > 0                  | —       | required; GitHub App ID; else `ErrGitHubApp` |
| `private_key`     | credential source          | —       | required; e.g. `lid.from_keychain(...)`; the App's PEM key; else `ErrGitHubApp` |
| `installation_id` | `int` > 0 or `None`        | `None`  | `None` ⇒ runner auto-discovers from `repositories`; else `ErrGitHubApp` |
| `repositories`    | `list[str]` or `None`      | `None`  | `owner/repo` slugs; downscopes the minted token; `None` ⇒ installation default |
| `permissions`     | `dict[str, str]` or `None` | `None`  | e.g. `{"contents": "write", "pull_requests": "write"}`; downscopes the token; `None` ⇒ installation default |
| `hosts`           | `list[str]` or `None`      | `None`  | host globs; `None` ⇒ same defaults as `lid.github()`; empty list ⇒ `ErrSecretHosts` |

Equivalent to a secret with:

- `Name = "GITHUB_TOKEN"` (mirrored into `GH_TOKEN`, like `lid.github`),
- `GitCredential = true`,
- source kind `github_app`, carrying the App config and the `private_key`
  credential source,
- default hosts identical to `lid.github()`'s.

Validation:

- Supplying neither an `installation_id` nor any `repositories` ⇒ `ErrGitHubApp`:
  there would be nothing to authenticate against and nothing to discover from.
- `repositories` entries are nonempty `str` of the form `owner/repo` (exactly one
  `/`, both halves nonempty); else `ErrGitHubApp`.
- `permissions` keys and values are nonempty `str`, passed through to GitHub
  verbatim (lid does not enumerate the permission vocabulary); else `ErrGitHubApp`.
- `private_key` must be a credential-source value (from `lid.from_keychain`);
  any other type ⇒ `ErrGitHubApp`.

Returns an opaque secret value usable only inside `secrets=[...]`.

### `lid.claude_subscription(credentials_file=None, hosts=None)`

Sugar for Claude Pro/Max subscription auth via OAuth tokens. Belongs in
`secrets=[...]`. Unlike `lid.secret`, the token is **never** injected into
guest env or via placeholder replacement; instead a host-side network hook
rewrites outbound requests to the configured hosts:

- Removes any `X-Api-Key` header.
- Adds `Authorization: Bearer <access_token>`.
- Ensures `anthropic-beta` includes `oauth-2025-04-20`.

Credentials are loaded on the host at launch time, not at config-evaluation
time. Token refresh is handled host-side (guest never contacts
`console.anthropic.com`).

| kwarg              | type             | default | notes |
|--------------------|------------------|---------|-------|
| `credentials_file` | `str` or `None`  | `None`  | path to credentials JSON; `None`/absent ⇒ auto-detect (see below) |
| `hosts`            | `list[str]` or `None` | `None` | host globs for the hook; `None`/absent ⇒ defaults; empty list ⇒ `ErrSecretHosts` |

Default hosts: `api.anthropic.com`, `platform.claude.com`.

**Credentials resolution order** (when `credentials_file` is absent):

1. On macOS: try the Keychain service `"Claude Code-credentials"` via
   `security find-generic-password -s "..." -w"`.
2. Fall back to `~/.claude/.credentials.json`.
3. Non-macOS: file only.

Returns an opaque secret value usable only inside `secrets=[...]`.

Represented as a `SecretSpec` with `Name = "ANTHROPIC_API_KEY"` (kept for
consistency; not used for placeholder swap) and
`Source.Kind = SourceAnthropicOAuth`.

The runner also seeds the guest with Claude state files (`.claude.json`,
`.claude/.config.json`, `.claude/settings.json`) to suppress onboarding
prompts, and removes any `.credentials.json` from the guest to prevent
accidental use of stale file-based credentials. These are written into the
non-root agent user's home (see DESIGN.md "Privilege drop") and chowned to it;
`HOME` is exported by the guest from that user's passwd entry.

Because it is a secret, existing semantics apply automatically: its hosts are
unioned into `AllowedHosts`, and a profile with it but no `network` ⇒
`ErrNoNetworkSecrets`.

### `lid.hosts` — allowlist presets

A frozen struct of frozen `list[str]` members. Exact contents (normative):

| member      | hosts |
|-------------|-------|
| `anthropic` | `api.anthropic.com`, `statsig.anthropic.com` |
| `github`    | same list as `lid.github()` default hosts |
| `pypi`      | `pypi.org`, `files.pythonhosted.org` |
| `npm`       | `registry.npmjs.org` |
| `crates`    | `crates.io`, `static.crates.io`, `index.crates.io` |
| `golang`    | `proxy.golang.org`, `sum.golang.org`, `storage.googleapis.com` |
| `debian`    | `deb.debian.org`, `security.debian.org` |
| `ubuntu`    | `archive.ubuntu.com`, `security.ubuntu.com`, `ports.ubuntu.com` |
| `alpine`    | `dl-cdn.alpinelinux.org` |
| `nix`       | `cache.nixos.org`, `channels.nixos.org`, `nixos.org` |

## Hosts (§Hosts)

A host glob is valid iff:

- nonempty after trimming ASCII whitespace (trimmed form is used);
- contains no scheme (`://` anywhere ⇒ invalid), no `/`, no whitespace
  inside, no `@`, no port suffix (`:` ⇒ invalid);
- consists of characters `[A-Za-z0-9.*-]` and is not solely dots/hyphens.

Invalid host anywhere (allow, secret hosts, add_hosts keys) ⇒
`ErrInvalidHost`. Hosts are case-lowered during normalization.

## Sizes (§Sizes)

A size is an `int` (MiB) or a `str` matching `^[0-9]+(MiB|GiB|MB|GB)$`
(no spaces). `MB` ≡ `MiB`; `GB` ≡ `GiB` = 1024 MiB. Result must be > 0 and
≤ 1,048,576 MiB. Violations ⇒ `ErrInvalidSize`.

## Compilation semantics

`LoadFile` returns profiles already validated and normalized ("plans"):

- **Network:**
  - `network` omitted/`None` ⇒ `Net.NoNetwork = true`, all other network
    fields zero, `Net.BlockPrivateIPs = true`.
  - `allow_all=True` ⇒ `Net.AllowAll = true`, `Net.AllowedHosts` contains
    only the secret-host union (may be empty).
  - otherwise ⇒ `Net.AllowedHosts = normalize(allow) ∪ normalize(secret
    hosts, in secret order)`, deduplicated preserving first occurrence.
  - `Net.BlockPrivateIPs = !allow_private` — always explicitly materialized.
- **Secrets with no network** (`network` omitted) ⇒ `ErrNoNetworkSecrets`.
- **Env:** copied verbatim. Compilation never inserts secret material into
  `Env` (sources are symbolic; there are no values to insert — the invariant
  is that `value=` literals never appear in `Env` or any non-secret field).
- **Command, workspace, mount mode, resources:** validated & defaulted per
  the tables above; `MemoryMB`/`DiskMB` in MiB; `TimeoutSeconds` in seconds.

## Go API (pinned)

```go
package config

type MountMode string // "rw" | "ro" | "off"

type SourceKind string // "env" | "cmd" | "literal" | "github" | "anthropic_oauth" | "keychain" | "github_app"

type Source struct {
    Kind      SourceKind
    EnvName   string           // Kind == "env"
    Cmd       []string         // Kind == "cmd"
    Literal   string           // Kind == "literal"
    Path      string           // Kind == "anthropic_oauth"; credentials file path, "" = auto-detect
    Service   string           // Kind == "keychain"; store item/service name
    Account   string           // Kind == "keychain"; optional account, "" = unspecified
    GitHubApp *GitHubAppSource // Kind == "github_app"
}

// GitHubAppSource carries the config for a github_app secret. PrivateKey is a
// nested credential source (typically Kind == "keychain") naming where the App's
// PEM key lives; it is resolved lazily by the runner, never at config time.
type GitHubAppSource struct {
    AppID          int64
    InstallationID int64             // 0 ⇒ auto-discover from Repositories
    PrivateKey     Source            // credential source for the PEM
    Repositories   []string          // "owner/repo"; nil ⇒ installation default
    Permissions    map[string]string // nil ⇒ installation default
}

type SecretSpec struct {
    Name          string
    Source        Source
    Hosts         []string // normalized
    GitCredential bool
}

type HostIP struct{ Host, IP string }

type Network struct {
    NoNetwork       bool
    AllowAll        bool
    AllowedHosts    []string // normalized union; nil iff NoNetwork or (AllowAll && no secrets)
    BlockPrivateIPs bool
    AddHosts        []HostIP // sorted by Host
    DNS             []string
}

type MountSpec struct {
    GuestPath string
    HostPath  string    // verbatim from config; runner resolves ~ / relative
    Mode      MountMode // "rw" | "ro"
}

type SeedSpec struct {
    GuestPath string
    HostPath  string // verbatim from config; runner resolves ~ / relative
}

type Profile struct {
    Name           string
    Image          string
    CPUs           float64
    MemoryMB       int
    DiskMB         int
    TimeoutSeconds int
    Workspace      string
    MountCwd       MountMode
    Command        []string
    Env            map[string]string
    Net            Network
    Secrets        []SecretSpec
    Mounts         []MountSpec // live VFS mounts (guest under Workspace)
    Seeds          []SeedSpec  // host files copied into the guest at boot
    Setup          []string    // build-time commands for `lid bake`
}

type File struct {
    Profiles []*Profile // registration order
}

// LoadFile evaluates starlark source. filename is for error messages only;
// no filesystem access occurs.
func LoadFile(filename string, src []byte) (*File, error)

// Merge overlays project over global (either may be nil); project profiles
// replace same-named global profiles, otherwise order is: global profiles
// (registration order), then project-only profiles (registration order).
func Merge(global, project *File) *File

// Lookup resolves a profile by name. name == "" resolves to the profile
// named "default", or, if the file has exactly one profile, that profile.
// Errors: ErrUnknownProfile, ErrAmbiguousProfile.
func (f *File) Lookup(name string) (*Profile, error)
```

### Errors

Exported sentinels, all matchable with `errors.Is` on `LoadFile`/`Lookup`
results: `ErrEval`, `ErrDuplicateProfile`, `ErrUnknownProfile`,
`ErrAmbiguousProfile`, `ErrInvalidHost`, `ErrInvalidSize`, `ErrInvalidCPU`,
`ErrInvalidTimeout`, `ErrInvalidWorkspace`, `ErrInvalidMount`,
`ErrSecretName`, `ErrSecretSource`, `ErrSecretHosts`, `ErrEmptyAllow`,
`ErrAllowAllConflict`, `ErrNoNetworkSecrets`, `ErrBadCommand`,
`ErrKeychainSource`, `ErrGitHubApp`.

Builtin-argument failures surface from `LoadFile` such that **both**
`errors.Is(err, ErrEval)` and `errors.Is(err, ErrTheSpecificOne)` hold.

## Clarifications

Pinned after test review (the tests deliberately leave these untested; the
implementation must still follow them):

- `Lookup` on a file with zero profiles ⇒ `ErrUnknownProfile` (for any name,
  including `""`).
- `Merge(nil, nil)` ⇒ non-nil empty `*File`.
- `from_env=""` and `from_cmd=[]` count as "source not given" ⇒
  `ErrSecretSource` (not a distinct type error).
- Omitting `hosts` in `lid.secret` is the same as `hosts=[]` ⇒
  `ErrSecretHosts`.
- `add_hosts` keys are host-normalized (trimmed, lowercased) like all hosts.
- Whether default/empty `Env` is nil or an empty map is unspecified.
- A credential source (`lid.from_keychain`) and a `github_app` secret carry only
  symbolic locators (service/account names, app id, repo slugs, permission
  strings). No credential value appears anywhere in the resulting structs —
  invariant 5 (secret containment) holds trivially for them.

## Invariants (property-test targets)

For every well-formed generated config:

1. **Closed by default.** Profile without `network` ⇒ `Net.NoNetwork` and
   `Net.BlockPrivateIPs` and `Net.AllowedHosts == nil`.
2. **No accidental allow-all.** `Net.AllowAll` ⇒ the source config passed
   `allow_all=True`. Never any other way.
3. **Private IPs.** `Net.BlockPrivateIPs == !allow_private` in all cases.
4. **Allowlist is exactly the union.** Every normalized `allow` host and
   every normalized secret host is in `AllowedHosts`; every `AllowedHosts`
   element originates from one of those; dedup keeps first occurrence; order
   is allow-list order then secret order.
5. **Secret containment.** With `value=` literals, the literal string appears
   nowhere in the Profile except `Secrets[i].Source.Literal` (in particular
   not in `Env`, `Command`, `AllowedHosts`).
6. **Size round-trip.** For n in [1, 1024]: `memory = "<n>GiB"` ⇒
   `MemoryMB == 1024*n`; `memory = n` (int) ⇒ `MemoryMB == n`.
7. **Determinism.** Two `LoadFile` calls on identical bytes produce
   `reflect.DeepEqual` results.
8. **Idempotent normalization.** Feeding `AllowedHosts` back as `allow`
   yields the same `AllowedHosts` (given no secrets).
9. **Error totality.** Malformed inputs from the error tables produce their
   documented sentinel (and never a panic). `LoadFile` never panics on
   arbitrary byte input.
10. **Merge/Lookup laws.** `Merge(nil, f) ≡ f ≡ Merge(f, nil)` (profile
    lists equal); project profile with duplicate name shadows global;
    `Lookup("")` on single-profile file returns it; on multi-profile file
    without "default" returns `ErrAmbiguousProfile`.
