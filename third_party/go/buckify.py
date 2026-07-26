#!/usr/bin/env python3
"""Generate BUCK files for every Go package in the workspace and its deps.

Third-party code is not vendored. Each module becomes an `http_archive` pinned
by the sha256 of its module zip, and each package becomes a target whose `srcs`
name individual files inside that archive. Nothing third-party is checked in;
the generated BUCK file is itself the lockfile.

`srcs` has to be an explicit file list because buck2 resolves sources at
analysis time, when the contents of an as-yet-undownloaded archive are unknown.
Handing a `go_library` the extracted directory instead -- the shape reindeer
uses for Rust, where rustc discovers modules from one crate root -- compiles
precisely nothing, and does so *silently*: the Go rules match `go list`'s
filenames against each src's path, nothing matches, and you get an empty
archive whose failure surfaces much later as "can't find export data (EOF)".

So the file list is read from the module cache at generation time, unioned
across every target platform, and the build-time analyzer narrows it back down
per platform. Packages belonging to a workspace module keep sources in the tree
and so keep a `glob()` and a BUCK file of their own; third-party packages have
no directory to live in and so are all emitted into one generated file.

Dependencies are resolved per platform and then folded: an import needed
everywhere becomes a plain `deps` entry, one needed only somewhere becomes a
`select()`, and a package that builds on only some platforms gets a
`target_compatible_with`. That is why `go list` runs once per platform with
GOOS/GOARCH set rather than passing platforms as build tags -- filename
suffixes and negated `//go:build` constraints are only evaluated correctly when
the toolchain genuinely believes it is targeting that platform.

Run: buck2 run //third_party/go:buckify
"""

import hashlib
import json
import os
import posixpath
import re
import shlex
import subprocess
import sys
from collections import defaultdict

# Everything the Go build could compile. `go list` reports these per platform;
# we keep the union and let the build-time analyzer pick.
SOURCE_FIELDS = [
    "GoFiles", "CgoFiles", "HFiles", "CFiles", "CXXFiles",
    "SFiles", "MFiles", "SysoFiles",
]

GO_LIST_FIELDS = ",".join(
    ["Name", "ImportPath", "Imports", "Standard", "Error", "Dir", "Module",
     "EmbedFiles", "CgoLDFLAGS", "ForTest",
     "TestGoFiles", "XTestGoFiles", "TestImports", "XTestImports"] + SOURCE_FIELDS
)

WORKSPACE_SRCS_GLOB = ["*.go", "*.s", "*.h", "*.c", "*.cc", "*.cpp", "*.S", "*.m", "*.mm"]

PROXY = "https://proxy.golang.org"


def escape_module_path(path):
    """Go's module path escaping for proxy URLs: `Code-Hex` -> `!code-!hex`.

    Case-insensitive filesystems forced this encoding on the proxy protocol.
    Note it applies to the URL only -- inside the zip, paths are unescaped.
    """
    return re.sub(r"[A-Z]", lambda m: "!" + m.group(0).lower(), path)


class Package:
    """One Go package, as it looks across all target platforms."""

    def __init__(self, import_path):
        self.import_path = import_path
        self.name = ""
        self.module = None          # (path, version), None for workspace modules
        self.subdir = ""            # path of this package within its module
        self.files = set()          # union of source filenames across platforms
        self.embed_files = set()
        self.deps = {}              # (buck_os, buck_arch) -> set of import paths
        self.test_deps = {}         # (buck_os, buck_arch) -> imports of its tests
        self.test_platforms = set()  # platforms where it has runnable tests
        self.has_external_tests = False
        self.ldflags = {}           # (buck_os, buck_arch) -> own `#cgo LDFLAGS`

    @property
    def is_binary(self):
        return self.name == "main"

    def observe(self, entry, platform, workspace_modules):
        self.name = entry.get("Name", "")
        self.embed_files.update(entry.get("EmbedFiles", []))
        for field in SOURCE_FIELDS:
            self.files.update(entry.get(field, []))

        key = (platform["buck_os"], platform["buck_arch"])
        self.deps[key] = set()
        self.test_deps[key] = set()
        self.ldflags[key] = entry.get("CgoLDFLAGS", [])
        if entry.get("TestGoFiles"):
            self.test_platforms.add(key)
        if entry.get("XTestGoFiles"):
            self.has_external_tests = True

        module = entry.get("Module") or {}
        if module.get("Path") and module["Path"] not in workspace_modules:
            self.module = (module["Path"], module["Version"])
            self.subdir = os.path.relpath(entry["Dir"], module["Dir"])
            if self.subdir == ".":
                self.subdir = ""

    def add_deps(self, entry, platform, is_stdlib):
        key = (platform["buck_os"], platform["buck_arch"])
        self.deps[key].update(i for i in entry.get("Imports", []) if not is_stdlib(i))
        # A test's own imports, over and above the library's. The external test
        # package (`foo_test`) may import the package under test; that is a
        # dependency the go_test rule already supplies, so drop it rather than
        # emit a target that depends on itself.
        test_imports = entry.get("TestImports", []) + entry.get("XTestImports", [])
        self.test_deps[key].update(
            i for i in test_imports
            if not is_stdlib(i) and i != self.import_path
        )

    def archive_paths(self):
        """This package's source files, as paths inside its module archive."""
        return sorted(posixpath.join(self.subdir, f) if self.subdir else f
                      for f in self.files)

    def fold(self, all_platforms, which="deps"):
        """Split deps into (common, {os: {arch: deps}}) and find incompatibilities.

        A dep seen on every platform this package builds on -- not every
        platform we know about -- would be wrong to hoist, since the package
        may simply not exist elsewhere; so common-ness is judged against the
        platforms where the package was actually found.

        `which` selects the library's own deps or its tests'; both are folded
        the same way, so a test dependency that exists on only one platform
        lands in a select() rather than breaking the others.
        """
        by_platform = self.deps if which == "deps" else self.test_deps
        seen = list(by_platform.values())
        common = set.intersection(*seen) if seen else set()

        per_platform = defaultdict(dict)
        for (buck_os, buck_arch), deps in by_platform.items():
            extra = deps - common
            if extra:
                per_platform[buck_os][buck_arch] = sorted(extra)

        compatible = defaultdict(list)
        if len(self.deps) != len(all_platforms):
            for buck_os, buck_arch in self.deps:
                compatible[buck_os].append(buck_arch)

        return sorted(common), dict(per_platform), dict(compatible)


def go_list(go, root, platform, tags, patterns):
    """`go list -deps` for one target platform."""
    # `-test` widens the closure to cover test-only dependencies (testify,
    # rapid and friends) so they get targets too. It also synthesises the
    # `<pkg>.test` binary packages, which `collect` discards -- the real
    # package entries already carry TestGoFiles and TestImports without it.
    cmd = [*go, "list", "-e", f"-json={GO_LIST_FIELDS}", "-deps", "-test"]
    if tags:
        cmd.append("-tags=" + ",".join(tags))
    cmd += patterns

    env = dict(os.environ)
    env["GOOS"] = platform["go_os"]
    env["GOARCH"] = platform["go_arch"]
    env["CGO_ENABLED"] = "1"

    proc = subprocess.run(cmd, cwd=root, env=env, capture_output=True, text=True)
    if proc.returncode != 0:
        sys.stderr.write(proc.stderr)
        sys.exit(f"go list failed for {platform['go_os']}/{platform['go_arch']}")

    decoder = json.JSONDecoder()
    text = proc.stdout.lstrip()
    while text:
        entry, end = decoder.raw_decode(text)
        yield entry
        text = text[end:].lstrip()


def collect(config, go, root):
    """Run `go list` for every platform and merge the results."""
    workspace_modules = {m["module"] for m in config["workspace_modules"]}
    packages = {}
    stdlib = set()
    listings = []

    for platform in config["platforms"]:
        entries = []
        for entry in go_list(go, root, platform, config["default_tags"], config["patterns"]):
            if entry.get("Standard"):
                stdlib.add(entry.get("ImportPath"))
                continue
            # A package excluded on this platform by its build constraints
            # reports an error here; that absence is the signal we want.
            if entry.get("Error"):
                continue
            # Drop `-test`'s synthetic packages: the recompiled-for-test
            # variant (ForTest set, import path in `pkg_test [pkg.test]` form)
            # and the generated test binary itself.
            if entry.get("ForTest") or entry["ImportPath"].endswith(".test"):
                continue
            entries.append(entry)
            import_path = entry["ImportPath"]
            package = packages.setdefault(import_path, Package(import_path))
            package.observe(entry, platform, workspace_modules)
        listings.append((platform, entries))
        print(f"  {platform['go_os']}/{platform['go_arch']}: {len(entries)} packages")

    def is_stdlib(import_path):
        # "C" is cgo's pseudo-import, and a first path element without a dot
        # cannot be a module path, so it is stdlib we simply did not list.
        return (
            import_path in stdlib
            or import_path == "C"
            or "." not in import_path.split("/")[0]
        )

    # Imports can only be classified once every platform's stdlib is known.
    for platform, entries in listings:
        for entry in entries:
            packages[entry["ImportPath"]].add_deps(entry, platform, is_stdlib)

    return packages


def resolve_modules(go, root, packages):
    """Pin every third-party module by the sha256 of its module zip.

    `go.sum` cannot supply this: it records an `h1:` dirhash over the extracted
    file tree, a different construction from a hash of the archive bytes, and
    not what `http_archive` verifies. So the zips are hashed directly out of
    the module cache, which `go mod download` populates and verifies against
    `go.sum` on the way in.
    """
    wanted = sorted({p.module for p in packages.values() if p.module})
    if not wanted:
        return {}

    proc = subprocess.run(
        [*go, "mod", "download", "-json", *(f"{path}@{version}" for path, version in wanted)],
        cwd=root, capture_output=True, text=True,
    )
    if proc.returncode != 0:
        sys.stderr.write(proc.stderr)
        sys.exit("go mod download failed")

    modules = {}
    decoder = json.JSONDecoder()
    text = proc.stdout.lstrip()
    while text:
        entry, end = decoder.raw_decode(text)
        text = text[end:].lstrip()
        if entry.get("Error"):
            sys.exit(f"{entry.get('Path')}: {entry['Error']}")
        with open(entry["Zip"], "rb") as f:
            contents = f.read()
        modules[(entry["Path"], entry["Version"])] = (
            hashlib.sha256(contents).hexdigest(), len(contents),
        )

    missing = [m for m in wanted if m not in modules]
    if missing:
        sys.exit("no module zip for: " + ", ".join(f"{p}@{v}" for p, v in missing))
    print(f"pinned {len(modules)} module archives")
    return modules


class Layout:
    """Maps import paths to the target label that represents them."""

    def __init__(self, config):
        self.deps_dir = config["deps_dir"]
        self.modules = config["workspace_modules"]

    def _module_of(self, import_path):
        for module in self.modules:
            path = module["module"]
            if import_path == path or import_path.startswith(path + "/"):
                return module
        return None

    def directory(self, import_path):
        """Repo-relative directory for an in-tree package, or None if third-party."""
        module = self._module_of(import_path)
        if module is None or not module["generate"]:
            return None
        suffix = import_path[len(module["module"]):].lstrip("/")
        return os.path.join(module["dir"], suffix) if suffix else module["dir"]

    def is_workspace(self, import_path):
        return self._module_of(import_path) is not None

    def label(self, import_path):
        module = self._module_of(import_path)
        if module is None:
            return f"//{self.deps_dir}:{import_path}"
        suffix = import_path[len(module["module"]):].lstrip("/")
        directory = os.path.join(module["dir"], suffix) if suffix else module["dir"]
        return f"//{directory}:{import_path.rsplit('/', 1)[-1]}"

    def generated_roots(self):
        for module in self.modules:
            if module["generate"]:
                yield module["dir"]


def flag_groups(flags):
    """Split a linker flag list into indivisible groups.

    `-framework Virtualization` is two argv tokens but one flag; grouping keeps
    deduplication from tearing such a pair apart.
    """
    groups, i = [], 0
    while i < len(flags):
        if flags[i] == "-framework" and i + 1 < len(flags):
            groups.append((flags[i], flags[i + 1]))
            i += 2
        else:
            groups.append((flags[i],))
            i += 1
    return groups


def transitive_ldflags(binary, packages, platform_key, include_tests=False):
    """Every `#cgo LDFLAGS` reachable from a binary, on one platform.

    `go build` hands the external linker the LDFLAGS of every cgo package in
    the link, but the prelude reads `external_linker_flags` only off the rules
    that actually link -- `go_binary` and `go_test`. A `go_library` accepts the
    attribute and ignores it. So the flags a dependency declared have to be
    gathered up here and emitted on whatever links it in.

    A test binary links the package under test plus its test-only deps, so
    `include_tests` widens the walk to cover those as well.
    """
    collected, visited, stack = [], set(), [binary.import_path]
    if include_tests:
        stack.extend(sorted(binary.test_deps.get(platform_key, ()), reverse=True))
    while stack:
        import_path = stack.pop()
        if import_path in visited:
            continue
        visited.add(import_path)
        package = packages.get(import_path)
        if package is None or platform_key not in package.deps:
            continue
        for group in flag_groups(package.ldflags.get(platform_key, [])):
            if group not in collected:
                collected.append(group)
        # Sorted so the flag order depends only on the graph, not on set iteration.
        stack.extend(sorted(package.deps[platform_key], reverse=True))
    return [token for group in collected for token in group]


def render_ldflags(package, packages, indent, include_tests=False):
    """`external_linker_flags` for a binary, as a plain list or a select()."""
    by_platform = {
        key: transitive_ldflags(package, packages, key, include_tests)
        for key in package.deps
    }
    if not any(by_platform.values()):
        return ""

    pad = " " * indent

    def as_list(flags, extra):
        inner = " " * (indent + extra)
        body = "".join(f'{inner}    "{flag}",\n' for flag in flags)
        return f"[\n{body}{inner}]"

    distinct = {tuple(flags) for flags in by_platform.values()}
    if len(distinct) == 1:
        return f"{pad}external_linker_flags = {as_list(next(iter(distinct)), 0)},\n"

    grouped = defaultdict(dict)
    for (buck_os, buck_arch), flags in by_platform.items():
        if flags:
            grouped[buck_os][buck_arch] = flags

    out = [f"{pad}external_linker_flags = select({{\n", f'{pad}    "DEFAULT": [],\n']
    for buck_os in sorted(grouped):
        out.append(f'{pad}    "{buck_os}": select({{\n')
        out.append(f'{pad}        "DEFAULT": [],\n')
        for buck_arch in sorted(grouped[buck_os]):
            out.append(f'{pad}        "{buck_arch}": {as_list(grouped[buck_os][buck_arch], 8)},\n')
        out.append(f"{pad}    }}),\n")
    out.append(f"{pad}}}),\n")
    return "".join(out)


def render_deps_block(common, per_platform, layout, pad):
    """A `deps` list, with anything platform-specific hung off a select()."""
    if not (common or per_platform):
        return ""
    out = [f"{pad}    deps = [\n"]
    for dep in common:
        out.append(f'{pad}        "{layout.label(dep)}",\n')
    out.append(f"{pad}    ]")
    if per_platform:
        out.append(" + select({\n")
        out.append(f'{pad}        "DEFAULT": [],\n')
        for buck_os in sorted(per_platform):
            out.append(f'{pad}        "{buck_os}": select({{\n')
            out.append(f'{pad}            "DEFAULT": [],\n')
            for buck_arch in sorted(per_platform[buck_os]):
                out.append(f'{pad}            "{buck_arch}": [\n')
                for dep in per_platform[buck_os][buck_arch]:
                    out.append(f'{pad}                "{layout.label(dep)}",\n')
                out.append(f"{pad}            ],\n")
            out.append(f"{pad}        }}),\n")
        out.append(f"{pad}    }})")
    out.append(",\n")
    return "".join(out)


def render_compatibility(compatible, pad):
    if not compatible:
        return ""
    out = [f"{pad}    target_compatible_with = select({{\n"]
    out.append(f'{pad}        "DEFAULT": ["config//:none"],\n')
    for buck_os in sorted(compatible):
        out.append(f'{pad}        "{buck_os}": select({{\n')
        out.append(f'{pad}            "DEFAULT": ["config//:none"],\n')
        for buck_arch in sorted(compatible[buck_os]):
            out.append(f'{pad}            "{buck_arch}": [],\n')
        out.append(f"{pad}        }}),\n")
    out.append(f"{pad}    }}),\n")
    return "".join(out)


def render_test_target(package, packages, layout, all_platforms):
    """A go_test for a package that has test files.

    `target_under_test` hands the test the library's sources and deps, so only
    the tests' own extra imports need listing here. The library's glob already
    covers `*_test.go`, and the build-time analyzer sorts them into internal
    and external test packages.
    """
    common, per_platform, _ = package.fold(all_platforms, which="test_deps")
    name = package.import_path.rsplit("/", 1)[-1]

    # Constrain the test to platforms that actually have test files, which is
    # narrower than where the library builds: a package can be cross-platform
    # while every one of its tests sits behind `//go:build linux`. Without this
    # the target would pass on darwin having run nothing at all.
    compatible = defaultdict(list)
    if len(package.test_platforms) != len(all_platforms):
        for buck_os, buck_arch in package.test_platforms:
            compatible[buck_os].append(buck_arch)

    out = ["\ngo_test(\n"]
    out.append(f'    name = "{name}_test",\n')
    out.append(f'    target_under_test = ":{name}",\n')
    out.append(render_deps_block(common, per_platform, layout, ""))
    out.append(render_ldflags(package, packages, 4, include_tests=True))
    out.append(render_compatibility(compatible, ""))
    out.append(")\n")
    return "".join(out)


def render_target(package, packages, layout, all_platforms, srcs_lines, indent=0):
    """One go_library/go_binary. `srcs_lines` differs for in-tree vs archived."""
    common, per_platform, compatible = package.fold(all_platforms)
    rule = "go_binary" if package.is_binary else "go_library"
    pad = " " * indent
    name = package.import_path if not layout.is_workspace(package.import_path) \
        else package.import_path.rsplit("/", 1)[-1]

    out = [f"{pad}{rule}(\n"]
    out.append(f'{pad}    name = "{name}",\n')
    out.append(f'{pad}    package_name = "{package.import_path}",\n')
    out.append(srcs_lines)
    out.append(f'{pad}    header_namespace = "",\n')

    out.append(render_deps_block(common, per_platform, layout, pad))

    if package.is_binary:
        out.append(render_ldflags(package, packages, indent + 4))

    out.append(render_compatibility(compatible, pad))
    out.append(f'{pad}    visibility = ["PUBLIC"],\n')
    out.append(f"{pad})\n")
    return "".join(out)


def write_deps_buck(packages, modules, layout, config, root, all_platforms):
    """All third-party targets, plus the archives they are cut from, in one file."""
    third_party = sorted(
        (p for p in packages.values() if not layout.is_workspace(p.import_path)),
        key=lambda p: p.import_path,
    )

    # An embed pattern resolves against the package directory, which for an
    # archived package is a path we never materialise as such. Nothing in this
    # workspace needs it, so refuse rather than emit something plausible.
    embedding = [p.import_path for p in third_party if p.embed_files]
    if embedding:
        sys.exit(
            "third-party packages using //go:embed are not supported by the "
            "archive layout: " + ", ".join(embedding)
        )

    by_module = defaultdict(list)
    for package in third_party:
        by_module[package.module].append(package)

    out = [config["preamble"]]
    for module in sorted(by_module):
        path, version = module
        paths = sorted({p for pkg in by_module[module] for p in pkg.archive_paths()})
        url = f"{PROXY}/{escape_module_path(path)}/@v/{escape_module_path(version)}.zip"
        digest, size = modules[module]
        out.append("http_archive(\n")
        out.append(f'    name = "{path}@{version}",\n')
        out.append(f'    sha256 = "{digest}",\n')
        # sha256 plus an exact length is a complete content digest, so buck2 can
        # resolve the archive out of CAS without so much as a HEAD to the origin.
        out.append(f"    size_bytes = {size},\n")
        out.append(f'    strip_prefix = "{path}@{version}",\n')
        out.append(f'    urls = ["{url}"],\n')
        out.append("    sub_targets = [\n")
        for p in paths:
            out.append(f'        "{p}",\n')
        out.append("    ],\n")
        out.append(")\n\n")

        for package in by_module[module]:
            srcs = [f"    srcs = [\n"]
            for p in package.archive_paths():
                srcs.append(f'        ":{path}@{version}[{p}]",\n')
            srcs.append("    ],\n")
            out.append(render_target(package, packages, layout, all_platforms, "".join(srcs)))
            out.append("\n")

    directory = os.path.join(root, config["deps_dir"])
    os.makedirs(directory, exist_ok=True)
    with open(os.path.join(directory, "BUCK"), "w") as f:
        f.write("".join(out))
    return len(third_party), len(by_module)


def write_workspace_bucks(packages, layout, config, root, all_platforms, marker):
    """In-tree packages keep a BUCK file of their own, with globbed srcs.

    Only modules opted into `generate` are touched, and even then an existing
    BUCK file without our marker is a hand-written one: refuse rather than
    overwrite it. There is no fixup mechanism here -- a generated target cannot
    be adjusted in place, it can only be taken over wholesale by dropping the
    marker -- so destroying someone's hand-written rules would be unrecoverable
    from anything but version control.
    """
    srcs_lines = "    srcs = native.glob([{}]),\n".format(
        ", ".join(f'"{g}"' for g in WORKSPACE_SRCS_GLOB)
    )
    written = 0
    for import_path, package in sorted(packages.items()):
        directory = layout.directory(import_path)
        if directory is None:
            continue
        absolute = os.path.join(root, directory)
        if not os.path.isdir(absolute):
            sys.exit(f"{import_path} has no source directory at {directory}")

        path = os.path.join(absolute, "BUCK")
        with open(path, "w") as f:
            f.write(config["preamble"])
            f.write(render_target(package, packages, layout, all_platforms, srcs_lines))
            if package.test_platforms and not package.is_binary:
                f.write(render_test_target(package, packages, layout, all_platforms))
        written += 1
    return written


def report_external_tests(packages, layout):
    """Warn about `package foo_test` files, whose tests buck2 cannot run.

    `package_builder.bzl` refuses external test packages outright ("External
    tests are not supported, remove suffix '_test' from package declaration").
    Worse, along the go_test path it does not always reach that check: a
    package whose tests are *all* external instead yields a test binary
    containing no tests, which passes. So no target is emitted for those, and
    they are named here rather than being quietly dropped.
    """
    stranded = sorted(
        p.import_path for p in packages.values()
        if p.has_external_tests and layout.directory(p.import_path)
    )
    for import_path in stranded:
        only = "" if packages[import_path].test_platforms else " (all of its tests)"
        print(f"  warning: {import_path}{only} uses an external test package; "
              "buck2 cannot run those tests")
    return stranded


def check_writable(packages, layout, root, marker):
    """Refuse to clobber hand-written BUCK files, before anything is mutated.

    This runs ahead of `clear_generated` on purpose: bailing out halfway would
    leave the tree with most of its BUCK files deleted and none rewritten.
    """
    handwritten = []
    for import_path in sorted(packages):
        directory = layout.directory(import_path)
        if directory is None:
            continue
        path = os.path.join(root, directory, "BUCK")
        if not os.path.exists(path):
            continue
        with open(path) as f:
            if not f.readline().startswith(marker):
                handwritten.append(f"{directory}/BUCK ({import_path})")

    if handwritten:
        sys.exit(
            "refusing to overwrite hand-written BUCK files:\n  "
            + "\n  ".join(handwritten)
            + "\nDelete them to let buckify manage those packages, or set "
            '"generate": false for the module in buckify.json.'
        )


def clear_generated(root, layout, marker):
    """Remove BUCK files we previously generated, so deleted packages do not linger.

    Only files carrying our marker are touched; hand-written BUCK files inside
    a generated tree survive.
    """
    removed = 0
    for managed in layout.generated_roots():
        for dirpath, _, filenames in os.walk(os.path.join(root, managed)):
            if "BUCK" not in filenames:
                continue
            path = os.path.join(dirpath, "BUCK")
            with open(path) as f:
                if not f.readline().startswith(marker):
                    continue
            os.remove(path)
            removed += 1
    return removed


def main():
    root = subprocess.run(
        ["git", "rev-parse", "--show-toplevel"],
        capture_output=True, text=True, check=True,
    ).stdout.strip()

    with open(os.path.join(root, "third_party", "go", "buckify.json")) as f:
        config = json.load(f)

    # The hermetic toolchain, so that generated deps reflect the Go version we
    # build with rather than whatever is on $PATH. It is a toolchain rule, so it
    # can only be reached by running it, not via `$(exe ...)`.
    go = shlex.split(os.environ.get("GO", "buck2 run toolchains//:go[go] --"))
    layout = Layout(config)
    all_platforms = [(p["buck_os"], p["buck_arch"]) for p in config["platforms"]]

    print("listing packages")
    packages = collect(config, go, root)
    modules = resolve_modules(go, root, packages)

    marker = config["preamble"].split("\n")[0]
    check_writable(packages, layout, root, marker)
    print(f"removed {clear_generated(root, layout, marker)} stale BUCK files")

    targets, archives = write_deps_buck(packages, modules, layout, config, root, all_platforms)
    in_tree = write_workspace_bucks(packages, layout, config, root, all_platforms, marker)
    print(f"wrote {targets} third-party targets from {archives} archives, "
          f"and {in_tree} in-tree BUCK files")
    report_external_tests(packages, layout)


if __name__ == "__main__":
    main()
