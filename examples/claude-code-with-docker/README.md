# Claude Code + Docker (Python SDK)

Run Claude Code in a Matchlock sandbox with Docker available inside the VM.

## Prerequisites

- Build the local Matchlock binary:

```bash
mise run build
```

- Build the example image.

Using Docker:

```bash
docker build -t claude-code-with-docker:latest examples/claude-code-with-docker
docker save claude-code-with-docker:latest | matchlock image import claude-code-with-docker:latest
```

Or using Matchlock:

```bash
matchlock build -t claude-code-with-docker:latest --build-cache-size 30000 examples/claude-code-with-docker
```

- Export your Anthropic API key:

```bash
export ANTHROPIC_API_KEY=...
```

## Run

From repo root:

```bash
uv run examples/claude-code-with-docker/main.py
```

Optional flags:

```bash
uv run examples/claude-code-with-docker/main.py \
  --cpus 4 --memory 8192 --image claude-code-with-docker:latest
```

The script uses `matchlock` from `PATH` by default. Override with `MATCHLOCK_BIN=/path/to/matchlock` if needed.

## Notes

- This example launches an interactive shell as the `agent` user.
- Docker is expected to work inside the sandbox.
- After attaching, try `docker info`, `docker run --rm hello-world`, and `claude --dangerously-skip-permissions`.
