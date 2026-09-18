#!/usr/bin/env python3
"""Fetch upstream SHA256 hashes and update a hermetic toolchain target via buildozer.

Usage:
    buck run toolchains//:update_hermetic_toolchain -- <rust|go|java|haskell> <target> <version>
    buck run toolchains//:update_hermetic_toolchain -- python <target> <version> [rev]

Examples:
    buck run toolchains//:update_hermetic_toolchain -- rust    toolchains//:rust    1.87.0
    buck run toolchains//:update_hermetic_toolchain -- go      toolchains//:go      1.23.5
    buck run toolchains//:update_hermetic_toolchain -- java    toolchains//:java    24.0.2
    buck run toolchains//:update_hermetic_toolchain -- haskell toolchains//:haskell 9.14.1
    buck run toolchains//:update_hermetic_toolchain -- python  toolchains//:python  3.13.6 20250807

`rev` is the python-build-standalone release tag; it defaults to the latest
release, which does not necessarily publish the CPython version you asked for.

A java `version` may be a prefix ("24"); the exact OpenJDK version it resolves to
is written back along with the Zulu version publishing it.

haskell also regenerates `toolchains/haskell/boot_packages.bzl`, whose unit ids
are hash-suffixed per platform: every bindist is downloaded (~870 MB total,
cached under $TMPDIR) and its `lib/package.conf.d` read. Takes a few minutes;
no GHC is executed.
"""

import ast
import configparser
import hashlib
import json
import os
import posixpath
import re
import shutil
import subprocess
import sys
import tarfile
import tempfile
import urllib.parse
import urllib.request

KINDS = ("go", "haskell", "java", "python", "rust")


def find_workspace_root():
    d = os.getcwd()
    while True:
        if os.path.exists(os.path.join(d, ".buckroot")):
            return d
        parent = os.path.dirname(d)
        if parent == d:
            return os.getcwd()
        d = parent


def read_cells(root):
    cfg = configparser.ConfigParser()
    cfg.read(os.path.join(root, ".buckconfig"))
    return dict(cfg.items("cells")) if cfg.has_section("cells") else {}


def buck2_to_buildozer_label(label, cells):
    """Convert a buck2 cell label (e.g. 'toolchains//:rust') to a buildozer
    root-relative label (e.g. '//toolchains:rust')."""
    cell, rest = label.split("//", 1)
    pkg, name = rest.rsplit(":", 1) if ":" in rest else (rest, rest.split("/")[-1])
    cell_path = cells.get(cell, cell) if cell else ""
    path = "/".join(x for x in (cell_path, pkg) if x)
    return f"//{path}:{name}"


def run_buildozer(command, target, cwd=None):
    try:
        result = subprocess.run(
            ["buildozer", command, target],
            capture_output=True,
            text=True,
            cwd=cwd,
        )
    except FileNotFoundError:
        sys.exit("error: 'buildozer' not found on PATH — install it first")
    # exit code 3 means no changes were made (no-op); treat as success
    if result.returncode not in (0, 3):
        sys.exit(f"buildozer error for '{command}' on {target}:\n{result.stderr.strip()}")
    return result


def buildozer_print(attr, target, root):
    return run_buildozer(f"print {attr}", target, cwd=root).stdout.strip()


def buildozer_set(attr, value_str, target, root):
    run_buildozer(f"set {attr} {value_str}", target, cwd=root)


def buildozer_dict_set(attr, d, target, root):
    # dict_set takes "key:value" pairs as space-separated tokens; SHA256 hex values need no escaping
    pairs = " ".join(f"{k}:{v}" for k, v in d.items())
    run_buildozer(f"dict_set {attr} {pairs}", target, cwd=root)


def parse_starlark_string_dict(raw):
    """Extract and parse a string->string dict from buildozer print output."""
    match = re.search(r"\{[^}]*\}", raw, re.DOTALL)
    if not match:
        raise ValueError(f"no dict literal in buildozer output: {raw!r}")
    return ast.literal_eval(match.group())


def fetch_rust_sha256(version, triple):
    url = f"https://static.rust-lang.org/dist/rust-{version}-{triple}.tar.xz.sha256"
    print(f"  fetching {url}", flush=True)
    with urllib.request.urlopen(url) as resp:
        return resp.read().decode().split()[0]


def fetch_go_sha256s(version, platform_keys):
    print("  fetching Go download index...", flush=True)
    url = "https://go.dev/dl/?mode=json&include=all"
    with urllib.request.urlopen(url) as resp:
        versions = json.loads(resp.read())

    go_version = f"go{version}"
    for entry in versions:
        if entry["version"] == go_version:
            result = {}
            for f in entry["files"]:
                key = f'{f["os"]}-{f["arch"]}'
                if key in platform_keys and f["kind"] == "archive":
                    result[key] = f["sha256"]
            return result
    raise ValueError(f"go{version} not found in https://go.dev/dl/ index")


AZUL_API = "https://api.azul.com/metadata/v1/zulu/packages/"

# `zulu<zulu_version>-ca-jdk<java_version>-<platform>.tar.gz`
_ZULU_ARCHIVE = re.compile(r"^zulu([\d.]+)-ca-jdk([\d.]+)-(.+)\.tar\.gz$")


def version_key(version):
    return tuple(int(part) for part in version.split("."))


def fetch_azul_release(version, platforms):
    """Resolve a JDK version to one Zulu release covering every platform.

    Returns (java_version, zulu_version, {platform: sha256}). Azul treats
    `version` as a prefix, so several releases can come back; the newest one
    publishing every platform wins, since mixing releases is not worth having.
    """
    query = urllib.parse.urlencode(
        {
            "java_version": version,
            "java_package_type": "jdk",
            "javafx_bundled": "false",
            "release_status": "ga",
            "latest": "true",
            "archive_type": "tar.gz",
            # A different JDK under an almost identical name.
            "crac_supported": "false",
            "include_fields": "sha256_hash",
            "page_size": "1000",
        }
    )
    url = f"{AZUL_API}?{query}"
    print(f"  fetching {url}", flush=True)
    with urllib.request.urlopen(url) as resp:
        packages = json.loads(resp.read())

    releases = {}  # (java_version, zulu_version) -> {platform: sha256}
    for package in packages:
        match = _ZULU_ARCHIVE.match(package["name"])
        if not match:
            continue
        zulu_version, java_version, platform = match.groups()
        # Also drops the musl builds, spelled `linux_musl_*`.
        if platform not in platforms:
            continue
        releases.setdefault((java_version, zulu_version), {})[platform] = package["sha256_hash"]

    complete = {key: sums for key, sums in releases.items() if set(sums) == set(platforms)}
    if not complete:
        partial = {f"jdk{k[0]}/zulu{k[1]}": sorted(v) for k, v in releases.items()}
        raise ValueError(
            f"no Zulu release of java {version} publishes all of {sorted(platforms)}; found {partial}"
        )

    java_version, zulu_version = max(
        complete, key=lambda key: (version_key(key[0]), version_key(key[1]))
    )
    return java_version, zulu_version, complete[java_version, zulu_version]


PBS_REPO = "astral-sh/python-build-standalone"


def fetch_latest_pbs_rev():
    url = f"https://api.github.com/repos/{PBS_REPO}/releases/latest"
    print(f"  fetching {url}", flush=True)
    with urllib.request.urlopen(url) as resp:
        return json.loads(resp.read())["tag_name"]


def fetch_python_sha256s(version, rev, triples):
    """Look up each triple's archive in a python-build-standalone release's SHA256SUMS."""
    url = f"https://github.com/{PBS_REPO}/releases/download/{rev}/SHA256SUMS"
    print(f"  fetching {url}", flush=True)
    sums = {}
    with urllib.request.urlopen(url) as resp:
        for line in resp.read().decode().splitlines():
            fields = line.split()
            if len(fields) == 2:
                sums[fields[1]] = fields[0]

    result = {}
    for triple in triples:
        archive = f"cpython-{version}+{rev}-{triple}-install_only_stripped.tar.gz"
        if archive not in sums:
            raise ValueError(f"{archive} is not in release {rev}'s SHA256SUMS")
        result[triple] = sums[archive]
    return result


GHC_BASE_URL = "https://downloads.haskell.org/~ghc"

# Downloaded bindists, kept between runs; only read after their sha256 checks.
GHC_CACHE_DIR = os.path.join(tempfile.gettempdir(), "ghc-bindists")

# `${pkgroot}` in a package .conf is the directory holding `package.conf.d`.
GHC_PKGROOT = "lib"

GHC_PACKAGE_DB = "lib/package.conf.d"


def fetch_ghc_sha256s(version, platforms):
    """Read a GHC release's own SHA256SUMS. Keys are GHC's URL flavours."""
    url = f"{GHC_BASE_URL}/{version}/SHA256SUMS"
    print(f"  fetching {url}", flush=True)
    sums = {}
    with urllib.request.urlopen(url) as resp:
        for line in resp.read().decode().splitlines():
            fields = line.split()
            if len(fields) == 2:
                sums[os.path.basename(fields[1])] = fields[0]

    result = {}
    for platform in platforms:
        archive = f"ghc-{version}-{platform}.tar.xz"
        if archive not in sums:
            raise ValueError(f"{archive} is not in {url}")
        result[platform] = sums[archive]
    return result


def sha256_file(path):
    digest = hashlib.sha256()
    with open(path, "rb") as f:
        for chunk in iter(lambda: f.read(1 << 20), b""):
            digest.update(chunk)
    return digest.hexdigest()


def download_ghc_bindist(version, platform, sha256):
    """Fetch one bindist into the cache, or reuse a cached copy that hashes right."""
    os.makedirs(GHC_CACHE_DIR, exist_ok=True)
    name = f"ghc-{version}-{platform}.tar.xz"
    path = os.path.join(GHC_CACHE_DIR, name)

    if os.path.exists(path):
        if sha256_file(path) == sha256:
            print(f"  using cached {path}", flush=True)
            return path
        print(f"  cached {path} has the wrong hash, refetching", flush=True)

    url = f"{GHC_BASE_URL}/{version}/{name}"
    print(f"  fetching {url} (a few hundred MB)", flush=True)
    partial = path + ".part"
    with urllib.request.urlopen(url) as resp, open(partial, "wb") as out:
        shutil.copyfileobj(resp, out)

    got = sha256_file(partial)
    if got != sha256:
        os.unlink(partial)
        raise ValueError(f"{url} hashed to {got}, expected {sha256}")
    os.replace(partial, path)
    return path


def parse_package_conf(text):
    """Parse a GHC package .conf.

    RFC822-ish: `field: value`, continuations indented. Every field we read is
    a whitespace-separated list, so joining continuations with spaces is enough.
    """
    fields = {}
    key = None
    for line in text.splitlines():
        if not line.strip():
            continue
        if line[0].isspace():
            if key is not None:
                fields[key].append(line.strip())
        else:
            key, _, rest = line.partition(":")
            key = key.strip().lower()
            fields[key] = [rest.strip()] if rest.strip() else []
    return {key: " ".join(value) for key, value in fields.items()}


def read_ghc_bindist(path):
    """Stream one bindist, returning (member paths, {conf basename: contents}).

    Paths come back relative to the root of the unpacked archive, with the
    `ghc-<version>-<platform>/` wrapper directory stripped off.
    """
    members = set()
    confs = {}
    prefix = None

    with tarfile.open(path, mode="r:xz") as tar:
        for member in tar:
            name = member.name
            if prefix is None:
                prefix = name.split("/")[0] + "/"
            if name == prefix.rstrip("/"):
                # The wrapper directory's own entry.
                continue
            if not name.startswith(prefix):
                raise ValueError(f"{path}: {name!r} is outside {prefix!r}")
            name = name[len(prefix) :]
            members.add(name)
            if posixpath.dirname(name) == GHC_PACKAGE_DB and name.endswith(".conf"):
                confs[posixpath.basename(name)] = tar.extractfile(member).read().decode()

    if not confs:
        raise ValueError(f"{path}: no package .conf files under {GHC_PACKAGE_DB}")
    return members, confs


def conf_paths(value):
    """Archive-relative paths out of a `.conf` directory field.

    Returns (kept, dropped). Anything not under `${pkgroot}` is dropped: GHC
    bakes some of its build machine's absolute paths into these fields.
    """
    kept, dropped = [], []
    for raw in value.split():
        if raw.startswith("${pkgroot}"):
            kept.append(posixpath.normpath(raw.replace("${pkgroot}", GHC_PKGROOT)))
        else:
            dropped.append(raw)
    return kept, dropped


def conf_flags(value):
    """`ld-options`-style fields, which quote elements that need it."""
    return [token.strip('"') for token in value.split()]


def ghc_shared_library_names(hs_library, version, ext):
    """Spellings of an `hs-libraries` entry's shared counterpart, best first.

    Haskell libraries carry the compiler version in the soname; a bundled C
    library (`Cffi`, the Linux libffi) drops both the `C` marker and the version.
    """
    if hs_library.startswith("HS"):
        return [f"lib{hs_library}-ghc{version}{ext}"]
    names = [f"lib{hs_library}{ext}"]
    if hs_library.startswith("C"):
        names.append(f"lib{hs_library[1:]}{ext}")
    return names


def ghc_boot_packages(members, confs, version):
    """Turn one bindist's package .conf files into `boot_packages.bzl` data.

    Every derived path is checked against the archive's file list, so an
    upstream layout change fails the bump rather than a later link.
    """
    parsed = {}
    for filename, text in sorted(confs.items()):
        conf = parse_package_conf(text)
        if "name" not in conf or "id" not in conf:
            raise ValueError(f"{filename}: no name/id")
        parsed[conf["name"]] = conf

    ids_to_names = {conf["id"]: name for name, conf in parsed.items()}

    # `lib/<arch>-<os>-ghc-<version>-<hash>`, holding the per-package dirs and
    # the shared libraries. The rts's `library-dirs` is empty, so the default
    # has to be derivable.
    libdirs = {
        posixpath.dirname(path)
        for conf in parsed.values()
        for path in conf_paths(conf.get("import-dirs", ""))[0]
    }
    if len(libdirs) != 1:
        raise ValueError(f"expected exactly one package library directory, found {sorted(libdirs)}")
    libdir = libdirs.pop()

    shared_ext = ".dylib" if any(m.endswith(".dylib") for m in members) else ".so"

    packages = {}
    missing = []
    dropped = {}

    for name, conf in sorted(parsed.items()):
        unit_id = conf["id"]

        static_dirs, drop = conf_paths(conf.get("library-dirs-static", ""))
        dropped.setdefault(name, []).extend(drop)
        static_dir = static_dirs[0] if static_dirs else posixpath.join(libdir, unit_id)

        shared_dirs, drop = conf_paths(conf.get("dynamic-library-dirs", ""))
        dropped[name].extend(drop)
        shared_dir = shared_dirs[0] if shared_dirs else libdir

        header_dirs, drop = conf_paths(conf.get("include-dirs", ""))
        dropped[name].extend(drop)

        static_libs, profiled_static_libs, shared_libs = [], [], {}
        for hs_library in conf.get("hs-libraries", "").split():
            static_libs.append(f"{static_dir}/lib{hs_library}.a")
            profiled_static_libs.append(f"{static_dir}/lib{hs_library}_p.a")

            candidates = ghc_shared_library_names(hs_library, version, shared_ext)
            present = [c for c in candidates if f"{shared_dir}/{c}" in members]
            if present:
                shared_libs[present[0]] = f"{shared_dir}/{present[0]}"
            else:
                print(f"  note: {name} ships no shared {hs_library} (tried {candidates})")

        for path in static_libs + profiled_static_libs + list(shared_libs.values()) + header_dirs:
            if path not in members:
                missing.append(f"{name}: {path}")

        packages[name] = {
            "id": unit_id,
            "version": conf.get("version", ""),
            "deps": sorted(
                ids_to_names[dep] for dep in conf.get("depends", "").split() if dep in ids_to_names
            ),
            "static_libs": static_libs,
            "profiled_static_libs": profiled_static_libs,
            "shared_libs": shared_libs,
            "cxx_header_dirs": header_dirs,
            # System libraries (libm, libffi, ...) the C linker finds; not in
            # the archive.
            "exported_linker_flags": [
                f"-l{lib}" for lib in conf.get("extra-libraries", "").split()
            ]
            + conf_flags(conf.get("ld-options", "")),
        }

        unknown_deps = [
            dep for dep in conf.get("depends", "").split() if dep not in ids_to_names
        ]
        if unknown_deps:
            raise ValueError(f"{name} depends on unregistered {unknown_deps}")

    if missing:
        raise ValueError(
            "these paths are not in the bindist -- GHC's layout has moved:\n  "
            + "\n  ".join(sorted(missing))
        )

    for name, paths in sorted(dropped.items()):
        for path in paths:
            print(f"  note: {name} references {path}, outside the archive; dropped")

    return packages


def write_boot_packages(path, version, per_platform):
    """Write `toolchains/haskell/boot_packages.bzl`."""
    body = json.dumps(per_platform, indent=4, sort_keys=True)
    contents = f'''\
# @generated by `buck run toolchains//:update_hermetic_toolchain -- haskell toolchains//:haskell {version}`
# Do not edit: unit ids are hash-suffixed per platform.
#
# GHC {version}'s boot packages, read from each bindist's `lib/package.conf.d`;
# paths are relative to the unpacked archive root.

GHC_VERSION = "{version}"

GHC_PACKAGE_DB = "{GHC_PACKAGE_DB}"

BOOT_PACKAGES = {body}
'''

    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, "w") as f:
        f.write(contents)

    # Cosmetic only, and buildifier is not a hard dependency of a version bump.
    try:
        subprocess.run(["buildifier", path], check=True)
    except FileNotFoundError:
        print("  note: buildifier not on PATH; generated file is unformatted")


def update_haskell_boot_packages(root, cells, version, sha256s):
    per_platform = {}
    for platform in sorted(sha256s):
        print(f"reading {platform} boot packages", flush=True)
        archive = download_ghc_bindist(version, platform, sha256s[platform])
        members, confs = read_ghc_bindist(archive)
        per_platform[platform] = ghc_boot_packages(members, confs, version)
        print(f"  {len(per_platform[platform])} packages", flush=True)

    names = {platform: sorted(packages) for platform, packages in per_platform.items()}
    if len(set(map(tuple, names.values()))) != 1:
        raise ValueError(f"platforms ship different boot packages: {names}")

    out = os.path.join(root, cells.get("toolchains", "toolchains"), "haskell", "boot_packages.bzl")
    write_boot_packages(out, version, per_platform)
    print(f"wrote {out}")


def main():
    if len(sys.argv) < 4:
        print(__doc__, file=sys.stderr)
        sys.exit(1)

    kind, label, version = sys.argv[1], sys.argv[2], sys.argv[3]
    if kind not in KINDS:
        sys.exit(f"error: unknown toolchain kind {kind!r} — expected one of {', '.join(KINDS)}")

    rev = sys.argv[4] if len(sys.argv) > 4 else None
    if rev and kind != "python":
        sys.exit(f"error: a rev is only meaningful for python toolchains, not {kind!r}")

    root = find_workspace_root()
    cells = read_cells(root)
    target = buck2_to_buildozer_label(label, cells)

    print(f"updating {kind} toolchain {target} to version {version}")

    sha256_attr = "sha256" if kind == "go" else "sha256s"
    current = parse_starlark_string_dict(buildozer_print(sha256_attr, target, root))

    zulu_version = None
    new_hashes = {}
    if kind == "java":
        platforms = list(current)
        print(f"platforms: {platforms}")
        version, zulu_version, new_hashes = fetch_azul_release(version, platforms)
        print(f"resolved: openjdk {version}, zulu {zulu_version}")
        for k, v in sorted(new_hashes.items()):
            print(f"  {k}: {v}")
    elif kind == "rust":
        triples = list(current)
        print(f"triples: {triples}")
        for triple in triples:
            new_hashes[triple] = fetch_rust_sha256(version, triple)
            print(f"  {triple}: {new_hashes[triple]}")
    elif kind == "python":
        if rev is None:
            rev = fetch_latest_pbs_rev()
            print(f"rev: {rev} (latest release)")
        triples = list(current)
        print(f"triples: {triples}")
        new_hashes = fetch_python_sha256s(version, rev, triples)
        for k, v in new_hashes.items():
            print(f"  {k}: {v}")
    elif kind == "haskell":
        platforms = list(current)
        print(f"platforms: {platforms}")
        new_hashes = fetch_ghc_sha256s(version, platforms)
        for k, v in sorted(new_hashes.items()):
            print(f"  {k}: {v}")
    else:
        platforms = set(current)
        print(f"platforms: {sorted(platforms)}")
        new_hashes = fetch_go_sha256s(version, platforms)
        for k, v in sorted(new_hashes.items()):
            print(f"  {k}: {v}")
        missing = platforms - set(new_hashes)
        if missing:
            print(f"warning: no hashes found for {sorted(missing)}", file=sys.stderr)

    buildozer_set("version", f'"{version}"', target, root)
    if kind == "python":
        buildozer_set("rev", f'"{rev}"', target, root)
    if kind == "java":
        buildozer_set("zulu_version", f'"{zulu_version}"', target, root)
    buildozer_dict_set(sha256_attr, new_hashes, target, root)

    # The hashes are only half a GHC bump; the unit ids in `boot_packages.bzl`
    # move with them.
    if kind == "haskell":
        update_haskell_boot_packages(root, cells, version, new_hashes)

    print("done")


if __name__ == "__main__":
    main()
