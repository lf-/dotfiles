# Buck2 uses the word "platform" for two different things, and the whole point
# of this file is to keep them apart:
#
#   * a *target* platform says what an artifact is built **for**.  Its
#     constraints are what `select()` resolves against and what
#     `target_compatible_with` is checked against.
#   * an *execution* platform says where an action may **run**, and how --
#     locally, against a remote cache, or on a remote executor.
#
# `prelude//platforms:default` collapses the two into one target pinned to the
# host, which is why it cannot cross compile: there is no way to *name*
# "linux/arm64" as a thing to build for.  Here the two are kept apart:
# `:default` and its siblings are target platforms, `:exec` is the execution
# platform, and `.buckconfig` points each setting at the right one.

load("@prelude//cfg/exec_platform:marker.bzl", "get_exec_platform_marker")
load("@prelude//utils:buckconfig.bzl", "read_choice")

# Every (cpu, os) we are prepared to build for.  A pair only belongs here once
# every toolchain can actually target it -- see `toolchains//:go` and
# `toolchains//:rust`, whose per-platform distributions have to line up.
#
# The names are the prelude's, so that a platform name and the constraint
# labels underneath it never have to be translated: "arm64", not the "aarch64"
# the rest of the world's target triples use.
SUPPORTED_PLATFORMS = [
    ("arm64", "macos"),
    ("arm64", "linux"),
    ("x86_64", "linux"),
]

def _platform_name(cpu, os):
    return "{}-{}".format(cpu, os)

def _host_platform():
    arch = host_info().arch
    if arch.is_aarch64:
        cpu = "arm64"
    elif arch.is_x86_64:
        cpu = "x86_64"
    else:
        fail("unsupported host CPU; teach //platforms about it first")

    host_os = host_info().os
    if host_os.is_macos:
        os = "macos"
    elif host_os.is_linux:
        os = "linux"
    else:
        fail("unsupported host OS; teach //platforms about it first")

    if (cpu, os) not in SUPPORTED_PLATFORMS:
        fail("host is {}, which is not in SUPPORTED_PLATFORMS".format(_platform_name(cpu, os)))
    return (cpu, os)

HOST_PLATFORM = _host_platform()

# cgo needs a C compiler targeting the target platform; the only one we have
# is the host's (`toolchains//:cxx`).  Disabling cgo for cross platforms
# prevents `go_stdlib` from feeding Linux headers to Xcode's clang.
_CGO_DISABLED = "prelude//go/constraints:cgo_enabled[false]"

def target_platforms():
    """One `platform()` per supported (cpu, os), plus `:default` for the host.

    `:default` is what `[parser] target_platform_detector_spec` names, so it is
    the configuration everything gets built in unless something -- a
    `configured_alias`, or `--target-platforms` on the command line -- asks for
    another.  It is an `alias` rather than a platform of its own so that the
    host build and an explicit `//platforms:arm64-macos` build share one
    configuration instead of analysing every target twice.
    """
    for (cpu, os) in SUPPORTED_PLATFORMS:
        cross_compiled = (cpu, os) != HOST_PLATFORM
        native.platform(
            name = _platform_name(cpu, os),
            constraint_values = [
                "prelude//cpu/constraints:{}".format(cpu),
                "prelude//os/constraints:{}".format(os),
            ] + ([_CGO_DISABLED] if cross_compiled else []),
            visibility = ["PUBLIC"],
        )

    native.alias(
        name = "default",
        actual = ":{}".format(_platform_name(*HOST_PLATFORM)),
        visibility = ["PUBLIC"],
    )

# RE worker dispatch properties.  Spellings are BuildBuddy's
# (https://buildbuddy.io/docs/rbe-platforms).
_RE_OS_FAMILY = {
    "linux": "linux",
    "macos": "darwin",
}

_RE_ARCH = {
    "arm64": "arm64",
    "x86_64": "amd64",
}

# Image for Linux actions.  buildpack-deps provides the shell tools
# (`unzip`, `xz`) that `http_archive` needs; our Go/Rust/Python toolchains
# are hermetic.  Pulled via gcr.io's Hub mirror to dodge rate limits.
# Does not include clang -- Linux C compiles need a cross toolchain.
_DEFAULT_CONTAINER_IMAGE = "docker://mirror.gcr.io/library/buildpack-deps:bookworm"

# Remotely available (cpu, os) pairs, preference order.  x86_64 first so
# unconstrained actions land there by default.
REMOTE_EXEC_PLATFORMS = [
    ("x86_64", "linux"),
    ("arm64", "linux"),
]

# How much of the remote execution stack an execution platform uses.  The modes
# are cumulative -- "remote" implies the cache, because under REAPI the executor
# and the CAS are the same server -- so one ordered choice says all of it, and
# "remote but no cache" is not a state that can be spelled.
ExecutorMode = enum("local", "cached", "remote")

def _execution_platform_impl(ctx: AnalysisContext) -> list[Provider]:
    constraints = dict()
    constraints.update(ctx.attrs.cpu_configuration[ConfigurationInfo].constraints)
    constraints.update(ctx.attrs.os_configuration[ConfigurationInfo].constraints)
    cfg = ConfigurationInfo(constraints = constraints, values = {})

    mode = ExecutorMode(ctx.attrs.mode)
    remote = mode == ExecutorMode("remote")
    cached = mode != ExecutorMode("local")

    # Only enable local execution when this platform matches the host.
    local = (ctx.attrs.cpu, ctx.attrs.os) == HOST_PLATFORM

    executor = {
        "local_enabled": local,
        "remote_enabled": remote,
        # We build on macOS and Linux only.
        "use_windows_path_separators": False,
    }

    if cached:
        # Properties are part of the action digest, so they must be set even in
        # cache-only mode -- otherwise a macOS cache hit could serve a Linux
        # worker.
        executor["remote_execution_properties"] = _re_properties(ctx.attrs.cpu, ctx.attrs.os)
        executor["remote_cache_enabled"] = True
        executor["remote_dep_file_cache_enabled"] = True

        # Per-action upload for rules that opt in (genrule, rust, cxx).
        # Do NOT use `[buck2] default_allow_cache_upload` or
        # `BUCK2_TEST_FORCE_CACHE_UPLOAD` -- blanket upload corrupts Python
        # outputs.  Also: `toolchains//:cxx` resolves clang from PATH, so
        # cxx cache entries are only valid across identical host toolchains.
        executor["allow_cache_uploads"] = read_root_config("buck2_re_client", "cache_upload", "true") == "true"

        # "strict" is what REAPI specifies; the alternative is Meta-internal.
        executor["remote_output_paths"] = "strict"

    if remote:
        executor["remote_execution_use_case"] = "buck2-default"

        # Without this the hybrid executor races local against remote for every
        # action, which is the right default once RE is fast and close by.
        force_remote = read_root_config("buck2_re_client", "force_remote", "false") == "true"
        executor["use_limited_hybrid"] = force_remote
        executor["allow_limited_hybrid_fallbacks"] = read_root_config("buck2_re_client", "allow_local_fallback", "false") == "true"

    platform = ExecutionPlatformInfo(
        label = ctx.label.raw_target(),
        configuration = cfg,
        executor_config = CommandExecutorConfig(**executor),
    )

    return [
        DefaultInfo(),
        platform,
        PlatformInfo(label = str(ctx.label.raw_target()), configuration = cfg),
    ]

def _re_properties(cpu: str, os: str) -> dict[str, str]:
    """What a worker has to be for an action of this (cpu, os) to run on it."""
    properties = {
        "Arch": _RE_ARCH[cpu],
        "OSFamily": _RE_OS_FAMILY[os],
    }

    # Only Linux workers run in a container.
    if os == "linux":
        properties["container-image"] = read_root_config(
            "buck2_re_client",
            "container_image",
            _DEFAULT_CONTAINER_IMAGE,
        )

    return properties

def remote_test_execution_profiles():
    """Test execution profiles for `remote_test_execution_toolchain`.

    Without profiles, tests always run locally -- even cross-compiled ones,
    which just fails.  These select by target configuration so a Linux test
    binary runs on a Linux worker.
    """
    profiles = {}
    by_cpu = {}
    for (cpu, os) in REMOTE_EXEC_PLATFORMS:
        name = _platform_name(cpu, os)
        profiles[name] = {
            "capabilities": _re_properties(cpu, os),
            "use_case": "buck2-default",
        }
        by_cpu["prelude//cpu/constraints:{}".format(cpu)] = name

    return struct(
        profiles = profiles,
        default_profile = select({
            "DEFAULT": None,
            "prelude//os/constraints:linux": select(by_cpu),
        }),
    )

_execution_platform = rule(
    impl = _execution_platform_impl,
    attrs = {
        "cpu": attrs.enum(_RE_ARCH.keys()),
        "cpu_configuration": attrs.dep(providers = [ConfigurationInfo]),
        "mode": attrs.enum(ExecutorMode.values()),
        "os": attrs.enum(_RE_OS_FAMILY.keys()),
        "os_configuration": attrs.dep(providers = [ConfigurationInfo]),
    },
)

def _execution_platforms_impl(ctx: AnalysisContext) -> list[Provider]:
    return [
        DefaultInfo(),
        ExecutionPlatformRegistrationInfo(
            platforms = [p[ExecutionPlatformInfo] for p in ctx.attrs.platforms],
            exec_marker_constraint = get_exec_platform_marker(),
        ),
    ]

# Ordered set of execution platforms; buck2 picks the first whose constraints
# satisfy the target's `exec_compatible_with`.
_execution_platforms = rule(
    impl = _execution_platforms_impl,
    attrs = {
        "platforms": attrs.list(attrs.dep(providers = [ExecutionPlatformInfo])),
    },
)

def execution_platforms():
    """Execution platform registration targets.

    - `:exec` -- host first, then remote workers.  Default for all builds.
    - `:exec-linux` -- remote Linux workers only.
    - `:exec-<cpu>-<os>` -- a single remote worker.

    Use `@platforms/<cpu>-<os>.mode` to target a specific remote platform.
    """
    cpu, os = HOST_PLATFORM
    host = _platform_name(cpu, os)

    for mode in ExecutorMode.values():
        _execution_platform(
            name = "{}-{}".format(host, mode),
            # `platform()` wants constraint values; a rule reading
            # `ConfigurationInfo` wants the `config_setting`s that wrap them.
            cpu_configuration = "prelude//cpu:{}".format(cpu),
            os_configuration = "prelude//os:{}".format(os),
            cpu = cpu,
            os = os,
            mode = mode,
            visibility = ["PUBLIC"],
        )

    remote = []
    for (re_cpu, re_os) in REMOTE_EXEC_PLATFORMS:
        name = "{}-remote".format(_platform_name(re_cpu, re_os))

        # Skip if the host already defined this platform.
        if name == "{}-remote".format(host):
            remote.append(":" + name)
            continue

        _execution_platform(
            name = name,
            cpu_configuration = "prelude//cpu:{}".format(re_cpu),
            os_configuration = "prelude//os:{}".format(re_os),
            cpu = re_cpu,
            os = re_os,
            mode = ExecutorMode("remote").value,
            visibility = ["PUBLIC"],
        )
        remote.append(":" + name)

    # "local" = no RE, "cached" = CAS only, "remote" = dispatch to workers.
    # On macOS, "remote" needs darwin executors (BuildBuddy's pool is Linux).
    mode = read_choice(
        "buck2_re_client",
        "default_mode",
        ExecutorMode.values(),
        default = ExecutorMode("local").value,
    )

    # In "local" mode, omit remote workers so constrained targets fail fast
    # instead of hanging on an unconfigured CAS.
    _execution_platforms(
        name = "exec",
        platforms = [":{}-{}".format(host, mode)] +
                    (remote if mode != ExecutorMode("local").value else []),
        visibility = ["PUBLIC"],
    )

    _execution_platforms(
        name = "exec-linux",
        platforms = remote,
        visibility = ["PUBLIC"],
    )

    # Single-worker registrations, for when you want a specific architecture.
    for (re_cpu, re_os) in REMOTE_EXEC_PLATFORMS:
        _execution_platforms(
            name = "exec-{}".format(_platform_name(re_cpu, re_os)),
            platforms = [":{}-remote".format(_platform_name(re_cpu, re_os))],
            visibility = ["PUBLIC"],
        )
