load(
    "@prelude//toolchains:java.bzl",
    "java_test_toolchain",
    "javacd_toolchain",
    "system_java_bootstrap_toolchain",
    "system_prebuilt_jar_bootstrap_toolchain",
)

# Keys are Azul's own archive suffixes, so they need no translating. Azul also
# ships `linux_musl_*`; the RE workers run a glibc image.
_PLATFORM_CONSTRAINTS = {
    "linux_aarch64": ("config//os:linux", "config//cpu:arm64"),
    "linux_x64": ("config//os:linux", "config//cpu:x86_64"),
    "macosx_aarch64": ("config//os:macos", "config//cpu:arm64"),
    "macosx_x64": ("config//os:macos", "config//cpu:x86_64"),
}

_ARCHIVE_URL = "https://cdn.azul.com/zulu/bin/{}.tar.gz"

# The tools a `javacd_toolchain` needs, as paths under the JDK home.
_TOOLS = ["jar", "java", "javac", "jlink", "jmod"]

_JRT_FS_JAR = "lib/jrt-fs.jar"

_JdkInfo = provider(
    doc = "An unpacked JDK, as one directory artifact rooted at the JDK home.",
    fields = {
        "home": provider_field(Artifact),
    },
)

def _hermetic_jdk_impl(ctx: AnalysisContext) -> list[Provider]:
    return [
        DefaultInfo(default_output = ctx.attrs.home),
        _JdkInfo(home = ctx.attrs.home),
    ]

_hermetic_jdk = rule(
    impl = _hermetic_jdk_impl,
    attrs = {
        "home": attrs.source(allow_directory = True),
    },
    doc = "Picks one platform's unpacked JDK. Holds the only `select()` here.",
)

def _jdk_component_impl(ctx: AnalysisContext) -> list[Provider]:
    component = ctx.attrs.jdk[_JdkInfo].home.project(ctx.attrs.path)

    providers = [DefaultInfo(default_output = component)]
    if ctx.attrs.executable:
        # A JDK tool derives JAVA_HOME from its own path and reads the module
        # image next to it, so the whole home has to be an input, not just the
        # binary.
        providers.append(RunInfo(args = cmd_args(component, hidden = ctx.attrs.jdk[_JdkInfo].home)))
    return providers

_jdk_component = rule(
    impl = _jdk_component_impl,
    attrs = {
        "executable": attrs.bool(default = True),
        # `exec_dep`, not a `select()`: these tools run during the build, so we
        # always want the execution platform's. `javac`, `jar` and `jrt_fs_jar`
        # are plain deps resolved in the target configuration, where a select
        # would hand a cross-compile an unrunnable Linux `javac` on a macOS host.
        "jdk": attrs.exec_dep(providers = [_JdkInfo]),
        "path": attrs.string(),
    },
    doc = "One file out of a JDK home, as a tool or a plain source.",
)

def _by_platform(os_cpu, values):
    """Nested select (outer OS, inner CPU) over a platform -> value mapping."""
    outer = {}
    for os_key, cpus in os_cpu.items():
        outer[os_key] = select({cpu_key: values[platform] for cpu_key, platform in cpus.items()})
    return select(outer)

def hermetic_java_toolchain(
        name,
        version,
        zulu_version,
        sha256s,
        macos_home = None,
        bootstrap = True,
        prebuilt_jar = True,
        test = True,
        visibility = ["PUBLIC"],
        **kwargs):
    """Download and configure a hermetic Java toolchain.

    Azul's Zulu builds of OpenJDK, wired into the prelude's own `javacd` macros:
    only the JDK is ours, everything downstream stays the prelude's.

    Args:
        name: Target name for the resulting java_toolchain rule.
        version: OpenJDK version, e.g. "24.0.2".
        zulu_version: Zulu's version for that release, e.g. "24.32.13". One
             OpenJDK version is republished under several of these.
        sha256s: Azul platform suffix -> sha256, one per execution platform, e.g.
             {"macosx_aarch64": "...", "linux_x64": "..."}. Hashes come from
             Azul's metadata API; `update_hermetic_toolchain.py java` reads it.
        macos_home: JDK home inside a macOS archive, e.g.
             "zulu-24.jdk/Contents/Home". Required if `sha256s` names macOS, and
             worth re-checking on a bump: Azul moves it between releases.
        bootstrap: Also emit `{name}_bootstrap`, the classic-javac toolchain the
             prelude compiles its own Java tools with.
        prebuilt_jar: Also emit the `prebuilt_jar` toolchains. Names are fixed by
             the prelude, which hardcodes them for its own jars.
        test: Also emit `{name}_test`, required by `java_test`.
        visibility: Visibility for the generated targets.
        **kwargs: Forwarded to `javacd_toolchain`. `source_level`/`target_level`
             are not among them: the prelude pins those at 8 and expects each
             `java_library` to override them.
    """
    os_cpu = {}  # os_key -> {cpu_key -> platform}
    archives = {}  # platform -> archive label

    for platform, checksum in sha256s.items():
        if platform not in _PLATFORM_CONSTRAINTS:
            fail("hermetic_java_toolchain: unknown platform '{}'. Known: {}".format(
                platform,
                sorted(_PLATFORM_CONSTRAINTS),
            ))

        os_key, cpu_key = _PLATFORM_CONSTRAINTS[platform]
        if os_key not in os_cpu:
            os_cpu[os_key] = {}
        if cpu_key in os_cpu[os_key]:
            fail("hermetic_java_toolchain: '{}' and '{}' both build for {} {}; pick one".format(
                os_cpu[os_key][cpu_key],
                platform,
                os_key,
                cpu_key,
            ))
        os_cpu[os_key][cpu_key] = platform

        archive = "{}__archive_{}".format(name, platform)
        contents = "zulu{}-ca-jdk{}-{}".format(zulu_version, version, platform)

        # On Linux the archive root is the JDK home. On macOS it is a `.jdk`
        # bundle whose home moves between releases -- 24 puts it at
        # `zulu-24.jdk/Contents/Home`, 25 at `Contents/Home` -- so it is data,
        # not a rule. Azul does flatten `bin`/`lib` to the root as symlinks,
        # except buck2 refuses to `project()` through a symlink.
        strip_prefix = contents
        if platform.startswith("macosx"):
            if not macos_home:
                fail("hermetic_java_toolchain: '{}' needs macos_home set to the JDK home inside the archive, e.g. 'zulu-24.jdk/Contents/Home'".format(platform))
            strip_prefix += "/" + macos_home

        native.http_archive(
            name = archive,
            sha256 = checksum,
            strip_prefix = strip_prefix,
            urls = [_ARCHIVE_URL.format(contents)],
            target_compatible_with = [os_key, cpu_key],
        )

        archives[platform] = ":{}".format(archive)

    jdk = "{}__jdk".format(name)
    _hermetic_jdk(
        name = jdk,
        home = _by_platform(os_cpu, archives),
        visibility = visibility,
    )

    for tool in _TOOLS:
        _jdk_component(
            name = "{}__{}".format(name, tool),
            jdk = ":{}".format(jdk),
            path = "bin/{}".format(tool),
            visibility = visibility,
        )

    _jdk_component(
        name = "{}__jrt_fs_jar".format(name),
        jdk = ":{}".format(jdk),
        path = _JRT_FS_JAR,
        executable = False,
        visibility = visibility,
    )

    tools = {tool: ":{}__{}".format(name, tool) for tool in _TOOLS}
    jrt_fs_jar = ":{}__jrt_fs_jar".format(name)

    javacd_toolchain(
        name = name,
        jar = tools["jar"],
        java = tools["java"],
        javac = tools["javac"],
        jlink = tools["jlink"],
        jmod = tools["jmod"],
        jrt_fs_jar = jrt_fs_jar,
        visibility = visibility,
        **kwargs
    )

    if bootstrap:
        # Classic javac: this is what builds javacd, so it cannot need javacd.
        system_java_bootstrap_toolchain(
            name = "{}_bootstrap".format(name),
            java = tools["java"],
            javac = tools["javac"],
            jlink = tools["jlink"],
            jmod = tools["jmod"],
            jrt_fs_jar = jrt_fs_jar,
            visibility = visibility,
        )

    if prebuilt_jar:
        for prebuilt in ("prebuilt_jar", "prebuilt_jar_bootstrap", "prebuilt_jar_bootstrap_no_snapshot"):
            system_prebuilt_jar_bootstrap_toolchain(
                name = prebuilt,
                java = tools["java"],
                visibility = visibility,
            )

    if test:
        java_test_toolchain(
            name = "{}_test".format(name),
            visibility = visibility,
        )
