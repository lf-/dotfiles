# lid

The lid on the ghost jar: run `claude` (or any coding agent) in a matchlock
microVM with a network allowlist and host-side credential injection.

```console
$ cd ~/some/project
$ lid                  # boots a VM, mounts the project at /workspace, runs claude
```

- **VM isolation** — Virtualization.framework / Firecracker microVM, boots in ~1s.
- **Deny-by-default network** — no `network` block means *no NIC*. Otherwise
  only allowlisted hosts are reachable (MITM interception), and private IP
  ranges are blocked unless you explicitly opt out.
- **Secrets never enter the VM** — the guest sees placeholders; the host MITM
  proxy injects real values into requests to allowed hosts only. `lid.github()`
  wires this up for git/gh, including base64 basic-auth replacement.

## Config

Project config `lid.star` (found walking up from cwd), global fallback
`~/.config/lid/lid.star`. Written in starlark; see `SPEC.md` for the full
language and `examples/lid.star` for a working profile.

```starlark
lid.sandbox(
    name = "default",
    image = "docker.io/library/node:22-bookworm",
    memory = "4GiB",
    network = lid.network(
        allow = lid.hosts.anthropic + lid.hosts.github + lid.hosts.npm,
    ),
    secrets = [
        lid.secret("ANTHROPIC_API_KEY", from_env = "ANTHROPIC_API_KEY",
                   hosts = ["api.anthropic.com"]),
        lid.github(),
    ],
    command = ["npx", "-y", "@anthropic-ai/claude-code"],
)
```

## Commands

| command | what it does |
|---------|--------------|
| `lid run [profile] [-- args]` | boot VM, mount cwd, run the profile's command interactively |
| `lid shell [profile]` | same, but drop into `/bin/sh` |
| `lid ls` | list profiles from merged global+project config |
| `lid check` | validate configs |

## Requirements

- `matchlock` on PATH (or `$MATCHLOCK_BIN`) — built from `~/co/matchlock`
  (`go build` + codesign, see its mise.toml build task).
- `mkfs.erofs` and `mkfs.ext4` on PATH (nixpkgs `erofs-utils`, `e2fsprogs`) —
  matchlock uses them to build guest rootfs images.
- macOS Apple Silicon or Linux with KVM.

## Development

See `DESIGN.md` (architecture) and `SPEC.md` (normative config semantics).
`internal/config` is property-tested (pgregory.net/rapid) against SPEC.md;
the tests were written before the implementation, by a separate agent, and
are the contract.
