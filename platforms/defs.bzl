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

# cgo needs a C compiler that targets the *target* platform, and the only C
# compiler we have is the host's (`toolchains//:cxx` runs whatever clang is on
# the PATH).  So cgo is available exactly when we are not cross compiling.
# Pinning the prelude's constraint off for the cross platforms is what stops
# `go_stdlib` from feeding `crypto/internal/sysrand`'s `<sys/prctl.h>` to
# Xcode's clang.  Building anything that genuinely needs cgo for another
# platform will need a real cross toolchain first, at which point this comes
# off the platform and onto whatever describes that toolchain's reach.
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

# RE workers advertise an OSFamily property; this is the spelling BuildBarn and
# NativeLink both expect.
_RE_OS_FAMILY = {
    "linux": "Linux",
    "macos": "Darwin",
}

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

    executor = {
        "local_enabled": True,
        "remote_enabled": remote,
        # We build on macOS and Linux only.
        "use_windows_path_separators": False,
    }

    if cached:
        executor["remote_cache_enabled"] = True
        executor["remote_dep_file_cache_enabled"] = True
        executor["allow_cache_uploads"] = read_root_config("buck2_re_client", "cache_upload", "false") == "true"
        # How output paths are described to the executor.  "strict" is what the
        # REAPI itself specifies; the alternative exists for Meta-internal
        # reasons and is not something we will ever want.
        executor["remote_output_paths"] = "strict"

    if remote:
        executor["remote_execution_use_case"] = "buck2-default"
        executor["remote_execution_properties"] = {
            "OSFamily": _RE_OS_FAMILY[ctx.attrs.os],
        }
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
        ExecutionPlatformRegistrationInfo(
            platforms = [platform],
            exec_marker_constraint = get_exec_platform_marker(),
        ),
    ]

_execution_platform = rule(
    impl = _execution_platform_impl,
    attrs = {
        "cpu_configuration": attrs.dep(providers = [ConfigurationInfo]),
        "mode": attrs.enum(ExecutorMode.values()),
        "os": attrs.enum(_RE_OS_FAMILY.keys()),
        "os_configuration": attrs.dep(providers = [ConfigurationInfo]),
    },
)

def execution_platforms():
    """Execution platforms for the host, and `:exec` naming the chosen one.

    Only the host is described.  Buck2 registers exactly the platforms listed
    in the `ExecutionPlatformRegistrationInfo` that `[build] execution_platforms`
    resolves to, and every one of those is somewhere an action might actually be
    dispatched -- so a linux worker only belongs here once there is a real
    remote executor behind it.  Cross compilation does not need one: a linux
    target is built by host-run actions with GOOS set, which is exactly the
    exec-platform-differs-from-target-platform case buck2 is built around.
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
            os = os,
            mode = mode,
            visibility = ["PUBLIC"],
        )

    # No RE endpoint is configured yet, so "local" is the only mode that works
    # out of the box; the other two are here so that pointing at NativeLink is
    # a `.buckconfig` edit rather than a rewrite of this file.
    native.alias(
        name = "exec",
        actual = ":{}-{}".format(host, read_choice(
            "buck2_re_client",
            "default_mode",
            ExecutorMode.values(),
            default = ExecutorMode("local").value,
        )),
        visibility = ["PUBLIC"],
    )
