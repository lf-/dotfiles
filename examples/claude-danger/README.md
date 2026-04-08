# Claude Code with Claude Pro/Max Subscription in the Sandbox

Run Claude Code inside a Matchlock sandbox using your local Claude subscription credentials, while keeping the real subscription token on the host and injecting it with HTTP interception.

## Prerequisites

Build the example image

Using Docker:

```bash
docker build -t claude-danger:latest examples/claude-danger
docker save claude-danger:latest | matchlock image import claude-danger:latest
```

Or using Matchlock:

```bash
matchlock build -t claude-danger:latest --build-cache-size 30000 examples/claude-danger
```

Ensure you are logged into Claude locally and have `~/.claude/.credentials.json`.

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

- The image installs Claude Code with Anthropic's official installer.
- By default the helper launches Claude Code with `claude-opus-4-6` and `--effort high`.
- By default it allows all outbound hosts (`*`). Pass one or more `--allowed-host` flags to restrict egress.
