# Claude Code with Claude Pro/Max Subscription in the Sandbox

Run Claude Code inside a Matchlock sandbox using your local Claude subscription credentials, while keeping the real subscription token on the host and injecting it with HTTP interception.

The guest runs Claude Code in API-key mode with a fake key returned by `apiKeyHelper`. Real host credentials are read from `~/.claude/.credentials.json` by default, and outbound requests to `api.anthropic.com` and `platform.claude.com` are mutated on the host to add:

- `Authorization: Bearer <host access token>`
- `anthropic-beta: oauth-2025-04-20`
- with the guest `X-Api-Key` removed

## Prerequisites

- Build the local Matchlock binary:

```bash
mise run build
```

- Build the example image.

Using Docker:

```bash
docker build -t claude-danger:latest examples/claude-danger
docker save claude-danger:latest | matchlock image import claude-danger:latest
```

Or using Matchlock:

```bash
matchlock build -t claude-danger:latest --build-cache-size 30000 examples/claude-danger
```

- Ensure you are logged into Claude locally and have `~/.claude/.credentials.json`.

## Run

From the repository root:

```bash
./examples/claude-danger/claude-danger
```

Optional flags:

```bash
./examples/claude-danger/claude-danger \
  --cpus 4 \
  --memory 8192 \
  --image claude-danger:latest \
  --credentials-file ~/.claude/.credentials.json \
  --allowed-host api.anthropic.com \
  --allowed-host platform.claude.com
```

The script uses `matchlock` from `PATH` by default. Override with `MATCHLOCK_BIN=/path/to/matchlock` if needed.

## Notes

- This example launches an interactive shell as the `agent` user.
- The sandbox is unprivileged and only installs Claude Code plus a minimal shell toolchain.
- By default it allows all outbound hosts (`*`). Pass one or more `--allowed-host` flags to restrict egress.
- The script seeds both `~/.claude.json` and `~/.claude/.config.json` with a minimal guest-only Claude state, and sets `CLAUDE_CONFIG_DIR=/home/agent/.claude`, so Claude Code uses the pre-seeded onboarding/theme state inside the VM.
- Those seeded config files are written readable inside the sandbox so the unprivileged `agent` process can actually consume them during startup.
- The script removes any guest `~/.claude/.credentials.json` so Claude Code stays in API-key mode inside the VM, and avoids setting a conflicting guest `ANTHROPIC_API_KEY` environment variable.
- If the host access token is close to expiry, the script refreshes it via `https://console.anthropic.com/v1/oauth/token` and writes the updated token back to the configured host credentials file.
- The helper drops you directly into `claude --dangerously-skip-permissions`.
