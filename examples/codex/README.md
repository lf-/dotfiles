# Codex Example

Run Codex inside a Matchlock sandbox and clone a GitHub repo into the VM.

## Prerequisites

- Build the local Matchlock binary:

```bash
mise run build
```

Make sure `matchlock` is available in `PATH`, or set `MATCHLOCK_BIN=/path/to/matchlock` when running the helper.

- Build the example image.

Using Docker:

```bash
docker build -t codex:latest examples/codex
docker save codex:latest | matchlock image import codex:latest
```

Or using Matchlock:

```bash
matchlock build -t codex:latest --build-cache-size 30000 examples/codex
```

## Run

The helper uses `matchlock` from `PATH` by default. Override with `MATCHLOCK_BIN=/path/to/matchlock` if needed.

```bash
./examples/codex/matchlock-codex run
./examples/codex/matchlock-codex run "Fix failing tests in pkg/policy and add coverage"
./examples/codex/matchlock-codex run jingkaihe/matchlock "Implement issue #27 codex example"
./examples/codex/matchlock-codex run --cpus 4 --memory 8192
./examples/codex/matchlock-codex run --privileged
```

If you omit the repo slug, the helper tries to resolve it from your local `git remote get-url origin`.

## Secrets

By default, the helper expects:

- `GH_TOKEN`
- `OPENAI_API_KEY`

If `GH_TOKEN` is not set, it will try `gh auth token` first.

The helper automatically uses Matchlock secret injection for both values, including a GitHub-shaped placeholder for `GH_TOKEN` so private repo clone works with `gh auth` inside the sandbox.

## Notes

- GitHub clone uses HTTPS.
- Private repo access depends on `GH_TOKEN` having access to the target repo.
- Local git `user.name`, `user.email`, and `core.editor` are forwarded into the sandbox when available.
