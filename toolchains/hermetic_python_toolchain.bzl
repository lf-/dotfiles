load("@prelude//toolchains:python.bzl", "python_bootstrap_toolchain")
load("@prelude//python:toolchain.bzl", "PythonToolchainInfo", "PythonPlatformInfo")

def python_toolchain_impl(ctx) -> list[Provider]:
    return [
        DefaultInfo(),
        PythonToolchainInfo(
            interpreter = ctx.attrs.interpreter[RunInfo],
            host_interpreter = ctx.attrs.interpreter[RunInfo],
            compile = ctx.attrs.compile[DefaultInfo].default_outputs[0],
            package_style = ctx.attrs.package_style,
            native_link_strategy = "separate",
            linker_flags = [],
            binary_linker_flags = [],
            extension_linker_flags = ctx.attrs.extension_linker_flags,
        ),
        PythonPlatformInfo(name = "bogus, nobody actually uses this"),
    ]


python_toolchain = rule(
    impl = python_toolchain_impl,
    attrs = {
        "compile": attrs.default_only(attrs.dep(default = "prelude//python/tools:compile.py")),
        "extension_linker_flags": attrs.list(attrs.arg()),
        "interpreter": attrs.dep(providers = [RunInfo]),
        "package_style": attrs.string(default = "inplace"),
    },
    is_toolchain_rule = True,
    doc = "Python toolchain from the prelude but with more configurability",
)

# python-build-standalone triples, mapped to the platform whose builds they run
# on. The `x86_64_vN` spellings are the same triple compiled for a higher
# microarchitecture level, so they share `config//cpu:x86_64`; only one of them
# may appear in a single toolchain.
_TRIPLE_PLATFORM = {
    "aarch64-apple-darwin": ("config//os:macos", "config//cpu:arm64"),
    "aarch64-pc-windows-msvc": ("config//os:windows", "config//cpu:arm64"),
    "aarch64-unknown-linux-gnu": ("config//os:linux", "config//cpu:arm64"),
    "x86_64-apple-darwin": ("config//os:macos", "config//cpu:x86_64"),
    "x86_64-pc-windows-msvc": ("config//os:windows", "config//cpu:x86_64"),
    "x86_64-unknown-linux-gnu": ("config//os:linux", "config//cpu:x86_64"),
    "x86_64_v2-unknown-linux-gnu": ("config//os:linux", "config//cpu:x86_64"),
    "x86_64_v3-unknown-linux-gnu": ("config//os:linux", "config//cpu:x86_64"),
    "x86_64_v4-unknown-linux-gnu": ("config//os:linux", "config//cpu:x86_64"),
}

_ARCHIVE_URL = "https://github.com/astral-sh/python-build-standalone/releases/download/{rev}/cpython-{version}+{rev}-{triple}-install_only_stripped.tar.gz"

def _by_platform(os_cpu, values):
    """Nested select (outer OS, inner CPU) over a triple -> value mapping."""
    outer = {}
    for os_key, cpus in os_cpu.items():
        outer[os_key] = select({cpu_key: values[triple] for cpu_key, triple in cpus.items()})
    return select(outer)

def hermetic_python_toolchain(
        name,
        version,
        rev,
        sha256s,
        bootstrap = True,
        visibility = ["PUBLIC"],
        **kwargs):
    """Download and configure a hermetic Python toolchain.

    A version-configurable rework of the prelude's `remote_python_toolchain`:
    same python-build-standalone interpreters, but the release is pinned here
    rather than in the prelude, and every generated target is named after
    `name` so several may coexist.

    Args:
        name: Target name for the resulting python_toolchain rule.
        version: CPython version string, e.g. "3.13.6".
        rev: python-build-standalone release tag, e.g. "20250807". Together with
             `version` this identifies one set of archives; a given CPython
             version is republished under several revs.
        sha256s: Dict of triple -> sha256 for each platform to support, e.g.:
                     {
                         "aarch64-apple-darwin":      "...",
                         "x86_64_v3-unknown-linux-gnu": "...",
                     }
                 SHA256s are published as the `SHA256SUMS` asset of each release at
                 https://github.com/astral-sh/python-build-standalone/releases
        bootstrap: Also emit a `{name}_bootstrap` toolchain using this interpreter.
        visibility: Visibility for the generated toolchain targets.
        **kwargs: Forwarded to python_toolchain.
    """
    version_parts = version.split(".")
    if len(version_parts) < 2:
        fail("hermetic_python_toolchain: version '{}' is not MAJOR.MINOR.PATCH".format(version))
    minor_version = "{}.{}".format(version_parts[0], version_parts[1])

    os_cpu = {}  # os_key -> {cpu_key -> triple}
    archives = {}  # triple -> archive label
    interpreters = {}  # triple -> interpreter label
    extension_linker_flags = {}  # triple -> flags for linking native extensions

    for triple, checksum in sha256s.items():
        if triple not in _TRIPLE_PLATFORM:
            fail("hermetic_python_toolchain: unknown triple '{}'. Known: {}".format(
                triple,
                sorted(_TRIPLE_PLATFORM),
            ))

        os_key, cpu_key = _TRIPLE_PLATFORM[triple]
        if os_key not in os_cpu:
            os_cpu[os_key] = {}
        if cpu_key in os_cpu[os_key]:
            fail("hermetic_python_toolchain: '{}' and '{}' both build for {} {}; pick one".format(
                os_cpu[os_key][cpu_key],
                triple,
                os_key,
                cpu_key,
            ))
        os_cpu[os_key][cpu_key] = triple

        windows = os_key == "config//os:windows"
        archive = "{}__archive_{}".format(name, triple)

        native.http_archive(
            name = archive,
            sha256 = checksum,
            strip_prefix = "python",
            sub_targets = {
                "include": ["include" if windows else "include/python{}".format(minor_version)],
                "lib": ["libs" if windows else "lib"],
                "python": ["python.exe" if windows else "bin/python"],
            },
            urls = [_ARCHIVE_URL.format(rev = rev, triple = triple, version = version)],
        )

        archives[triple] = ":{}".format(archive)
        interpreters[triple] = ":{}[python]".format(archive)
        libdir = "$(location :{}[lib])".format(archive)
        extension_linker_flags[triple] = ["/LIBPATH:{}".format(libdir)] if windows else [
            "-L{}".format(libdir),
            "@$(location :{}__libpython_symbols)".format(name),
        ]

    # The interpreter cannot be run straight out of the archive: it needs the
    # rest of the install tree (stdlib, shared libs) alongside it.
    cpython = "{}__cpython".format(name)
    native.command_alias(
        name = cpython,
        exe = _by_platform(os_cpu, interpreters),
        resources = [_by_platform(os_cpu, archives)],
        visibility = visibility,
    )

    if bootstrap:
        python_bootstrap_toolchain(
            name = "{}_bootstrap".format(name),
            interpreter = ":{}".format(cpython),
            visibility = visibility,
        )

    native.genrule(
        name = "{}__libpython_symbols".format(name),
        out = "linker_args",
        cmd = '$(exe_target prelude//python/tools:gather_libpython_symbols) "$OUT"',
    )

    python_toolchain(
        name = name,
        extension_linker_flags = _by_platform(os_cpu, extension_linker_flags),
        interpreter = ":{}".format(cpython),
        visibility = visibility,
        **kwargs
    )
