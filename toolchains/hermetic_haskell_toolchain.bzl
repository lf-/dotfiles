# Hermetic GHC, straight out of upstream's own binary distributions.
#
# The prelude's `system_haskell_toolchain` resolves "ghc"/"ghc-pkg"/"haddock"
# through PATH; this one hands the same fields `RunInfo`s pointing into the
# unpacked bindist, which `compile.bzl` accepts as-is.
#
# A GHC bindist is already relocatable (pre-built `package.cache`,
# `${pkgroot}`-relative `.conf`s, real binaries under `bin/`), so it is run
# unpacked and unmodified -- no configure, no install, no patching -- keeping
# the archive byte-identical to upstream so the sha256 pin means something.
# The one host-dependent piece is `lib/settings`, which names its C tools by
# bare PATH-resolved names; the `-pgm*` block below overrides that instead.
#
# TODO: the boot packages are not hermetic about *system libraries*. Their
# `exported_linker_flags` name whatever GHC's build machine linked against --
# `-lgmp -lc -lm` on Linux, `-liconv`/`-lncurses`/`-lffi` on darwin (see
# `toolchains/haskell/boot_packages.bzl`) -- so every Haskell link quietly
# pulls those off the host. That was already true before `toolchains//:cxx`
# became hermetic, and it is the concrete reason a native build there cannot
# pass `zig cc -target`: an explicit triple stops zig searching host library
# paths, and these would stop resolving. We should ship our own gmp.

load("@prelude//cxx:cxx_toolchain_types.bzl", "CxxToolchainInfo", "LinkerType")
load("@prelude//haskell:toolchain.bzl", "HaskellPlatformInfo", "HaskellToolchainInfo")
load("@toolchains//haskell:boot_packages.bzl", "BOOT_PACKAGES", "GHC_PACKAGE_DB", "GHC_VERSION")

_BASE_URL = "https://downloads.haskell.org/~ghc"

# Keys are GHC's own download flavours. The third column is the directory
# inside the tarball, which disagrees with the flavour on Linux. deb12 matches
# the Linux RE image, `buildpack-deps:bookworm` (see `//platforms`).
_PLATFORMS = {
    "aarch64-apple-darwin": ("config//os:macos", "config//cpu:arm64", "aarch64-apple-darwin"),
    "aarch64-deb12-linux": ("config//os:linux", "config//cpu:arm64", "aarch64-unknown-linux"),
    "x86_64-deb12-linux": ("config//os:linux", "config//cpu:x86_64", "x86_64-unknown-linux"),
}

_PROFILING = "toolchains//haskell/constraints:profiling"

# Bindists whose C half was built by a gcc with `-moutline-atomics` on, leaving
# calls to libgcc's `__aarch64_*_sync` helpers in the RTS. zig's compiler_rt has
# no `_sync` family, so these need the shims in `outline_atomics_sync.S`; read
# that file before touching this, it documents the one semantic compromise.
_OUTLINE_ATOMICS_SYNC = ["aarch64-deb12-linux"]

# Matched against the tarball listing, which still carries the
# `ghc-<version>-<platform>/` wrapper directory -- hence `^[^/]+/`.
# Documentation is 870 MB and no build reads it.
_DOC_EXCLUDES = [
    "^[^/]+/doc/",
    "^[^/]+/lib/html/",
    "^[^/]+/lib/latex/",
]

# Everything GHC builds a second time for profiling, including the easy-to-miss
# `_p` *shared* libraries. Dropping these takes the extracted tree from 3.0 GB
# to 754 MB.
_PROFILING_EXCLUDES = [
    "_p\\.a$",
    "\\.p_hi$",
    "\\.p_dyn_hi$",
    "_p-ghc[0-9.]+\\.(so|dylib)$",
    "_p\\.(so|dylib)$",
    "/ghc-iserv-prof",
]

def _archive(prefix, platform, profiling):
    return "{}__archive{}_{}".format(prefix, "_prof" if profiling else "", platform)

def _root(platform):
    """The directory the tarball wraps everything in.

    `strip_prefix` cannot remove it: the prelude passes `--exclude-from` after
    tar's member-pattern positional, and macOS bsdtar reads it as another
    pattern. The real fix is in `prelude//http_archive/unarchive.bzl`.
    """
    return "ghc-{}-{}".format(GHC_VERSION, _PLATFORMS[platform][2])

def _source(prefix, platform, path, profiling = False):
    """A label naming one path inside a platform's unpacked bindist."""
    return "{}[{}/{}]".format(_archive(prefix, platform, profiling), _root(platform), path)

def _os_cpu(platforms):
    """platform -> constraints, as the nested dict `_by_platform` wants."""
    os_cpu = {}
    for platform in platforms:
        if platform not in _PLATFORMS:
            fail("hermetic_haskell_toolchain: unknown platform '{}'. Known: {}".format(
                platform,
                sorted(_PLATFORMS),
            ))
        os_key, cpu_key, _dist_dir = _PLATFORMS[platform]
        if os_key not in os_cpu:
            os_cpu[os_key] = {}
        if cpu_key in os_cpu[os_key]:
            fail("hermetic_haskell_toolchain: '{}' and '{}' both build for {} {}; pick one".format(
                os_cpu[os_key][cpu_key],
                platform,
                os_key,
                cpu_key,
            ))
        os_cpu[os_key][cpu_key] = platform
    return os_cpu

def _by_platform(os_cpu, values):
    """Nested select (outer OS, inner CPU) over a platform -> value mapping.

    Deliberately has no `DEFAULT`: a platform we ship no GHC for should fail to
    configure rather than silently pick someone else's compiler.
    """
    outer = {}
    for os_key, cpus in os_cpu.items():
        outer[os_key] = select({cpu_key: values[platform] for cpu_key, platform in cpus.items()})
    return select(outer)

def _collapse(os_cpu, values):
    """`_by_platform`, except a value every platform agrees on is emitted
    plainly, so the handful of attributes that genuinely differ stand out."""
    if len({repr(value): None for value in values.values()}) == 1:
        return values.values()[0]
    return _by_platform(os_cpu, values)

def _major_version(version):
    """GHC's own `__GLASGOW_HASKELL__`: 9.14.1 is 914."""
    parts = version.split(".")
    if len(parts) < 2:
        fail("hermetic_haskell_toolchain: version '{}' is not MAJOR.MINOR.PATCH".format(version))
    return int(parts[0]) * 100 + int(parts[1])

def _hermetic_haskell_toolchain_impl(ctx: AnalysisContext) -> list[Provider]:
    version = ctx.attrs.version
    dist = ctx.attrs.dist
    root = ctx.attrs.root

    # `bin` as well as `lib`: `lib/settings` reaches back into `bin`
    # ("$topdir/../bin/unlit"). Naming a projected *directory* puts its whole
    # subtree in the action's input root, and keeps the rest of the tree out.
    bindir = dist.project(root + "/bin")
    libdir = dist.project(root + "/lib")
    tree = [bindir, libdir]

    # Versioned names, never the `bin/ghc` symlink, to sidestep symlink
    # preservation in `http_archive`. `-B<libdir>` is how an uninstalled
    # bindist finds its lib tree -- what the `bin/` wrapper scripts would pass.
    compiler = RunInfo(cmd_args(
        dist.project("{}/bin/ghc-{}".format(root, version)),
        cmd_args(libdir, format = "-B{}"),
        hidden = bindir,
    ))

    # Must stay a single argv word: the prelude passes it to `sh -c` as a
    # positional. No flags needed -- `settings` gives ghc-pkg a relative
    # global package db, found from its own path.
    packager = RunInfo(cmd_args(
        dist.project("{}/bin/ghc-pkg-{}".format(root, version)),
        hidden = tree,
    ))

    haddock = RunInfo(cmd_args(
        dist.project("{}/bin/haddock-ghc-{}".format(root, version)),
        hidden = tree,
    ))

    # `-pgm*` overrides the corresponding `lib/settings` entries so that
    # `toolchains//:cxx`, not GHC, decides what the C toolchain is. That is
    # what makes the Linux image's gcc reachable (and drops `ld.gold`): the
    # branches below read capabilities off that toolchain, not the OS.
    #
    # Each value must expand to a single word, which the cxx toolchain's tools
    # do. `otool`/`install_name_tool` stay with `settings` (i.e. PATH):
    # `CxxToolchainInfo` carries no handle on either.
    cxx = ctx.attrs._cxx_toolchain[CxxToolchainInfo]
    cxx_flags = [
        "-pgmc",
        cxx.c_compiler_info.compiler,
        "-pgmP",
        cxx.c_compiler_info.compiler,
        # Setting `-pgmP` *clears* GHC's stored preprocessor flags; without
        # these clang compiles Haskell source as C. Same as `settings`'
        # "Haskell CPP flags" minus `-Wno-` suppressions.
        "-optP-E",
        "-optP-undef",
        "-optP-traditional",
        "-pgma",
        cxx.as_compiler_info.compiler,
        # GHC's "linker" is a cc driver invocation, not `ld`.
        "-pgml",
        cxx.c_compiler_info.compiler,
        "-pgmar",
        cxx.linker_info.archiver,
        "-pgmranlib",
        cxx.binary_utilities_info.ranlib,
        # Merging objects needs a real `ld -r`, which `CxxToolchainInfo` does
        # not expose. Poisoned (GHC's own idiom, cf. windres) rather than left
        # to fall back to `ld.gold` off PATH; if needed, add an `ld` to `:cxx`.
        "-pgmlm",
        "false",
    ]

    # `-pgma` clears the assembler's flags like `-pgmP` does, and GHC hands
    # the assembler C flags that do not apply to `.s` input. Keyed on compiler
    # type because gcc rejects the flag.
    if cxx.as_compiler_info.compiler_type == "clang":
        cxx_flags += ["-opta-Qunused-arguments"]

    # GHC's objects are not PIE, so Debian's pie-by-default cc fails the final
    # link. `settings` would pass `-no-pie` itself, but `-pgmc` disables that;
    # the cxx toolchain tells us the linker takes the flag, so hand it back.
    # Apple's linker has no such flag.
    if cxx.linker_info.type == LinkerType("gnu"):
        cxx_flags += ["-optl-no-pie"]

    # Link-only. GHC compiles a small C file during linking to carry the
    # link-info section, and hands its C compiler `picCCOpts` -- which is
    # `-fno-PIC` whenever GHC's own `Opt_PIC` is off. `prelude//haskell` sets
    # `-fPIC` on the *compile* action for the shared and static_pic link styles
    # but never on the link action, so the link invocation always defaulted to
    # off. That went unnoticed against gcc and Apple clang, which happily
    # produce non-PIC objects; `zig cc` instead refuses `-fno-PIC` outright on
    # its Linux targets ("the selected target requires position independent
    # code"), and there is no way to satisfy it by turning PIE off either
    # (`-fno-PIC -fno-PIE` fails identically).
    #
    # So say what we actually mean rather than letting GHC guess: the stub
    # should be PIC. It costs nothing in a static link -- PIC objects link into
    # a non-PIE executable fine, which is what `-optl-no-pie` above keeps this
    # producing -- and on darwin GHC already forces PIC, so it is a no-op there.
    linker_flags = ["-fPIC"]

    if ctx.attrs.platform_name in _OUTLINE_ATOMICS_SYNC:
        shims = ctx.actions.declare_output("outline_atomics_sync.o")
        ctx.actions.run(
            cmd_args(
                cxx.c_compiler_info.compiler,
                "-fPIC",
                "-c",
                ctx.attrs.outline_atomics_sync,
                "-o",
                shims.as_output(),
            ),
            category = "ghc_outline_atomics_sync",
        )

        # A bare object rather than an archive, so that link order cannot
        # matter: an archive would only be searched for symbols already
        # undefined at the point it appears, and GHC decides where `-optl`
        # arguments land. Sixteen four-byte branches cost nothing.
        linker_flags.append(cmd_args(shims, format = "-optl{}"))

    return [
        DefaultInfo(default_output = dist),
        HaskellToolchainInfo(
            compiler = compiler,
            # GHC drives the link too, so this is the same binary.
            linker = compiler,
            packager = packager,
            haddock = haddock,
            compiler_flags = cxx_flags + ctx.attrs.compiler_flags,
            linker_flags = cxx_flags + linker_flags + ctx.attrs.linker_flags,
            compiler_major_version = _major_version(version),
            use_argsfile = True,
        ),
        HaskellPlatformInfo(name = ctx.attrs.platform_name),
    ]

_hermetic_haskell_toolchain = rule(
    impl = _hermetic_haskell_toolchain_impl,
    is_toolchain_rule = True,
    attrs = {
        "compiler_flags": attrs.list(attrs.arg(), default = []),
        # A plain source, not an `exec_dep`: GHC cannot cross compile, so the
        # compiler and the libraries it links must come from one archive in
        # the target configuration. Cross builds already run on matching
        # workers (`@platforms/<cpu>-<os>.mode`).
        "dist": attrs.source(allow_directory = True),
        "linker_flags": attrs.list(attrs.arg(), default = []),
        "outline_atomics_sync": attrs.default_only(
            attrs.source(default = "toolchains//haskell:outline_atomics_sync.S"),
        ),
        "platform_name": attrs.string(),
        # The wrapper directory inside the tarball; see `_root`.
        "root": attrs.string(),
        "version": attrs.string(),
        "_cxx_toolchain": attrs.toolchain_dep(
            default = "toolchains//:cxx",
            providers = [CxxToolchainInfo],
        ),
    },
)

def _sub_targets(platform):
    """Every archive path the boot package targets need to name:
    `http_archive` only projects paths declared up front."""
    root = _root(platform)
    paths = {"{}/{}".format(root, GHC_PACKAGE_DB): None}
    for package in BOOT_PACKAGES[platform].values():
        for path in package["static_libs"]:
            paths["{}/{}".format(root, path)] = None
        for path in package["profiled_static_libs"]:
            paths["{}/{}".format(root, path)] = None
        for path in package["shared_libs"].values():
            paths["{}/{}".format(root, path)] = None
        for path in package["cxx_header_dirs"]:
            paths["{}/{}".format(root, path)] = None
    return sorted(paths)

def hermetic_haskell_toolchain(
        name,
        version,
        sha256s,
        visibility = ["PUBLIC"],
        **kwargs):
    """Download and configure a hermetic GHC toolchain.

    Emits two archives per platform over the same URL and hash, differing only
    in what they unpack; `select()` on the profiling constraint means only one
    is ever fetched. The boot packages are `toolchains//haskell`, generated
    from the same data.

    Args:
        name: In practice "haskell"; the prelude hardcodes `toolchains//:haskell`.
        version: GHC version string, e.g. "9.14.1".
        sha256s: GHC download flavour -> sha256, one per platform;
             `update_hermetic_toolchain.py haskell` fills these from
             upstream's SHA256SUMS.
        visibility: Visibility for the generated targets.
        **kwargs: Forwarded to the toolchain rule (compiler_flags, linker_flags).
    """
    if version != GHC_VERSION:
        fail("hermetic_haskell_toolchain: pinned {} but toolchains//haskell:boot_packages.bzl was generated from {}; rerun `update_hermetic_toolchain -- haskell`".format(version, GHC_VERSION))

    os_cpu = _os_cpu(sha256s.keys())
    dists = {}

    for platform, checksum in sha256s.items():
        os_key, cpu_key, _dist_dir = _PLATFORMS[platform]

        if platform not in BOOT_PACKAGES:
            fail("hermetic_haskell_toolchain: toolchains//haskell:boot_packages.bzl has no '{}'; rerun `update_hermetic_toolchain -- haskell`".format(platform))

        for profiling in (False, True):
            native.http_archive(
                name = _archive(name, platform, profiling),
                sha256 = checksum,
                type = "tar.xz",
                urls = ["{}/{}/ghc-{}-{}.tar.xz".format(_BASE_URL, version, version, platform)],
                excludes = _DOC_EXCLUDES + ([] if profiling else _PROFILING_EXCLUDES),
                sub_targets = _sub_targets(platform),
                # Runs on one platform; without this a `toolchains//...` build
                # fetches every one of them.
                target_compatible_with = [os_key, cpu_key],
                visibility = visibility,
            )

        dists[platform] = select({
            "{}[disabled]".format(_PROFILING): ":" + _archive(name, platform, False),
            "{}[enabled]".format(_PROFILING): ":" + _archive(name, platform, True),
        })

    _hermetic_haskell_toolchain(
        name = name,
        dist = _by_platform(os_cpu, dists),
        platform_name = _by_platform(os_cpu, {platform: platform for platform in sha256s}),
        root = _by_platform(os_cpu, {platform: _root(platform) for platform in sha256s}),
        version = version,
        visibility = visibility,
        **kwargs
    )

def haskell_boot_packages(toolchain, visibility = ["PUBLIC"]):
    """One `haskell_prebuilt_library` per GHC boot package, from generated data.

    Generated because GHC hash-suffixes the library directory and every unit
    id, differently per platform. Nothing is injected implicitly: use sites
    depend on e.g. `toolchains//haskell:base` explicitly.

    Args:
        toolchain: The `hermetic_haskell_toolchain` label whose archives these
             project out of, e.g. "toolchains//:haskell".
        visibility: Visibility for the generated targets.
    """
    platforms = sorted(BOOT_PACKAGES)
    os_cpu = _os_cpu(platforms)

    for package in sorted(BOOT_PACKAGES[platforms[0]]):
        ids = {}
        versions = {}
        dbs = {}
        static_libs = {}
        profiled_static_libs = {}
        shared_libs = {}
        cxx_header_dirs = {}
        exported_linker_flags = {}
        deps = {}

        for platform in platforms:
            if package not in BOOT_PACKAGES[platform]:
                fail("haskell_boot_packages: {} ships no '{}'".format(platform, package))
            conf = BOOT_PACKAGES[platform][package]

            ids[platform] = conf["id"]
            versions[platform] = conf["version"]
            dbs[platform] = _source(toolchain, platform, GHC_PACKAGE_DB)
            static_libs[platform] = [
                _source(toolchain, platform, path)
                for path in conf["static_libs"]
            ]

            # The `_p` libraries only exist in the profiling archive, so these
            # follow the constraint too; `enable_profiling` without
            # `-m profiling` fails on a path that is not there.
            profiled_static_libs[platform] = [
                _source(toolchain, platform, path, profiling = True)
                for path in conf["profiled_static_libs"]
            ]
            shared_libs[platform] = {
                soname: _source(toolchain, platform, path)
                for soname, path in conf["shared_libs"].items()
            }
            cxx_header_dirs[platform] = [
                _source(toolchain, platform, path)
                for path in conf["cxx_header_dirs"]
            ]

            # `extra-libraries`/`ld-options` from the `.conf`: system
            # libraries the C linker finds, not shipped in the archive.
            exported_linker_flags[platform] = conf["exported_linker_flags"]
            deps[platform] = [":" + dep for dep in conf["deps"]]

        native.haskell_prebuilt_library(
            name = package,
            id = _collapse(os_cpu, ids),
            version = _collapse(os_cpu, versions),
            db = _collapse(os_cpu, dbs),
            static_libs = _collapse(os_cpu, static_libs),
            # GHC ships no separate PIC static libraries; the plain ones are
            # what GHC itself would hand the linker.
            pic_static_libs = _collapse(os_cpu, static_libs),
            profiled_static_libs = _collapse(os_cpu, profiled_static_libs),
            pic_profiled_static_libs = _collapse(os_cpu, profiled_static_libs),
            shared_libs = _collapse(os_cpu, shared_libs),
            cxx_header_dirs = _collapse(os_cpu, cxx_header_dirs),
            exported_linker_flags = _collapse(os_cpu, exported_linker_flags),
            deps = _collapse(os_cpu, deps),
            visibility = visibility,
        )
