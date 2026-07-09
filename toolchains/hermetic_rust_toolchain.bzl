load("@prelude//rust:rust_toolchain.bzl", "PanicRuntime", "RustToolchainInfo")

_TRIPLE_OS_KEY = {
    "aarch64-apple-darwin": "config//os:macos",
    "x86_64-apple-darwin": "config//os:macos",
    "aarch64-unknown-linux-gnu": "config//os:linux",
    "x86_64-unknown-linux-gnu": "config//os:linux",
    "x86_64-unknown-linux-musl": "config//os:linux",
}

_TRIPLE_CPU_KEY = {
    "aarch64-apple-darwin": "config//cpu:arm64",
    "x86_64-apple-darwin": "config//cpu:x86_64",
    "aarch64-unknown-linux-gnu": "config//cpu:arm64",
    "x86_64-unknown-linux-gnu": "config//cpu:x86_64",
    "x86_64-unknown-linux-musl": "config//cpu:x86_64",
}

RustDistInfo = provider(
    fields = {
        "compiler": provider_field(RunInfo),
        "clippy_driver": provider_field(RunInfo),
        "rustdoc": provider_field(RunInfo),
        "triple": provider_field(str),
    },
)

def _hermetic_rust_dist_impl(ctx: AnalysisContext) -> list[Provider]:
    version = ctx.attrs.version
    triple = ctx.attrs.triple

    filename = "rust-{}-{}.tar.xz".format(version, triple)
    archive = ctx.actions.declare_output(filename)
    ctx.actions.download_file(
        archive.as_output(),
        "https://static.rust-lang.org/dist/{}".format(filename),
        sha256 = ctx.attrs.sha256,
    )

    staging = ctx.actions.declare_output("dist_staging", dir = True)
    extract_script = ctx.actions.write(
        "extract_rust.sh",
        "#!/bin/sh\nset -e\nmkdir -p \"$1\"\ntar xJf \"$2\" --strip-components=1 -C \"$1\"\n",
        is_executable = True,
    )
    ctx.actions.run(
        cmd_args(["sh", extract_script, staging.as_output(), archive]),
        category = "rust_extract",
        identifier = triple,
        local_only = True,
    )

    # run install.sh to merge all components (rustc, rust-std, cargo, clippy, …) into one sysroot
    sysroot = ctx.actions.declare_output("sysroot", dir = True)
    install_script = ctx.actions.write(
        "install_rust.sh",
        '#!/bin/sh\nset -e\nsh "$1/install.sh" --prefix="$2" --disable-ldconfig\n',
        is_executable = True,
    )
    ctx.actions.run(
        cmd_args(["sh", install_script, staging, sysroot.as_output()]),
        category = "rust_install",
        identifier = triple,
        local_only = True,
    )

    return [
        DefaultInfo(default_output = sysroot),
        RustDistInfo(
            compiler = RunInfo(args = [sysroot.project("bin/rustc")]),
            clippy_driver = RunInfo(args = [sysroot.project("bin/clippy-driver")]),
            rustdoc = RunInfo(args = [sysroot.project("bin/rustdoc")]),
            triple = triple,
        ),
    ]

_hermetic_rust_dist = rule(
    impl = _hermetic_rust_dist_impl,
    attrs = {
        "sha256": attrs.string(),
        "triple": attrs.string(),
        "version": attrs.string(),
    },
)

def _hermetic_rust_toolchain_impl(ctx: AnalysisContext) -> list[Provider]:
    dist = ctx.attrs.rust_dist[RustDistInfo]
    return [
        DefaultInfo(),
        RustToolchainInfo(
            allow_lints = ctx.attrs.allow_lints,
            clippy_driver = dist.clippy_driver,
            clippy_toml = ctx.attrs.clippy_toml[DefaultInfo].default_outputs[0] if ctx.attrs.clippy_toml else None,
            compiler = dist.compiler,
            default_edition = ctx.attrs.default_edition,
            deny_lints = ctx.attrs.deny_lints,
            doctests = ctx.attrs.doctests,
            nightly_features = ctx.attrs.nightly_features,
            panic_runtime = PanicRuntime("unwind"),
            report_unused_deps = ctx.attrs.report_unused_deps,
            rustc_binary_flags = ctx.attrs.rustc_binary_flags,
            rustc_flags = ctx.attrs.rustc_flags,
            rustc_target_triple = dist.triple,
            rustc_test_flags = ctx.attrs.rustc_test_flags,
            rustdoc = dist.rustdoc,
            rustdoc_flags = ctx.attrs.rustdoc_flags,
            warn_lints = ctx.attrs.warn_lints,
        ),
    ]

_hermetic_rust_toolchain = rule(
    impl = _hermetic_rust_toolchain_impl,
    is_toolchain_rule = True,
    attrs = {
        "allow_lints": attrs.list(attrs.string(), default = []),
        "clippy_toml": attrs.option(attrs.dep(providers = [DefaultInfo]), default = None),
        "default_edition": attrs.option(attrs.string(), default = None),
        "deny_lints": attrs.list(attrs.string(), default = []),
        "doctests": attrs.bool(default = False),
        "nightly_features": attrs.bool(default = False),
        "report_unused_deps": attrs.bool(default = False),
        "rustc_binary_flags": attrs.list(attrs.arg(), default = []),
        "rustc_flags": attrs.list(attrs.arg(), default = []),
        "rustc_test_flags": attrs.list(attrs.arg(), default = []),
        "rustdoc_flags": attrs.list(attrs.arg(), default = []),
        "rust_dist": attrs.exec_dep(providers = [RustDistInfo]),
        "warn_lints": attrs.list(attrs.string(), default = []),
    },
)

def hermetic_rust_toolchain(
        name,
        version,
        sha256s,
        visibility = ["PUBLIC"],
        **kwargs):
    """Download and configure a hermetic Rust toolchain.

    Args:
        name: Target name for the resulting toolchain rule.
        version: Rust version string, e.g. "1.82.0".
        sha256s: Dict of triple -> sha256 for each exec platform to support, e.g.:
                     {
                         "aarch64-apple-darwin":    "...",
                         "x86_64-unknown-linux-gnu": "...",
                     }
                 SHA256s are published alongside each release at
                 https://static.rust-lang.org/dist/rust-VERSION-TRIPLE.tar.xz.sha256
        visibility: Visibility for the resulting toolchain target.
        **kwargs: Forwarded to the toolchain rule (e.g. default_edition, rustc_flags).
    """
    os_cpu_dist = {}  # os_key -> {cpu_key -> dist_label}

    for triple, checksum in sha256s.items():
        if triple not in _TRIPLE_OS_KEY:
            fail("hermetic_rust_toolchain: unknown triple '{}'. Known: {}".format(
                triple,
                list(_TRIPLE_OS_KEY.keys()),
            ))

        os_key = _TRIPLE_OS_KEY[triple]
        cpu_key = _TRIPLE_CPU_KEY[triple]
        dist_name = "{}__dist_{}".format(name, triple)

        _hermetic_rust_dist(
            name = dist_name,
            version = version,
            triple = triple,
            sha256 = checksum,
        )

        if os_key not in os_cpu_dist:
            os_cpu_dist[os_key] = {}
        os_cpu_dist[os_key][cpu_key] = ":{}".format(dist_name)

    outer = {}
    for os_key in os_cpu_dist:
        outer[os_key] = select(os_cpu_dist[os_key])

    _hermetic_rust_toolchain(
        name = name,
        rust_dist = select(outer),
        visibility = visibility,
        **kwargs
    )
