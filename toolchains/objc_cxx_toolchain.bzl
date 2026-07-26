# `prelude//toolchains:cxx.bzl`'s `system_cxx_toolchain`, but able to compile
# Objective-C.
#
# The prelude's version hand-rolls its `CxxToolchainInfo(...)` and so leaves
# `objc_compiler_info` unset, which makes any `.m` source fail analysis with
# "Could not find compiler for extension `.m`".  Going through the
# `cxx_toolchain_infos()` helper instead fills `objc_compiler_info` and
# `objcxx_compiler_info` in from the C and C++ compiler infos
# (see `prelude//cxx:cxx_toolchain_types.bzl`), which is exactly right for
# clang: the same driver compiles Objective-C, selected by file extension.
#
# We need this because `github.com/Code-Hex/vz/v3` -- matchlock's
# Virtualization.framework backend -- ships a dozen `.m` files.
#
# Unlike the prelude's rule this one is clang-only and does not carry the MSVC
# branch; we build darwin and linux.  Keeping the rest of the body a close copy
# of upstream is deliberate, so that a prelude bump can be diffed against it.

load(
    "@prelude//cxx:cxx_toolchain_types.bzl",
    "BinaryUtilitiesInfo",
    "CCompilerInfo",
    "CxxCompilerInfo",
    "CxxInternalTools",
    "DepTrackingMode",
    "LinkerInfo",
    "PicBehavior",
    "ShlibInterfacesMode",
    "cxx_toolchain_infos",
)
load("@prelude//cxx:headers.bzl", "HeaderMode")
load("@prelude//decls:common.bzl", "buck")
load("@prelude//linking:link_info.bzl", "LinkOrdering", "LinkStyle")
load("@prelude//linking:lto.bzl", "LtoMode")
load("@prelude//os_lookup:defs.bzl", "Os", "OsLookup")
load("@prelude//toolchains:cxx.bzl", "CxxToolsInfo")

def _run_info(args):
    return None if args == None else RunInfo(args = [args])

def _objc_cxx_toolchain_impl(ctx: AnalysisContext):
    os = ctx.attrs._target_os_type[OsLookup].os
    arch_name = ctx.attrs._target_os_type[OsLookup].cpu
    tools = ctx.attrs._cxx_tools_info[CxxToolsInfo]

    platform_name = os.value
    if arch_name:
        platform_name += "-" + arch_name

    # lld is not the default on linux clang installs, and is much faster.
    additional_linker_flags = ["-fuse-ld=lld"] if os == Os("linux") and tools.linker != "g++" and tools.cxx_compiler != "g++" else []

    if tools.compiler_type == "clang":
        cpp_dep_tracking_mode = DepTrackingMode("show_headers")
    elif tools.compiler_type == "gcc":
        cpp_dep_tracking_mode = DepTrackingMode("makefile")
    else:
        cpp_dep_tracking_mode = DepTrackingMode("none")

    # `cxx_toolchain_infos()` yields the toolchain, placeholder and platform
    # providers, but no DefaultInfo, which every rule must return.
    return [DefaultInfo()] + cxx_toolchain_infos(
        platform_name = platform_name,
        internal_tools = ctx.attrs.internal_tools[CxxInternalTools],
        linker_info = LinkerInfo(
            linker = _run_info(tools.linker),
            linker_flags = additional_linker_flags + ctx.attrs.link_flags,
            post_linker_flags = ctx.attrs.post_link_flags,
            archiver = _run_info(tools.archiver),
            archiver_type = tools.archiver_type,
            # `libtool` on macOS rejects @argfiles.
            archiver_supports_argfiles = os != Os("macos"),
            generate_linker_maps = False,
            lto_mode = LtoMode("none"),
            type = tools.linker_type,
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
            shared_library_name_format = "{}.so",
            shared_library_versioned_name_format = "{}.so.{}",
            static_library_extension = "a",
            force_full_hybrid_if_capable = False,
            is_pdb_generated = False,
            link_ordering = ctx.attrs.link_ordering,
        ),
        binary_utilities_info = BinaryUtilitiesInfo(
            nm = RunInfo(args = ["nm"]),
            objcopy = RunInfo(args = ["objcopy"]),
            objdump = RunInfo(args = ["objdump"]),
            ranlib = RunInfo(args = ["ranlib"]),
            strip = RunInfo(args = ["strip"]),
            dwp = None,
            bolt_msdk = None,
        ),
        cxx_compiler_info = CxxCompilerInfo(
            compiler = _run_info(tools.cxx_compiler),
            preprocessor_flags = [],
            compiler_flags = ctx.attrs.cxx_flags,
            compiler_type = tools.compiler_type,
            supports_content_based_paths = ctx.attrs.supports_content_based_paths,
        ),
        c_compiler_info = CCompilerInfo(
            compiler = _run_info(tools.compiler),
            preprocessor_flags = [],
            compiler_flags = ctx.attrs.c_flags,
            compiler_type = tools.compiler_type,
            supports_content_based_paths = ctx.attrs.supports_content_based_paths,
        ),
        # Unlike the prelude's rule, these must spell out their empty flag lists:
        # `cxx_toolchain_infos()` shell-quotes them into `$(asflags)` and friends
        # for cxx_genrule, and a None there is a type error rather than a default.
        as_compiler_info = CCompilerInfo(
            compiler = _run_info(tools.compiler),
            preprocessor_flags = [],
            compiler_flags = [],
            compiler_type = tools.compiler_type,
            supports_content_based_paths = ctx.attrs.supports_content_based_paths,
        ),
        asm_compiler_info = CCompilerInfo(
            compiler = _run_info(tools.asm_compiler),
            preprocessor_flags = [],
            compiler_flags = [],
            compiler_type = tools.asm_compiler_type,
        ),
        header_mode = HeaderMode("symlink_tree_only"),
        cpp_dep_tracking_mode = cpp_dep_tracking_mode,
        pic_behavior = PicBehavior("always_enabled") if os == Os("macos") else PicBehavior("supported"),
        use_dep_files = True,
    )

objc_cxx_toolchain = rule(
    impl = _objc_cxx_toolchain_impl,
    attrs = {
        "c_flags": attrs.list(attrs.arg(), default = []),
        "cxx_flags": attrs.list(attrs.arg(), default = []),
        "internal_tools": attrs.default_only(attrs.exec_dep(providers = [CxxInternalTools], default = "prelude//cxx/tools:internal_tools")),
        "link_flags": attrs.list(attrs.arg(), default = []),
        "link_ordering": attrs.option(attrs.enum(LinkOrdering.values()), default = None),
        "link_style": attrs.string(default = "shared"),
        "post_link_flags": attrs.list(attrs.arg(), default = []),
        "supports_content_based_paths": attrs.bool(default = False),
        "_cxx_tools_info": attrs.exec_dep(providers = [CxxToolsInfo], default = "prelude//toolchains/cxx/clang:path_clang_tools"),
        "_target_os_type": buck.target_os_type_arg(),
    },
    is_toolchain_rule = True,
)
