"""Run a fixture binary with `--output` and compare the records to a golden.

    check_results <fixture-binary> <golden.json>

Today's OSS runner never invokes `--output`, so without a committed check the
record schema would rot silently.  `time` is wall-clock and cannot be pinned;
it is checked for shape and flattened, keeping the golden exact elsewhere.
"""

import difflib
import json
import os
import subprocess
import sys
import tempfile


def normalise(records):
    for record in records:
        if "time" not in record:
            continue
        elapsed = record["time"]
        if not isinstance(elapsed, int) or isinstance(elapsed, bool) or elapsed < 0:
            raise SystemExit(f"check_results: bad `time` field: {elapsed!r}")
        record["time"] = 0
    return records


def main(argv):
    binary, golden_path = argv[1], argv[2]

    with tempfile.TemporaryDirectory() as work:
        results_path = os.path.join(work, "results.json")
        completed = subprocess.run([binary, "--output", results_path])
        if completed.returncode != 0:
            raise SystemExit(f"check_results: {binary} exited {completed.returncode}")
        if not os.path.exists(results_path):
            raise SystemExit(f"check_results: {binary} wrote no {results_path}")
        with open(results_path) as results_file:
            records = json.load(results_file)

    actual = json.dumps(normalise(records), indent=4, sort_keys=True) + "\n"
    with open(golden_path) as golden_file:
        expected = golden_file.read()

    if actual != expected:
        sys.stderr.writelines(
            difflib.unified_diff(
                expected.splitlines(keepends=True),
                actual.splitlines(keepends=True),
                fromfile=golden_path,
                tofile="actual",
            )
        )
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
