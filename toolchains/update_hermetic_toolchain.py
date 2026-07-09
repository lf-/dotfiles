#!/usr/bin/env python3
"""Fetch upstream SHA256 hashes and update a hermetic toolchain target via buildozer.

Usage:
    buck run toolchains//:update_hermetic_toolchain -- <rust|go> <target> <version>

Examples:
    buck run toolchains//:update_hermetic_toolchain -- rust toolchains//:rust 1.87.0
    buck run toolchains//:update_hermetic_toolchain -- go  toolchains//:go  1.23.5
"""

import ast
import configparser
import json
import os
import re
import subprocess
import sys
import urllib.request


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


def main():
    if len(sys.argv) < 4:
        print(__doc__, file=sys.stderr)
        sys.exit(1)

    kind, label, version = sys.argv[1], sys.argv[2], sys.argv[3]
    if kind not in ("rust", "go"):
        sys.exit(f"error: unknown toolchain kind {kind!r} — expected 'rust' or 'go'")

    root = find_workspace_root()
    cells = read_cells(root)
    target = buck2_to_buildozer_label(label, cells)
    sha256_attr = "sha256s" if kind == "rust" else "sha256"

    print(f"updating {kind} toolchain {target} to version {version}")

    current = parse_starlark_string_dict(buildozer_print(sha256_attr, target, root))

    new_hashes = {}
    if kind == "rust":
        triples = list(current)
        print(f"triples: {triples}")
        for triple in triples:
            new_hashes[triple] = fetch_rust_sha256(version, triple)
            print(f"  {triple}: {new_hashes[triple]}")
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
    buildozer_dict_set(sha256_attr, new_hashes, target, root)
    print("done")


if __name__ == "__main__":
    main()
