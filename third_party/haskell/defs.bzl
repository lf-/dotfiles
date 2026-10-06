# Macros the generated `third_party/haskell/BUCK` is written against.
#
# The generated file stays declarative: each package spells its archive-relative
# source paths exactly once, and everything derived from them -- the
# `http_archive`, its `sub_targets`, the module-path keys and the subtarget
# labels they map to -- is computed here.

load("@prelude//cxx:preprocessor.bzl", "cxx_inherited_preprocessor_infos", "cxx_merge_cpreprocessors")
load("@toolchains//:hermetic_haskell_toolchain.bzl", "Hsc2hsInfo")
load("@toolchains//haskell:boot_packages.bzl", "BOOT_PACKAGES", "GHC_VERSION")

_HACKAGE = "https://hackage.haskell.org/package"

# What a package's `.info` target tells its dependents' `.info` targets.
HaskellPackageVersionInfo = provider(fields = {
    "name": provider_field(str),
    "version": provider_field(str),
})

def _archive(name):
    return name + ".tar.gz"

def _dirname(path):
    return path.rpartition("/")[0] or "."

def _module_path(name, path, hs_source_dirs):
    """The module path GHC expects (`Data/Foo.hs`): the path with its longest
    matching `hs-source-dirs` entry stripped. hackage2buck checks this agrees
    with the cabal resolution it did."""
    for d in sorted(hs_source_dirs, key = lambda d: -len(d.rstrip("/"))):
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

def _version_macros(kind, name, version):
    """Cabal's `VERSION_<pkg>`/`MIN_VERSION_<pkg>` pair (`kind = "TOOL_"` for
    `MIN_TOOL_VERSION_<tool>`), comparing the first three components."""
    parts = [int(p) for p in version.split(".")] + [0, 0, 0]
    return """\
#ifndef {k}VERSION_{m}
#define {k}VERSION_{m} "{v}"
#endif
#ifndef MIN_{k}VERSION_{m}
#define MIN_{k}VERSION_{m}(major1,major2,minor) (\\
  (major1) <  {a} || \\
  (major1) == {a} && (major2) <  {b} || \\
  (major1) == {a} && (major2) == {b} && (minor) <= {c})
#endif
""".format(k = kind, m = name.replace("-", "_"), v = version, a = parts[0], b = parts[1], c = parts[2])

def _haskell_package_info_impl(ctx: AnalysisContext) -> list[Provider]:
    name = ctx.attrs.package_name
    version = ctx.attrs.version
    macros = [_version_macros("", d[HaskellPackageVersionInfo].name, d[HaskellPackageVersionInfo].version) for d in ctx.attrs.deps]
    macros.append(_version_macros("TOOL_", "ghc", GHC_VERSION))
    for macro, value in [
        ("CURRENT_PACKAGE_KEY", "{}-{}".format(name, version)),
        ("CURRENT_COMPONENT_ID", "{}-{}".format(name, version)),
        ("CURRENT_PACKAGE_VERSION", version),
    ]:
        macros.append("#ifndef {m}\n#define {m} \"{v}\"\n#endif\n".format(m = macro, v = value))
    header = ctx.actions.write("cabal_macros.h", "\n".join(macros))
    return [
        DefaultInfo(default_output = header),
        HaskellPackageVersionInfo(name = name, version = version),
    ]

# `<pkg>.info`: the package's cabal_macros.h, built from its deps' versions.
#
# Deliberately no `CPreprocessorInfo`: `haskell_library` re-exports its deps'
# preprocessor info to *their* dependents, which would leak this package's
# CURRENT_PACKAGE_* and MIN_VERSION_* into everything downstream. The macro
# hands the header to its own package's compiles by `$(location)` instead.
_haskell_package_info = rule(
    impl = _haskell_package_info_impl,
    attrs = {
        "deps": attrs.list(attrs.dep(providers = [HaskellPackageVersionInfo]), default = []),
        "package_name": attrs.string(),
        "version": attrs.string(),
    },
)

def _headers_of_impl(ctx: AnalysisContext) -> list[Provider]:
    return [
        DefaultInfo(),
        cxx_merge_cpreprocessors(ctx.actions, [], cxx_inherited_preprocessor_infos(ctx.attrs.deps)),
    ]

# Just the headers of `deps`, for C-side targets (cbits, hsc2hs) that need to
# see their Haskell deps' include dirs (`HsFFI.h`, ...). A real dep on a
# `haskell_library` would also fold its link info into the C target's *native*
# link info: Haskell archives linked twice, and non-profiled ones in profiled
# links.
_headers_of = rule(
    impl = _headers_of_impl,
    attrs = {
        "deps": attrs.list(attrs.dep(), default = []),
    },
)

def _hsc2hs_impl(ctx: AnalysisContext) -> list[Provider]:
    info = ctx.attrs._haskell_toolchain[Hsc2hsInfo]
    out = ctx.actions.declare_output(ctx.attrs.out)
    pp = cxx_merge_cpreprocessors(ctx.actions, [], cxx_inherited_preprocessor_infos(ctx.attrs.deps))
    ctx.actions.run(
        cmd_args(
            info.hsc2hs,
            cmd_args(info.cc, format = "--cc={}"),
            cmd_args(info.cc, format = "--ld={}"),
            cmd_args(info.template, format = "--template={}"),
            # hsc2hs `#include`s the template by the (project-relative) path
            # given, from a generated file elsewhere in buck-out.
            "--cflag=-iquote.",
            cmd_args(pp.set.project_as_args("args"), format = "--cflag={}"),
            cmd_args(ctx.attrs.cflags, format = "--cflag={}"),
            ctx.attrs.src,
            "-o",
            out.as_output(),
        ),
        category = "hsc2hs",
    )
    return [DefaultInfo(default_output = out)]

# Builds and runs a C program to compute the `.hs`, so it assumes the exec
# platform can run target code -- true of every build here (GHC cannot cross
# compile anyway).
_hsc2hs = rule(
    impl = _hsc2hs_impl,
    attrs = {
        "cflags": attrs.list(attrs.arg(), default = []),
        "deps": attrs.list(attrs.dep(), default = []),
        "out": attrs.string(),
        "src": attrs.source(),
        "_haskell_toolchain": attrs.toolchain_dep(
            default = "toolchains//:haskell",
            providers = [Hsc2hsInfo],
        ),
    },
)

def _boot_version(name):
    versions = {packages[name]["version"]: None for packages in BOOT_PACKAGES.values() if name in packages}
    if len(versions) != 1:
        fail("boot_package({}): expected one version across platforms, got {}".format(name, list(versions)))
    return list(versions)[0]

def boot_package(name, visibility = ["PUBLIC"]):
    """`:<name>` for a GHC boot package, so generated deps route uniformly."""
    native.alias(
        name = name,
        actual = "toolchains//haskell:" + name,
        visibility = visibility,
    )
    _haskell_package_info(
        name = name + ".info",
        package_name = name,
        version = _boot_version(name),
    )

# The hermetic GHC's platforms, keyed as in `boot_packages.json` (which is what
# the generated `platform` dicts use).
_PLATFORMS = {
    "aarch64-apple-darwin": ("config//os:macos", "config//cpu:arm64"),
    "aarch64-deb12-linux": ("config//os:linux", "config//cpu:arm64"),
    "x86_64-deb12-linux": ("config//os:linux", "config//cpu:x86_64"),
}

def _collapse(values):
    """platform -> value, as a plain value if every platform agrees, else a
    nested select (outer OS, inner CPU). Deliberately no `DEFAULT`, like the
    toolchain: an unknown platform fails to configure."""
    if len({repr(v): None for v in values.values()}) == 1:
        return values.values()[0]
    by_os = {}
    for platform, (os_key, cpu_key) in _PLATFORMS.items():
        by_os.setdefault(os_key, {})[cpu_key] = values[platform]
    return select({os_key: select(cpus) for os_key, cpus in by_os.items()})

def third_party_haskell_library(
        name,
        version,
        sha256,
        hs_source_dirs = ["."],
        srcs = [],
        hsc_srcs = [],
        c_srcs = [],
        include_dirs = [],
        deps = [],
        compiler_flags = [],
        cpp_flags = [],
        cc_flags = [],
        cxx_deps = [],
        linker_flags = [],
        public = False,
        platform = {},
        visibility = None):
    """One Hackage package's library component, built from its sdist.

    Args:
        name: The Hackage package name; also the target name, since one solve
             picks one version per package.
        version: The pinned version.
        sha256: Of the sdist tarball, from the index's TUF metadata.
        hs_source_dirs: The component's `hs-source-dirs`, in cabal order.
        srcs: Haskell sources, relative to the unpacked sdist root.
        hsc_srcs: `.hsc` sources, run through hsc2hs.
        c_srcs: The component's `c-sources`.
        include_dirs: The component's `include-dirs`; like cabal, these reach
             dependents' compiles too.
        deps: Other `third_party/haskell` targets, boot packages included.
        compiler_flags: Extra GHC flags (extensions, ghc-options).
        cpp_flags: `cpp-options`: for GHC's CPP, hsc2hs and the C sources.
        cc_flags: `cc-options`: for hsc2hs and the C sources.
        cxx_deps: Header-providing C targets that are not Hackage packages,
             e.g. a fixup's stand-in for a `Configure` step.
        linker_flags: Extra GHC link flags.
        public: Visible outside this package; packages the repo asked for.
        platform: platform -> {attr: value} for the attrs above that differ
             between platforms; each replaces the attr whole.
        visibility: Overrides `public` when given.
    """
    common = {
        "c_srcs": c_srcs,
        "cc_flags": cc_flags,
        "compiler_flags": compiler_flags,
        "cpp_flags": cpp_flags,
        "deps": deps,
        "hs_source_dirs": hs_source_dirs,
        "hsc_srcs": hsc_srcs,
        "include_dirs": include_dirs,
        "srcs": srcs,
    }
    for p, overrides in platform.items():
        if p not in _PLATFORMS:
            fail("third_party_haskell_library({}): unknown platform '{}'".format(name, p))
        for attr in overrides:
            if attr not in common:
                fail("third_party_haskell_library({}): '{}' cannot vary by platform".format(name, attr))
    per = {p: dict(common, **platform.get(p, {})) for p in _PLATFORMS}

    def each(f):
        return _collapse({p: f(kw) for p, kw in per.items()})

    def anywhere(attr):
        return {x: None for kw in per.values() for x in kw[attr]}

    archive = _archive(name)
    c_dirs = lambda kw: sorted({_dirname(x): None for x in kw["c_srcs"] if _dirname(x) != "."})
    native.http_archive(
        name = archive,
        urls = ["{}/{}-{}/{}-{}.tar.gz".format(_HACKAGE, name, version, name, version)],
        sha256 = sha256,
        strip_prefix = "{}-{}".format(name, version),
        # Buck resolves sources at analysis time, before the archive exists,
        # so every path the library names, on any platform, must be projected
        # up front.
        sub_targets = sorted(
            {x: None for kw in per.values() for attr in ("srcs", "hsc_srcs", "c_srcs", "include_dirs") for x in kw[attr]} |
            {x: None for kw in per.values() for x in c_dirs(kw)},
        ),
    )

    if visibility == None:
        visibility = ["PUBLIC"] if public else []

    info = ":{}.info".format(name)
    _haskell_package_info(
        name = name + ".info",
        package_name = name,
        version = version,
        deps = each(lambda kw: [d + ".info" for d in kw["deps"]]),
    )
    macros = ["-include", "$(location {})".format(info)]

    # Sidecars exist on every platform once any platform needs them; where a
    # platform has nothing for them they are simply empty.
    extra_deps = list(cxx_deps)
    c_deps = list(cxx_deps)
    own_headers = []
    if anywhere("include_dirs"):
        native.prebuilt_cxx_library(
            name = name + "-headers",
            header_dirs = each(lambda kw: [":{}[{}]".format(archive, d) for d in kw["include_dirs"]]),
            header_only = True,
        )
        own_headers = [":{}-headers".format(name)]
        extra_deps += own_headers
        c_deps += own_headers

    if anywhere("c_srcs") or anywhere("hsc_srcs"):
        _headers_of(
            name = name + "-deps-headers",
            deps = each(lambda kw: kw["deps"]),
        )
        c_deps.append(":{}-deps-headers".format(name))

    # A package of C alone (zlib-clib, ...) is just its cbits: an empty
    # `haskell_library` has nothing to archive.
    c_only = not anywhere("srcs") and not anywhere("hsc_srcs")
    if anywhere("c_srcs"):
        native.cxx_library(
            name = name if c_only else name + "-cbits",
            srcs = each(lambda kw: [":{}[{}]".format(archive, x) for x in kw["c_srcs"]]),
            compiler_flags = each(lambda kw: kw["cc_flags"] + kw["cpp_flags"]),
            # The archive is projected file by file, so a C file's siblings
            # (`#include "foo.h"`) are only there if asked for.
            preprocessor_flags = each(lambda kw: ["-I$(location :{}[{}])".format(archive, d) for d in c_dirs(kw)]),
            deps = c_deps,
            # What a Haskell library's include-dirs get from re-export.
            exported_deps = own_headers if c_only else [],
            visibility = visibility if c_only else [],
        )
        if c_only:
            return
        extra_deps.append(":{}-cbits".format(name))
    elif c_only:
        fail("third_party_haskell_library({}): no Haskell or C sources".format(name))

    def hsc_module(kw, path):
        return _module_path(name, path, kw["hs_source_dirs"]).removesuffix(".hsc") + ".hs"

    def hsc_target(module):
        return "{}-hsc-{}".format(name, module.removesuffix(".hs").replace("/", "."))

    for path in anywhere("hsc_srcs"):
        modules = {hsc_module(kw, path): None for kw in per.values() if path in kw["hsc_srcs"]}
        if len(modules) != 1:
            fail("third_party_haskell_library({}): '{}' is module {} depending on platform".format(name, path, list(modules)))
        module = list(modules)[0]
        _hsc2hs(
            name = hsc_target(module),
            src = ":{}[{}]".format(archive, path),
            out = module,
            cflags = each(lambda kw: kw["cc_flags"] + kw["cpp_flags"] + macros),
            deps = c_deps,
        )

    def hs_srcs(kw):
        out = {
            _module_path(name, path, kw["hs_source_dirs"]): ":{}[{}]".format(archive, path)
            for path in kw["srcs"]
        }
        for path in kw["hsc_srcs"]:
            module = hsc_module(kw, path)
            out[module] = ":" + hsc_target(module)
        return out

    native.haskell_library(
        name = name,
        srcs = each(hs_srcs),
        deps = each(lambda kw: kw["deps"] + extra_deps),
        compiler_flags = each(lambda kw: ["-optP" + f for f in macros + kw["cpp_flags"]] + kw["compiler_flags"]),
        linker_flags = linker_flags,
        visibility = visibility,
    )
