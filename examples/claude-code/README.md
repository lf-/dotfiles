# Claude Code Example

Run Claude Code inside a Matchlock sandbox and clone a GitHub repo into the VM.

## Prerequisites

- Build the local Matchlock binary:

```bash
mise run build
```

Make sure `matchlock` is available in `PATH`, or set `MATCHLOCK_BIN=/path/to/matchlock` when running the helper.

- Build the example image.

Using Docker:

```bash
docker build -t claude-code:latest examples/claude-code
docker save claude-code:latest | matchlock image import claude-code:latest
```

Or using Matchlock:

```bash
matchlock build -t claude-code:latest --build-cache-size 30000 examples/claude-code
```

## Run

The helper uses `matchlock` from `PATH` by default. Override with `MATCHLOCK_BIN=/path/to/matchlock` if needed.

```bash
./examples/claude-code/matchlock-claude run
./examples/claude-code/matchlock-claude run "Review pkg/policy for error-handling edge cases"
./examples/claude-code/matchlock-claude run jingkaihe/matchlock "Add tests for JSON-RPC cancel flow"
./examples/claude-code/matchlock-claude run --cpus 4 --memory 8192
./examples/claude-code/matchlock-claude run --privileged
```

If you omit the repo slug, the helper tries to resolve it from your local `git remote get-url origin`.

## Secrets

By default, the helper expects:

- `GH_TOKEN`
- `ANTHROPIC_API_KEY`

If `GH_TOKEN` is not set, it will try `gh auth token` first.

The helper automatically uses Matchlock secret injection for both values, including a GitHub-shaped placeholder for `GH_TOKEN` so private repo clone works with `gh auth` inside the sandbox.

## Notes

- GitHub clone uses HTTPS.
- Private repo access depends on `GH_TOKEN` having access to the target repo.
- Local git `user.name`, `user.email`, and `core.editor` are forwarded into the sandbox when available.
