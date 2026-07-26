# go infrastructure

## maintenance

```
buck run :buckify
```

Third-party Go code is **not vendored**. Each module becomes an `http_archive`
pinned by the sha256 of its module zip, and each package a target whose `srcs`
name individual files inside that archive. Nothing third-party is checked in —
`deps/BUCK` is itself the lockfile. buck2 downloads and caches the archives on
first build; `go build` and gopls are unaffected either way, since they resolve
from the module cache and never looked at this directory.

`go.sum` cannot supply those hashes: it records an `h1:` dirhash over the
extracted file tree, which is a different construction from a hash of the
archive bytes and not what `http_archive` verifies. So `buckify` hashes the
zips out of the module cache, which `go mod download` has already checked
against `go.sum` on the way in.

you may need to put things in `./tools.go` to cause them to get pulled into the
module graph (if they are a dep of something in the workspace basically, I
think).

each package has its own version specs in `go.mod` (annoyingly).
there's a workspace in `//go.work` which at least kinda unifies them.

i do not particularly enjoy go.

## what gets generated

- `deps/BUCK` — every third-party archive and target, in one file, since
  packages have no directory of their own to live in. Targets are named by
  full import path: `//third_party/go/deps:golang.org/x/sys/unix`.
- one BUCK file per package for workspace modules marked `generate` in
  `buckify.json` — currently only matchlock, whose sources are in the tree but
  whose target generation is automatic.

Generated files carry a `@generated` marker on line one.
buckify refuses to overwrite a BUCK file lacking that marker.
There is no fixup mechanism, so fixups require hand-writing the BUCK file.

In the future, it's likely buckify will be replaced with something more Gazelle-like.

## why not gobuckify

`prelude//go/tools:gobuckify` renders every target into
`<third-party>/vendor/<import path>/BUCK` and skips the root module entirely.
That suits a single vendored third-party module whose `tools.go` reaches
everything, but not this workspace: matchlock's sources live in the tree, so it
would get no targets at all, and its dependencies are not reachable from a
`go list all` rooted at `//third_party/go`. It also has no notion of fetching
rather than vendoring.

## objective-c

matchlock's macOS backend is `github.com/Code-Hex/vz/v3`, which is mostly
Objective-C. Two prelude gaps are patched around in `//toolchains`, both
sent upstream:

- `system_cxx_toolchain` never sets `objc_compiler_info`, so any `.m` source
  fails analysis. `objc_cxx_toolchain.bzl` is that rule built through
  `cxx_toolchain_infos()`, which fills the field in from the C compiler.

  <https://github.com/facebook/buck2/pull/1423>
- `prelude//go/tools:pkg_analyzer` drops `go/build.Package.MFiles`, so the Go
  rules never hand `.m` files to cxx in the first place. `pkg_analyzer.go` is a
  copy that reports them, wired in via `go_toolchain`'s `pkg_analyzer` attr.

  <https://github.com/facebook/buck2/pull/1424>

`#cgo LDFLAGS` are handled in `buckify.py`: the prelude reads
`external_linker_flags` only off a `go_binary`, so the flags declared by
dependencies are gathered transitively and emitted on each binary.

## tests

`buckify` emits a `go_test` beside each generated library that has test files,
using `target_under_test` so the test inherits the library's sources and deps
and only its tests' extra imports need listing. `-test` is passed to `go list`
so test-only dependencies (testify, rapid) get archives too.

Two things it deliberately will not do:

- **External test packages** (`package foo_test`) get no target, only a
  warning. `prelude//go:package_builder.bzl` refuses them outright — *"External
  tests are not supported, remove suffix '_test' from package declaration"* —
  and along the `go_test` path that check is not always reached, so you instead
  get a test binary with no tests in it, which passes.
- **Test targets are gated on where tests exist**, not where the library
  builds. `pkg/diagnose` compiles everywhere but its only test file is
  `//go:build linux`, so its test target is linux-only rather than passing
  vacuously on darwin.

Hand-written BUCK files need `srcs = glob(["*_test.go"])` on the go_test if the
library excludes test sources, as lid's do — otherwise `target_under_test`
supplies no test files and the target passes having run nothing.

## a trap worth knowing

`srcs` must be an explicit file list: go doesn't automatically discover source files (unlike rust) so if you mismatch `go list` on it, it will compile nothing.
