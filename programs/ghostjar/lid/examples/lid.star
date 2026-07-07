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
        allow = lid.hosts.anthropic + lid.hosts.github + lid.hosts.npm,
    ),
    secrets = [
        # placeholder env var in the guest; real key injected by the host MITM
        # proxy only into requests to api.anthropic.com
        lid.secret(
            "ANTHROPIC_API_KEY",
            from_env = "ANTHROPIC_API_KEY",
            hosts = ["api.anthropic.com"],
        ),
        # git/gh credential injection: resolves via $GITHUB_TOKEN / $GH_TOKEN /
        # `gh auth token` on the host, installs a guest git credential helper
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
