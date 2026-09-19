#!/usr/bin/env python3
"""Run one `zig` subcommand as if it were a plain clang/ar/ranlib.

`toolchains//:cxx` hands every compile, assemble, archive and link action a
`cmd_script()` wrapper around this, so the buck2 cxx rules (and GHC's `-pgm*`
overrides, and rustc's `-Clinker=`) see something that behaves like the tool
they expect.  Four jobs, none of which fit in a `cmd_args`:

* **The cache.**  `zig cc` builds compiler-rt and the target's libc stubs on
  first use and caches them in its *global* cache, `$HOME/.cache/zig` by
  default.  That default is an undeclared input locally and outright fails on
  RE, where `$HOME` may be unset or read-only.  `toolchains//:cxx` builds a
  warm cache once as a declared artifact; this copies it into scratch per
  invocation, because zig takes lock files in the cache directory even on a
  pure hit, so it cannot be shared or read-only.

* **Response files.**  zig rejects a response file that names another response
  file, and `prelude//cxx:compile.bzl` always builds exactly that: one
  `@argsfile` whose every line is another `@argsfile`.  Real clang is fine with
  it; `zig cc` pre-parses argv before clang ever sees it.

* **Target flags.**  zig understands only its own triple spelling
  (`x86_64-linux-gnu.2.36`), not LLVM's; `arm64-apple-darwin` comes back as
  "unknown architecture" and `aarch64-apple-darwin` as "unknown operating
  system".  GHC hardcodes its `lib/settings` triple into every C compile and
  link it drives, so the toolchain has to take target selection back.

* **Object file extensions.**  clang's driver treats a file whose extension it
  does not recognize as linker input; zig's errors out instead.  GHC names its
  objects `.dyn_o`/`.p_o` depending on the way it is building
  (`prelude//haskell:util.bzl`), which zig has never heard of.
"""

import argparse
import os
import shlex
import shutil
import subprocess
import sys
import tempfile
from collections.abc import Iterable, Sequence
from pathlib import Path

# The triple standing for "whatever this machine is" -- zig's own spelling.
NATIVE = "native"

# Two-word target flags; the word after each is its value.
TARGET_FLAGS = ("-target", "--target", "-arch")

# Extensions that name an object file but that zig's driver does not know.
# These are GHC's, one per way it can build (`prelude//haskell:util.bzl`).
OBJECT_SUFFIXES = (".dyn_o", ".p_o", ".p_dyn_o")


def expand_response_files(args: Iterable[str]) -> list[str]:
    """Inline every `@file` argument, recursively.

    buck2 writes argsfiles newline-separated and shell-quoted (see
    `create_cmd_args` in `prelude//cxx:compile.bzl`), so `shlex` is the right
    parser to read them back with.

    An `@` argument naming nothing on disk is left alone -- `@` starts plenty
    of ordinary arguments, `-install_name @rpath/libfoo.dylib` among them --
    which is what clang's own driver does too.
    """
    expanded: list[str] = []
    for arg in args:
        path = Path(arg[1:]) if arg.startswith("@") else None
        if path is not None and path.is_file():
            expanded.extend(expand_response_files(shlex.split(path.read_text())))
        else:
            expanded.append(arg)
    return expanded


def apply_target(args: Sequence[str], target: str) -> list[str]:
    """Drop the caller's target flags and apply ours instead.

    The toolchain decides what it is building for -- a caller that names a
    target is talking to clang, not to `zig cc`, and its spelling will not
    parse.  Dropping rather than translating is safe because the only caller
    that does this is GHC, which cannot cross compile at all: the target it
    asks for is always the host, which is what zig defaults to.
    """
    kept: list[str] = []
    skip = False
    for arg in args:
        if skip:
            skip = False
        elif arg in TARGET_FLAGS:
            skip = True
        elif not arg.startswith("--target="):
            kept.append(arg)

    if target == NATIVE:
        return kept
    return ["-target", target, *kept]


def relabel_objects(args: Sequence[str], scratch: Path) -> list[str]:
    """Present object files zig cannot identify to it under a `.o` name.

    A symlink rather than a copy: these are the build's real object files, and
    there can be a great many of them on one link line.
    """
    relabelled: list[str] = []
    for index, arg in enumerate(args):
        path = Path(arg)
        if path.suffix in OBJECT_SUFFIXES and path.is_file():
            # The index keeps two same-named objects from different directories
            # apart, which `objects/` vs `objects-shared/` alone would not.
            link = scratch / f"{index}-{path.stem}.o"
            link.symlink_to(path.resolve())
            relabelled.append(str(link))
        else:
            relabelled.append(arg)
    return relabelled


def clone_tree(source: Path, destination: Path) -> None:
    """Copy `source`'s contents into `destination`, as a reflink where possible.

    macOS `cp -c` and GNU `--reflink=auto` both ask the filesystem for a
    copy-on-write clone; the macOS one errors out where that is unsupported,
    hence the fallback.  The clone matters: the warm cache is ~94 MB, and this
    runs once per compile.  On APFS it costs ~0.1s and takes a trivial C++ link
    from 8.1s (cold cache, rebuilding libc++ and compiler-rt) to 0.24s
    end-to-end, so zig's content-hash fallback really does hit against a copied
    manifest.

    Watch this on RE, where `--reflink=auto` silently degrades to a byte copy
    on filesystems that cannot clone (overlayfs).  The narrower fix if it bites
    is to build `compiler_rt.a` as its own target and pass `-fno-compiler-rt`.
    """
    contents = f"{source}{os.sep}."
    if sys.platform == "darwin":
        commands = [["cp", "-Rc"], ["cp", "-R"]]
    else:
        commands = [["cp", "-R", "--reflink=auto"]]

    result = None
    for command in commands:
        result = subprocess.run(
            [*command, contents, str(destination)], capture_output=True, text=True
        )
        if result.returncode == 0:
            return
    assert result is not None
    sys.exit(f"zig_wrapper: cloning the zig cache failed: {result.stderr.strip()}")


def parse_args(argv: Sequence[str] | None = None) -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--zig", required=True, type=Path, help="the zig executable")
    parser.add_argument(
        "--warm-cache",
        required=True,
        type=Path,
        help="pre-populated zig global cache, copied into scratch per run",
    )
    parser.add_argument(
        "--target",
        default=NATIVE,
        help=f"zig target triple to build for, or {NATIVE!r}",
    )
    parser.add_argument("subcommand", help="zig subcommand, e.g. 'cc' or 'ar'")
    parser.add_argument(
        "args", nargs=argparse.REMAINDER, help="arguments for the subcommand"
    )
    return parser.parse_args(argv)


def main() -> int:
    options = parse_args()

    args = apply_target(expand_response_files(options.args), options.target)

    scratch = Path(tempfile.mkdtemp(prefix="zig-wrapper-"))
    try:
        cache = scratch / "cache"
        cache.mkdir()
        objects = scratch / "objects"
        objects.mkdir()

        clone_tree(options.warm_cache, cache)
        args = relabel_objects(args, objects)

        env = os.environ | {
            "ZIG_GLOBAL_CACHE_DIR": str(cache),
            "ZIG_LOCAL_CACHE_DIR": str(cache / "local"),
        }
        return subprocess.run(
            [str(options.zig), options.subcommand, *args], env=env
        ).returncode
    finally:
        shutil.rmtree(scratch, ignore_errors=True)


if __name__ == "__main__":
    sys.exit(main())
