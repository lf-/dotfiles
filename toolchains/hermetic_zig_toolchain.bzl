# C/C++/Objective-C, hermetic everywhere it can be: `zig cc` out of upstream's
# own bindists, except on macOS.
#
# `zig cc` is a clang driver plus bundled libc headers, compiler-rt and libc
# stubs for every target, in one relocatable tarball -- so it fits the same
# "unpack an upstream bindist, run it unmodified" shape as the Go, Rust,
# Haskell, Java and Python toolchains here, and makes cross-compiling fall out
# for free.
#
# ## Why darwin is still PATH clang
#
# zig drives only the ELF builds here. Anything targeting macOS goes back to
# `prelude//toolchains/cxx/clang:path_clang_tools`, because zig 0.14 replaced
# LLD with its own MachO linker and that linker gets two things wrong that
# matter to this repo:
#
#   * It emits pointer rebases into `__TEXT,__text` for GHC's objects (~10k of
#     them for the haskell smoke test), which `dyld_info` reports as malformed
#     and which SIGBUS the process at load. ld64, given byte-identical objects,
#     emits none and the binary runs.
#   * Its output carries an `__LLVM` segment that Apple's `strip` rejects with
#     "the __LLVM segment too small", and Go's darwin linker runs `strip -S`
#     unconditionally -- so no cgo binary, matchlock included, can link.
#
# `zig cc` exposes no way to ask for LLD instead (`-flld` is a `zig build-exe`
# flag, and `-fuse-ld=lld` is accepted and ignored), so there is nothing to
# select here short of a different zig.
#
# Anyone picking this back up: zig also rejects `-Wl,-oso_prefix,.`, which the
# prelude adds to every `LinkerType("darwin")` link
# (`cxx_apple_linker_flags.bzl`), so that has to be dropped in the wrapper
# before the two bugs above are even reachable. Everything else the darwin path
# emits -- `-force_load`, `-install_name`, `-dead_strip` -- zig does take.
#
# This still gets the thing that prompted the change: the Linux RE image
# (`buildpack-deps:bookworm`) no longer needs a C compiler, gcc is gone, and a
# macOS host cross-compiling *to* Linux uses the macOS zig against zig's own
# libc, which is what lets `//platforms` stop disabling cgo.
#
# This is a first-party rule rather than `prelude//toolchains/cxx/zig`, which
# picks its platform with load-time `host_info()` instead of `select()`,
# hand-rolls an `http_archive` whose release table stops at zig 0.14.0, pins
# `LinkerType("gnu")` even on macOS, sets no zig cache environment at all (so
# every action writes to `$HOME/.cache/zig`), and -- the reason this file
# started out as a copy of `prelude//toolchains:cxx.bzl` -- hand-builds its
# providers, leaving `objc_compiler_info` unset.
#
# That last one matters: any `.m` source fails analysis with "Could not find
# compiler for extension `.m`" without it, and `github.com/Code-Hex/vz/v3` --
# matchlock's Virtualization.framework backend -- ships a dozen of them. Going
# through the `cxx_toolchain_infos()` helper fills `objc_compiler_info` and
# `objcxx_compiler_info` in from the C and C++ compiler infos (see
# `prelude//cxx:cxx_toolchain_types.bzl`), which is exactly right for clang:
# the same driver compiles Objective-C, selected by file extension.

load(
    "@prelude//cxx:cxx_toolchain_types.bzl",
    "BinaryUtilitiesInfo",
    "CCompilerInfo",
    "CxxCompilerInfo",
    "CxxInternalTools",
    "DepTrackingMode",
    "LinkerInfo",
    "LinkerType",
    "PicBehavior",
    "ShlibInterfacesMode",
    "cxx_toolchain_infos",
)
load("@prelude//cxx:headers.bzl", "HeaderMode")
load("@prelude//cxx:linker.bzl", "LINKERS")
load("@prelude//decls:common.bzl", "buck")
load("@prelude//linking:link_info.bzl", "LinkOrdering", "LinkStyle")
load("@prelude//linking:lto.bzl", "LtoMode")
load("@prelude//os_lookup:defs.bzl", "Os", "OsLookup")
load("@prelude//toolchains:cxx.bzl", "CxxToolsInfo")
load("@prelude//utils:cmd_script.bzl", "cmd_script")

_BASE_URL = "https://ziglang.org/download"

# Keys are zig's own index.json platform spellings, so they need no translating.
_PLATFORMS = {
    "aarch64-linux": ("config//os:linux", "config//cpu:arm64"),
    "aarch64-macos": ("config//os:macos", "config//cpu:arm64"),
    "x86_64-linux": ("config//os:linux", "config//cpu:x86_64"),
}

# What to hand `zig cc -target` when cross-compiling, keyed by (os, cpu) of the
# *target* platform. These are target triples, not the download keys above, and
# there is no macOS entry because macOS never reaches zig -- see the header.
#
# TODO: the native/cross split below is a wart. The end state is every build
# being a cross build with nothing coming from the host, at which point this
# table applies unconditionally. Getting there means shipping our own copies of
# the system libraries we link against -- see the gmp TODO in
# `hermetic_haskell_toolchain.bzl`.
_ZIG_TARGETS = {
    # glibc pinned to bookworm's, matching `//platforms`' RE image.
    ("linux", "arm64"): "aarch64-linux-gnu.2.36",
    ("linux", "x86_64"): "x86_64-linux-gnu.2.36",
}

# What `zig_wrapper.py` spells "build for this machine".
_NATIVE = "native"

_ZigInfo = provider(
    doc = "An unpacked zig distribution, as one directory artifact rooted at its top level.",
    fields = {
        "dist": provider_field(Artifact),
    },
)

def _hermetic_zig_impl(ctx: AnalysisContext) -> list[Provider]:
    dist = ctx.attrs.dist
    return [
        DefaultInfo(default_output = dist),
        # `lib/` holds the libc headers, the libc stubs and compiler-rt's
        # sources, all of which `zig cc` reads relative to its own binary; the
        # whole tree has to be an input, not just the executable.
        RunInfo(args = cmd_args(dist.project("zig"), hidden = dist)),
        _ZigInfo(dist = dist),
    ]

_hermetic_zig = rule(
    impl = _hermetic_zig_impl,
    attrs = {
        "dist": attrs.source(allow_directory = True),
    },
    doc = "Picks one platform's unpacked zig. Holds the only `select()` here.",
)

def _by_platform(os_cpu, values):
    """Nested select (outer OS, inner CPU) over a platform -> value mapping.

    Deliberately has no `DEFAULT`: a platform we ship no zig for should fail to
    configure rather than silently pick someone else's compiler.
    """
    outer = {}
    for os_key, cpus in os_cpu.items():
        outer[os_key] = select({cpu_key: values[platform] for cpu_key, platform in cpus.items()})
    return select(outer)

def _warm_cache(ctx: AnalysisContext, zig: RunInfo, target: str) -> Artifact:
    """Zig's global cache, pre-populated for one target triple.

    `zig cc` builds compiler-rt, libc++ and the target's libc stubs on first use
    and caches them in its *global* cache. Doing that per compile action is slow
    and doing it in `$HOME/.cache/zig` is not hermetic, so build it once here --
    a normal buck action, so content-addressed, RE-shippable and cached like
    anything else -- and let `zig_wrapper.py` clone it into scratch per run.

    A trivial C++ *link*, not a compile: compiler-rt, libc++ and libunwind are
    all built at link time, and they are the expensive part. The C path needs a
    subset of what this leaves behind.
    """
    source = ctx.actions.write("zig_warm.cpp", "int main() { return 0; }\n")
    cache = ctx.actions.declare_output("zig_warm_cache", dir = True)
    binary = ctx.actions.declare_output("zig_warm_bin")

    ctx.actions.run(
        cmd_args(
            zig,
            "c++",
            [] if target == _NATIVE else ["-target", target],
            source,
            "-o",
            binary.as_output(),
        ),
        env = {
            "ZIG_GLOBAL_CACHE_DIR": cache.as_output(),
            "ZIG_LOCAL_CACHE_DIR": cmd_args(cache.as_output(), format = "{}/local"),
        },
        category = "zig_warm_cache",
    )
    return cache

def _zig_tool(
        ctx: AnalysisContext,
        name: str,
        subcommand: str,
        cache: Artifact,
        target: str) -> RunInfo:
    """One zig subcommand, as a tool the cxx rules can use.

    `zig_wrapper.py` does the work; `cmd_script()` collapses the whole
    invocation to a single argv word, which is what GHC's `-pgm*` values and
    rustc's `-Clinker=` each have to be.
    """
    dist = ctx.attrs.zig[_ZigInfo].dist
    cmd = cmd_args(
        ctx.attrs.wrapper[RunInfo],
        cmd_args(dist.project("zig"), format = "--zig={}", hidden = dist),
        cmd_args(cache, format = "--warm-cache={}"),
        "--target={}".format(target),
        subcommand,
    )
    return RunInfo(args = cmd_script(
        actions = ctx.actions,
        name = name,
        cmd = cmd,
        language = ctx.attrs._exec_os_type[OsLookup].script,
    ))

def _zig_tools(ctx: AnalysisContext, triple: str):
    """The tool set, as `zig` subcommands."""
    cache = _warm_cache(ctx, ctx.attrs.zig[RunInfo], triple)

    cc = _zig_tool(ctx, "zig_cc", "cc", cache, triple)

    # One wrapper for compiling and linking C++: GHC's "linker" is a cc driver
    # invocation too, and `cmd_script()` names its script after `name`.
    cxx = _zig_tool(ctx, "zig_cxx", "c++", cache, triple)

    return struct(
        c_compiler = cc,
        cxx_compiler = cxx,
        linker = cxx,
        archiver = _zig_tool(ctx, "zig_ar", "ar", cache, triple),
        ranlib = _zig_tool(ctx, "zig_ranlib", "ranlib", cache, triple),
        objcopy = _zig_tool(ctx, "zig_objcopy", "objcopy", cache, triple),
        # `zig ar` is llvm-ar, which is GNU-flavoured and takes @argfiles.
        archiver_type = "gnu",
        archiver_supports_argfiles = True,
    )

def _path_tools(ctx: AnalysisContext):
    """The tool set, resolved off PATH. darwin only; see the header."""
    tools = ctx.attrs.cxx_tools[CxxToolsInfo]
    return struct(
        c_compiler = RunInfo(args = [tools.compiler]),
        cxx_compiler = RunInfo(args = [tools.cxx_compiler]),
        linker = RunInfo(args = [tools.linker]),
        archiver = RunInfo(args = [tools.archiver]),
        ranlib = RunInfo(args = ["ranlib"]),
        objcopy = RunInfo(args = ["objcopy"]),
        archiver_type = tools.archiver_type,
        # Apple's `ar` rejects @argfiles.
        archiver_supports_argfiles = False,
    )

def _hermetic_zig_toolchain_impl(ctx: AnalysisContext) -> list[Provider]:
    target = ctx.attrs._target_os_type[OsLookup]
    exec_ = ctx.attrs._exec_os_type[OsLookup]

    platform_name = target.os.value
    if target.cpu:
        platform_name += "-" + target.cpu

    if (ctx.attrs.zig == None) == (ctx.attrs.cxx_tools == None):
        fail("hermetic_zig_toolchain: exactly one of `zig` and `cxx_tools` has to be set for {}".format(platform_name))

    if ctx.attrs.cxx_tools != None:
        tools = _path_tools(ctx)
    else:
        # An explicit `-target` makes zig treat the build as a cross-compile
        # and stop searching host library paths, which breaks anything linking
        # a system library -- and plenty here still does (GHC's boot packages
        # want libgmp). So native stays native, and only a genuine cross build
        # gets a triple.
        if (target.os, target.cpu) == (exec_.os, exec_.cpu):
            triple = _NATIVE
        else:
            triple = ctx.attrs.target
            if not triple:
                key = (target.os.value, target.cpu)
                if key not in _ZIG_TARGETS:
                    fail("hermetic_zig_toolchain: no zig target triple for {}; add one to _ZIG_TARGETS or set `target`".format(key))
                triple = _ZIG_TARGETS[key]
        tools = _zig_tools(ctx, triple)

    linker_type = LinkerType("darwin") if target.os == Os("macos") else LinkerType("gnu")

    # `cxx_toolchain_infos()` yields the toolchain, placeholder and platform
    # providers, but no DefaultInfo, which every rule must return.
    return [DefaultInfo()] + cxx_toolchain_infos(
        platform_name = platform_name,
        internal_tools = ctx.attrs.internal_tools[CxxInternalTools],
        linker_info = LinkerInfo(
            # No `-fuse-ld=lld`: zig always links with its own linker, and the
            # darwin branch is Apple's clang driving ld64.
            linker = tools.linker,
            linker_flags = ctx.attrs.link_flags,
            post_linker_flags = ctx.attrs.post_link_flags,
            archiver = tools.archiver,
            archiver_type = tools.archiver_type,
            archiver_supports_argfiles = tools.archiver_supports_argfiles,
            generate_linker_maps = False,
            lto_mode = LtoMode("none"),
            type = linker_type,
            link_binaries_locally = True,
            link_libraries_locally = True,
            archive_objects_locally = True,
            use_archiver_flags = True,
            static_dep_runtime_ld_flags = [],
            static_pic_dep_runtime_ld_flags = [],
            shared_dep_runtime_ld_flags = [],
            independent_shlib_interface_linker_flags = [],
            shlib_interfaces = ShlibInterfacesMode("disabled"),
            link_style = LinkStyle(ctx.attrs.link_style),
            link_weight = 1,
            binary_extension = "",
            object_file_extension = "o",
            shared_library_name_default_prefix = "lib",
            # Derived the way `prelude//cxx:cxx_toolchain.bzl` derives them, so
            # they cannot drift from the linker type: `{}.dylib`/`{}.{}.dylib`
            # on darwin, `{}.so`/`{}.so.{}` on Linux. Hardcoding `.so` (as both
            # the prelude's `system_cxx_toolchain` and its zig rule do) is
            # simply wrong on macOS.
            shared_library_name_format = "{}." + LINKERS[linker_type].default_shared_library_extension,
            shared_library_versioned_name_format = "{}." + LINKERS[linker_type].default_shared_library_versioned_extension_format,
            static_library_extension = "a",
            force_full_hybrid_if_capable = False,
            is_pdb_generated = False,
            link_ordering = ctx.attrs.link_ordering,
        ),
        binary_utilities_info = BinaryUtilitiesInfo(
            # zig ships none of `nm`, `objdump` or `strip`, so those stay bare
            # PATH names -- as they were before any of this was hermetic.
            # Nothing here reaches them today: `shlib_interfaces` is disabled
            # and no target sets a strip style.
            nm = RunInfo(args = ["nm"]),
            objcopy = tools.objcopy,
            objdump = RunInfo(args = ["objdump"]),
            ranlib = tools.ranlib,
            strip = RunInfo(args = ["strip"]),
            dwp = None,
            bolt_msdk = None,
        ),
        cxx_compiler_info = CxxCompilerInfo(
            compiler = tools.cxx_compiler,
            preprocessor_flags = [],
            compiler_flags = ctx.attrs.cxx_flags,
            compiler_type = "clang",
            supports_content_based_paths = ctx.attrs.supports_content_based_paths,
        ),
        c_compiler_info = CCompilerInfo(
            compiler = tools.c_compiler,
            preprocessor_flags = [],
            compiler_flags = ctx.attrs.c_flags,
            compiler_type = "clang",
            supports_content_based_paths = ctx.attrs.supports_content_based_paths,
        ),
        # Unlike the prelude's rule, these must spell out their empty flag lists:
        # `cxx_toolchain_infos()` shell-quotes them into `$(asflags)` and friends
        # for cxx_genrule, and a None there is a type error rather than a default.
        as_compiler_info = CCompilerInfo(
            compiler = tools.c_compiler,
            preprocessor_flags = [],
            compiler_flags = [],
            compiler_type = "clang",
            supports_content_based_paths = ctx.attrs.supports_content_based_paths,
        ),
        asm_compiler_info = CCompilerInfo(
            compiler = tools.c_compiler,
            preprocessor_flags = [],
            compiler_flags = [],
            compiler_type = "clang",
        ),
        header_mode = HeaderMode("symlink_tree_only"),
        # Both branches are clang: `zig cc` is one, and the darwin fallback is
        # Apple's.
        cpp_dep_tracking_mode = DepTrackingMode("show_headers"),
        pic_behavior = PicBehavior("always_enabled") if target.os == Os("macos") else PicBehavior("supported"),
        use_dep_files = True,
    )

_hermetic_zig_toolchain = rule(
    impl = _hermetic_zig_toolchain_impl,
    is_toolchain_rule = True,
    attrs = {
        "c_flags": attrs.list(attrs.arg(), default = []),
        # Set instead of `zig` on the platforms zig cannot link; see the header.
        "cxx_tools": attrs.option(attrs.exec_dep(providers = [CxxToolsInfo]), default = None),
        "cxx_flags": attrs.list(attrs.arg(), default = []),
        "internal_tools": attrs.default_only(attrs.exec_dep(providers = [CxxInternalTools], default = "prelude//cxx/tools:internal_tools")),
        "link_flags": attrs.list(attrs.arg(), default = []),
        "link_ordering": attrs.option(attrs.enum(LinkOrdering.values()), default = None),
        "link_style": attrs.string(default = "shared"),
        "post_link_flags": attrs.list(attrs.arg(), default = []),
        "supports_content_based_paths": attrs.bool(default = False),
        # Overrides `_ZIG_TARGETS` for cross builds, so an odd triple (a
        # different glibc, a musl target) needs no edit here.
        "target": attrs.option(attrs.string(), default = None),
        "wrapper": attrs.default_only(attrs.exec_dep(providers = [RunInfo], default = "toolchains//:zig_wrapper")),
        # `exec_dep`: zig runs during the build, so we want the execution
        # platform's copy, and `-target` covers what it builds *for*. That is
        # what makes a macOS host able to cross-compile for Linux even though
        # its own target uses `cxx_tools`.
        "zig": attrs.option(attrs.exec_dep(providers = [RunInfo, _ZigInfo]), default = None),
        "_exec_os_type": buck.exec_os_type_arg(),
        "_target_os_type": buck.target_os_type_arg(),
    },
)

def hermetic_zig_toolchain(
        name,
        version,
        sha256s,
        visibility = ["PUBLIC"],
        **kwargs):
    """Download and configure a C/C++/Objective-C toolchain.

    `zig cc` for every target except macOS, which stays on PATH clang; see the
    header for why.

    Args:
        name: In practice "cxx"; the prelude hardcodes `toolchains//:cxx`.
        version: zig version string, e.g. "0.16.0".
        sha256s: zig platform key -> sha256, one per *execution* platform, e.g.
             {"aarch64-macos": "...", "x86_64-linux": "..."}. macOS belongs
             here even though nothing targets macOS through zig: it is what a
             macOS host cross-compiles for Linux with. Hashes come from
             `https://ziglang.org/download/index.json`, whose keys these are;
             `update_hermetic_toolchain.py zig` fills them in.
        visibility: Visibility for the generated targets.
        **kwargs: Forwarded to the toolchain rule (c_flags, link_flags, target).
    """
    os_cpu = {}  # os_key -> {cpu_key -> platform}
    dists = {}  # platform -> archive label

    for platform, checksum in sha256s.items():
        if platform not in _PLATFORMS:
            fail("hermetic_zig_toolchain: unknown platform '{}'. Known: {}".format(
                platform,
                sorted(_PLATFORMS),
            ))

        os_key, cpu_key = _PLATFORMS[platform]
        if os_key not in os_cpu:
            os_cpu[os_key] = {}
        if cpu_key in os_cpu[os_key]:
            fail("hermetic_zig_toolchain: '{}' and '{}' both build for {} {}; pick one".format(
                os_cpu[os_key][cpu_key],
                platform,
                os_key,
                cpu_key,
            ))
        os_cpu[os_key][cpu_key] = platform

        archive = "{}__archive_{}".format(name, platform)
        contents = "zig-{}-{}".format(platform, version)

        native.http_archive(
            name = archive,
            sha256 = checksum,
            strip_prefix = contents,
            type = "tar.xz",
            urls = ["{}/{}/{}.tar.xz".format(_BASE_URL, version, contents)],
            # Runs on one platform; without this a `toolchains//...` build
            # fetches every one of them.
            target_compatible_with = [os_key, cpu_key],
            visibility = visibility,
        )

        dists[platform] = ":{}".format(archive)

    dist = "{}__zig".format(name)
    _hermetic_zig(
        name = dist,
        dist = _by_platform(os_cpu, dists),
        visibility = visibility,
    )

    # These two selects are each other's complement: exactly one tool set per
    # target OS. They resolve in the target configuration, which is what we
    # want -- a macOS host building for Linux gets zig, and zig's own `-target`
    # then covers the difference.
    _hermetic_zig_toolchain(
        name = name,
        zig = select({
            "DEFAULT": ":{}".format(dist),
            "config//os:macos": None,
        }),
        cxx_tools = select({
            "DEFAULT": None,
            "config//os:macos": "prelude//toolchains/cxx/clang:path_clang_tools",
        }),
        visibility = visibility,
        **kwargs
    )
