load("@prelude//go_bootstrap:go_bootstrap.bzl", "GoBootstrapDistrInfo", "GoBootstrapToolchainInfo")
load("@prelude//toolchains/go:go_toolchain.bzl", "go_distr", "go_toolchain")

_OS_CONSTRAINT_KEYS = {
    "darwin": "config//os:macos",
    "linux": "config//os:linux",
    "windows": "config//os:windows",
}

_ARCH_CONSTRAINT_KEYS = {
    "amd64": "config//cpu:x86_64",
    "arm64": "config//cpu:arm64",
}

_OS_ARCHIVE_EXT = {
    "darwin": "tar.gz",
    "linux": "tar.gz",
    "windows": "zip",
}

def hermetic_go_toolchain(
        name,
        version,
        sha256,
        bootstrap_name = None,
        visibility = ["PUBLIC"],
        **kwargs):
    """Download and configure a hermetic Go toolchain.

    Args:
        name: Target name for the resulting go_toolchain rule.
        version: Go version string, e.g. "1.23.4".
        bootstrap_name: If set, emit a hermetic `go_bootstrap_toolchain` of
                that name from the same archives.
        sha256: Dict of "goos-goarch" -> sha256, covering the exec platforms you
                want to support, e.g.:
                    {
                        "darwin-arm64": "...",
                        "linux-amd64":  "...",
                    }
        visibility: Visibility for the go_toolchain target.
        **kwargs: Forwarded to go_toolchain (e.g. build_tags, race, asan).
    """
    os_arch_root = {}   # os_constraint_key -> {arch_constraint_key -> archive_label}
    os_arch_tuple = {}  # os_constraint_key -> {arch_constraint_key -> (go_os, go_arch)}
    arch_to_goarch = {}
    os_to_goos = {}

    for platform_key, checksum in sha256.items():
        parts = platform_key.split("-")
        if len(parts) != 2:
            fail("sha256 key '{}' must be in 'goos-goarch' form".format(platform_key))
        go_os, go_arch = parts[0], parts[1]

        if go_os not in _OS_CONSTRAINT_KEYS:
            fail("Unknown GOOS '{}'. Supported: {}".format(go_os, list(_OS_CONSTRAINT_KEYS.keys())))
        if go_arch not in _ARCH_CONSTRAINT_KEYS:
            fail("Unknown GOARCH '{}'. Supported: {}".format(go_arch, list(_ARCH_CONSTRAINT_KEYS.keys())))

        os_key = _OS_CONSTRAINT_KEYS[go_os]
        arch_key = _ARCH_CONSTRAINT_KEYS[go_arch]

        native.http_archive(
            name = "{}__archive_{}_{}".format(name, go_os, go_arch),
            sha256 = checksum,
            strip_prefix = "go",
            urls = ["https://dl.google.com/go/go{}.{}-{}.{}".format(version, go_os, go_arch, _OS_ARCHIVE_EXT[go_os])],
        )

        if os_key not in os_arch_root:
            os_arch_root[os_key] = {}
            os_arch_tuple[os_key] = {}
        os_arch_root[os_key][arch_key] = ":{}__archive_{}_{}".format(name, go_os, go_arch)
        os_arch_tuple[os_key][arch_key] = (go_os, go_arch)
        arch_to_goarch[arch_key] = go_arch
        os_to_goos[os_key] = go_os

    # Nested selects: outer on OS, inner on arch — matches exec-platform resolution.
    outer_root = {}
    outer_tuple = {}
    for os_key in os_arch_root:
        outer_root[os_key] = select(os_arch_root[os_key])
        outer_tuple[os_key] = select(os_arch_tuple[os_key])

    go_distr(
        name = "{}__distr".format(name),
        version = version,
        go_root = select(outer_root),
        go_os_arch = select(outer_tuple),
    )

    go_toolchain(
        name = name,
        go_distr = ":{}__distr".format(name),
        env_go_os = kwargs.pop("env_go_os", select(os_to_goos)),
        env_go_arch = kwargs.pop("env_go_arch", select(arch_to_goarch)),
        visibility = visibility,
        **kwargs
    )

    # Hermetic bootstrap toolchain for `go_bootstrap_binary` (prelude helpers,
    # `pkg_analyzer`).  Uses the same archives so Go is available on remote
    # workers and resolves against the execution platform, not the host.
    if bootstrap_name:
        _hermetic_go_bootstrap_distr(
            name = "{}__bootstrap_distr".format(name),
            go_root = select(outer_root),
            go_os_arch = select(outer_tuple),
        )

        _hermetic_go_bootstrap_toolchain(
            name = bootstrap_name,
            go_bootstrap_distr = ":{}__bootstrap_distr".format(name),
            visibility = visibility,
        )

# Carries GOOS/GOARCH alongside the distribution so the bootstrap toolchain
# can read them from an `exec_dep` (resolved against the execution platform)
# instead of a `select()` (resolved against the target configuration).
_GoBootstrapPlatformInfo = provider(
    fields = {
        "go_arch": provider_field(str),
        "go_os": provider_field(str),
    },
)

def _hermetic_go_bootstrap_distr_impl(ctx: AnalysisContext) -> list[Provider]:
    go_os, go_arch = ctx.attrs.go_os_arch
    return [
        DefaultInfo(),
        GoBootstrapDistrInfo(
            bin_go = RunInfo(ctx.attrs.go_root.project("bin/go")),
            go_root = ctx.attrs.go_root,
        ),
        _GoBootstrapPlatformInfo(go_os = go_os, go_arch = go_arch),
    ]

_hermetic_go_bootstrap_distr = rule(
    impl = _hermetic_go_bootstrap_distr_impl,
    attrs = {
        "go_os_arch": attrs.tuple(attrs.string(), attrs.string()),
        "go_root": attrs.source(allow_directory = True),
    },
)

def _hermetic_go_bootstrap_toolchain_impl(ctx: AnalysisContext) -> list[Provider]:
    distr = ctx.attrs.go_bootstrap_distr[GoBootstrapDistrInfo]
    platform = ctx.attrs.go_bootstrap_distr[_GoBootstrapPlatformInfo]

    return [
        DefaultInfo(),
        GoBootstrapToolchainInfo(
            env_go_arch = platform.go_arch,
            env_go_os = platform.go_os,
            env_go_root = distr.go_root,
            go = distr.bin_go,
            go_wrapper = ctx.attrs.go_wrapper[RunInfo],
        ),
    ]

_hermetic_go_bootstrap_toolchain = rule(
    impl = _hermetic_go_bootstrap_toolchain_impl,
    is_toolchain_rule = True,
    attrs = {
        "go_bootstrap_distr": attrs.exec_dep(providers = [GoBootstrapDistrInfo, _GoBootstrapPlatformInfo]),
        "go_wrapper": attrs.exec_dep(providers = [RunInfo], default = "prelude//go_bootstrap/tools:go_wrapper_py"),
    },
)
