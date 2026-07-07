# Example lid config: Claude Code in a box.
#
# Copy to your project root as lid.star (or ~/.config/lid/lid.star for a
# global default) and run `lid`.

lid.sandbox(
    name = "default",
    image = "docker.io/library/node:22-bookworm",
    cpus = 4,
    memory = "4GiB",
    disk = "20GiB",
    timeout = "12h",
    # cwd is mounted read-write at /workspace by default (mount_cwd = "rw").
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
    command = ["npx", "-y", "@anthropic-ai/claude-code", "--dangerously-skip-permissions"],
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
