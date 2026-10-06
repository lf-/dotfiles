# Macros the generated `third_party/haskell/BUCK` is written against.
#
# The generated file stays declarative: each package spells its archive-relative
# source paths exactly once, and everything derived from them -- the
# `http_archive`, its `sub_targets`, the module-path keys and the subtarget
# labels they map to -- is computed here.

_HACKAGE = "https://hackage.haskell.org/package"

def _archive(name):
    return name + ".tar.gz"

def _module_path(name, path, hs_source_dirs):
    """Cabal semantics: the first `hs-source-dirs` entry the path lives under
    is stripped, leaving the module path GHC expects (`Data/Foo.hs`)."""
    for d in hs_source_dirs:
        if d in (".", ""):
            return path
        prefix = d.rstrip("/") + "/"
        if path.startswith(prefix):
            return path[len(prefix):]
    fail("third_party_haskell_library({}): '{}' is under none of hs_source_dirs {}".format(
        name,
        path,
        hs_source_dirs,
    ))

def boot_package(name, visibility = ["PUBLIC"]):
    """`:<name>` for a GHC boot package, so generated deps route uniformly."""
    native.alias(
        name = name,
        actual = "toolchains//haskell:" + name,
        visibility = visibility,
    )

def third_party_haskell_library(
        name,
        version,
        sha256,
        srcs = [],
        hs_source_dirs = ["."],
        deps = [],
        compiler_flags = [],
        linker_flags = [],
        public = False,
        visibility = None):
    """One Hackage package's library component, built from its sdist.

    Args:
        name: The Hackage package name; also the target name, since one solve
             picks one version per package.
        version: The pinned version.
        sha256: Of the sdist tarball, from the index's TUF metadata.
        srcs: Haskell sources, relative to the unpacked sdist root.
        hs_source_dirs: The component's `hs-source-dirs`, in cabal order.
        deps: Other `third_party/haskell` targets, boot packages included.
        compiler_flags: Extra GHC flags (extensions, `-optP`s, ...).
        linker_flags: Extra GHC link flags.
        public: Visible outside this package; packages the repo asked for.
        visibility: Overrides `public` when given.
    """
    archive = _archive(name)
    native.http_archive(
        name = archive,
        urls = ["{}/{}-{}/{}-{}.tar.gz".format(_HACKAGE, name, version, name, version)],
        sha256 = sha256,
        strip_prefix = "{}-{}".format(name, version),
        # Buck resolves sources at analysis time, before the archive exists,
        # so every path the library names must be projected up front.
        sub_targets = sorted(srcs),
    )

    if visibility == None:
        visibility = ["PUBLIC"] if public else []

    native.haskell_library(
        name = name,
        srcs = {
            _module_path(name, path, hs_source_dirs): ":{}[{}]".format(archive, path)
            for path in srcs
        },
        deps = deps,
        compiler_flags = compiler_flags,
        linker_flags = linker_flags,
        visibility = visibility,
    )
