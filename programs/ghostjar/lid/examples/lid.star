# Example lid config: Claude Code in a box.
#
# Copy to your project root as lid.star (or ~/.config/lid/lid.star for a
# global default) and run `lid`.
#
# Layout: lid mounts your project at /workspace/project (not the workspace
# root /workspace) so that lid-managed state (e.g. the persist store) can sit
# as siblings without appearing inside your project tree.

lid.sandbox(
    name = "default",
    image = "docker.io/library/node:22-bookworm",
    cpus = 4,
    memory = "4GiB",
    disk = "20GiB",
    timeout = "12h",
    # cwd is mounted read-write at /workspace/project (mount_cwd = "rw").
    network = lid.network(
        # deny-by-default: only these hosts are reachable, private IPs blocked
        allow = lid.hosts.github + lid.hosts.npm,
    ),
    # Secrets: Claude subscription auth via host-side OAuth token injection.
    # The real token never enters the VM; the network hook rewrites Authorization
    # headers host-side and strips X-Api-Key. Reads credentials from the macOS
    # Keychain ("Claude Code-credentials") or ~/.claude/.credentials.json.
    #
    # For the API-key path instead, see the `api-key` profile below.
    secrets = [
        # Claude Pro/Max subscription auth: reads OAuth creds from host keychain
        # or ~/.claude/.credentials.json, refreshes tokens as needed.
        lid.claude_subscription(),
        # git/gh credential injection: resolves via $GITHUB_TOKEN / $GH_TOKEN /
        # `gh auth token` on the host, installs a guest git credential helper
        lid.github(),
    ],
    # Persist Claude conversation history across runs. lid maintains a per-project
    # store keyed by your host cwd; each repo gets its own history. Managed files
    # (settings.json, .credentials.json) are regenerated each run and never reach
    # the host store.
    persist_claude = True,
    # Bake Claude into a local image once (`lid bake`) so `lid run` launches
    # instantly instead of re-downloading it every boot. `lid run` falls back to
    # the base image (and hints to bake) if you haven't baked yet.
    setup = ["npm install -g @anthropic-ai/claude-code"],
    command = ["claude", "--dangerously-skip-permissions"],
    # Bring your agent config into the VM. `seed` copies a host dir into an
    # arbitrary guest path at boot (HOME is outside the workspace, so a live
    # mount can't reach it); edits inside the VM are not written back.
    seed = [
        lid.seed(host = "~/.claude", guest = "/home/node/.claude"),
    ],
    # `mounts` are live VFS mounts and must live under the workspace
    # (default /workspace). Example: a shared read-only reference dir.
    mounts = [
        lid.mount(host = "./shared", guest = "/workspace/shared", mode = "ro"),
    ],
)

# API-key alternative: `lid run api-key`. Use this if you authenticate with an
# ANTHROPIC_API_KEY rather than a Claude Pro/Max subscription. The key is read
# from $ANTHROPIC_API_KEY on the host and injected by the MITM proxy only into
# requests to api.anthropic.com — it never enters the VM as a real value.
lid.sandbox(
    name = "api-key",
    image = "docker.io/library/node:22-bookworm",
    cpus = 4,
    memory = "4GiB",
    disk = "20GiB",
    timeout = "12h",
    network = lid.network(
        allow = lid.hosts.anthropic + lid.hosts.github + lid.hosts.npm,
    ),
    secrets = [
        lid.secret(
            "ANTHROPIC_API_KEY",
            from_env = "ANTHROPIC_API_KEY",
            hosts = ["api.anthropic.com"],
        ),
        lid.github(),
    ],
    command = ["npx", "-y", "@anthropic-ai/claude-code", "--dangerously-skip-permissions"],
)

# A stricter profile with no network at all: `lid run offline`
lid.sandbox(
    name = "offline",
    image = "docker.io/library/alpine:3.21",
    command = ["/bin/sh"],
    mount_cwd = "ro",
)
