# ADR 004 – Unprivileged mode via user + network namespace (pasta)

## Status

Accepted

## Context

Running matchlock has historically required host privileges: `CAP_NET_ADMIN`/`CAP_NET_RAW`
(for TAP creation and nftables rules) and membership in the `netdev` group.  These are
granted by `matchlock setup linux`, which sets file-capabilities on the binary.  The only
unprivileged escape hatch in the Go SDK was `Config.UseSudo`, which shells out to `sudo`.

Many deployment environments cannot or will not grant these privileges.  CI runners,
developer laptops, and shared servers may have `/dev/kvm` accessible (kvm group) but no
path to `netdev` or file-capabilities.

## Decision

Add a `--userns` flag (and `MATCHLOCK_USERNS` env var, and `Config.UseUserns` in the SDK)
that runs matchlock in a **user + network namespace** with **pasta** providing egress
connectivity.

### Architecture

The implementation is a **wrapper**, not a rewrite of the network stack.  Matchlock's
existing Linux flow — create TAP → nftables DNAT → transparent proxy → Firecracker — runs
unchanged inside a child network namespace where `CAP_NET_ADMIN` is held *locally*.

```
 ┌─────────────────── host netns ─────────────────────────────────┐
 │  outer matchlock process                                        │
 │    │  forks child with CLONE_NEWUSER|CLONE_NEWNET              │
 │    │  starts pasta --netns /proc/<child>/ns/net …             │
 │    │  signals child via pipe, then waits / os.Exits           │
 │                                                                │
 │  pasta process (host side)                                     │
 │    translates child's TCP/UDP → host sockets (unprivileged)   │
 └───────────────────────────────────────────────────────────────-┘
          │ (packet translation)
 ┌────────▼──────── child netns (uid 0 → real_uid) ───────────────┐
 │  inner matchlock process                                        │
 │    WaitForNetwork() → unblocks when pasta signals ready        │
 │    sandbox.New() → TAP, nftables, proxy, Firecracker           │
 └────────────────────────────────────────────────────────────────┘
```

### Key properties

- **Single fork boundary.** The outer process forks the child; the child becomes the
  sandbox supervisor.  For `-d` (detach), the fork carries `Setsid` so the child is a
  daemon — no double-fork.
- **No TAP on the host.** The TAP device lives inside the child's netns; the host sees no
  `matchlock_*` interfaces or nftables tables.
- **pasta lifetime.** pasta exits automatically when the child's netns is torn down (on
  child exit).  The foreground outer process also kills pasta explicitly after `Wait()`.
- **exec/kill/rm unchanged.** These commands use host-FS unix sockets and PID signals;
  they never enter the namespace and need no modification.
- **One irreducible requirement.** `/dev/kvm` access (kvm group) cannot be removed by any
  namespace trick.

### Pasta readiness synchronisation

1. Parent creates two pipes: `syncPipe` (parent→child) and `pastaPipe` (pasta→parent).
2. Child blocks on reading `syncPipe`.
3. Parent starts pasta with `--fd 3` pointing at the write end of `pastaPipe`.
4. pasta writes a ready byte to fd 3 when the netns interface is configured.
5. Parent reads from `pastaPipe`, then writes one byte to `syncPipe`.
6. Child unblocks and proceeds to `sandbox.New()`.

## Consequences

**Positive**

- Fully unprivileged operation (no file-caps, no netdev group, no sudo).
- All existing network features (transparent proxy, DNS, secret injection) continue to work.
- SDK gains `Config.UseUserns`; a one-flag change enables unprivileged mode for callers.

**Negative / constraints**

- Requires **pasta** on `PATH` (`passt` package).
- Requires **`/dev/net/tun`** to be accessible.  On NixOS and most modern distros it is
  world-readable (0666); older Debian-style `netdev` mode will require the user to be in
  the netdev group even in userns mode.
- Requires **unprivileged user namespaces** (`/proc/sys/kernel/unprivileged_userns_clone`
  must be 1 — enabled by default on most distributions since kernel 5.0+; Debian/Ubuntu
  may require sysctl adjustment).
- **nftables from a user-owned netns** requires kernel ≥ 5.0 with the relevant modules.
