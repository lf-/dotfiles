"""`main_module` for a `pytest()` target: argv in, exit code out.

Stands in for the prelude's `__test_main__` -- a unittest loader that cannot
serve a pytest fixture -- and drives pytest instead, answering the same command
line.  Only the wiring lives here: what the flags mean is in `protocol`, how
pytest's objects become results is in `plugin`.
"""

from __future__ import annotations

import contextlib
import io
import json
import logging
import os
import sys

import pytest

from buck_pytest import protocol
from buck_pytest.plugin import BuckPytestPlugin
from buck_pytest.protocol import Options

try:
    import coverage
except ImportError:
    coverage = None


class _StderrLogHandler(logging.StreamHandler):
    """Reads `sys.stderr` afresh on every record: `StreamHandler` caches its
    stream, which is wrong under capture that replaces `sys.stderr`."""

    def __init__(self) -> None:
        logging.Handler.__init__(self)

    @property
    def stream(self):
        return sys.stderr


def _configure_logging(options: Options) -> None:
    handler = _StderrLogHandler()
    handler.setFormatter(logging.Formatter("%(pathname)s:%(lineno)s: %(message)s"))
    root = logging.getLogger()
    root.addHandler(handler)
    root.setLevel(logging.INFO)
    for name, level in options.logger_levels:
        logging.getLogger(name).setLevel(level)


def _test_modules() -> tuple[list[str], str]:
    """The modules to collect, and the directory to root pytest at.

    `python_test` generates `__test_modules__` from the target's `srcs`.  The
    directory holding it is the root of the link tree: the import root the
    dotted names resolve against, with no stray `pyproject.toml`.
    """
    try:
        import __test_modules__
    except ImportError:
        sys.exit(
            "buck_pytest: no __test_modules__ to collect. This module is the "
            "main_module of a python_test (or of a python_binary with a "
            "hand-written __test_modules__ alongside it)."
        )

    path = getattr(__test_modules__, "__file__", None)
    rootdir = os.path.dirname(os.path.abspath(path)) if path else os.getcwd()
    return list(__test_modules__.TEST_MODULES), rootdir


class _Coverage:
    """Upstream's coverage handling: coverage.py driven directly, because the
    runner wants per-line strings rather than pytest-cov's report."""

    def __init__(self, options: Options) -> None:
        self._options = options
        self._coverage = None
        self._working_directory = os.getcwd()

    def start(self) -> None:
        if not self._options.collect_coverage:
            return
        self._coverage = coverage.Coverage(
            include=list(self._options.coverage_include),
            omit=list(self._options.coverage_omit),
        )
        self._coverage.erase()
        self._coverage.start()

    def finish(self) -> dict[str, str] | None:
        if self._coverage is None:
            return None
        # A test may have chdir'd; coverage resolves its paths relative to cwd.
        os.chdir(self._working_directory)
        self._coverage.stop()

        if self._options.show_output:
            self._coverage.report(file=sys.stdout)

        report = io.StringIO()
        try:
            self._coverage.report(file=report)
        except coverage.misc.CoverageException:
            # Nothing was covered. That's fine by us.
            return {}

        results = {}
        for line in report.getvalue().split("\n")[2:]:
            if line.strip("-") == "":
                break
            name = line.split()[0]
            _, statements, excluded, missing, _ = self._coverage.analysis2(name)
            covered = protocol.coverage_string(statements, excluded, missing)
            if covered:
                results[name] = covered
        return results


def _list_tests(options: Options, arguments: list[str], plugin: BuckPytestPlugin) -> int:
    """Collect without running, then print the names in the requested format.

    pytest's own report of the collected set is held back, surfaced only if
    collection failed.
    """
    captured = io.StringIO()
    with contextlib.redirect_stdout(captured):
        code = pytest.main([*arguments, "--collect-only"], plugins=[plugin])

    if code != 0:
        sys.stderr.write(captured.getvalue())
        return protocol.exit_code(code)

    for name in plugin.names:
        print(name.format(options.list_format))
    return protocol.EXIT_CODE_SUCCESS


def _run_tests(options: Options, arguments: list[str], plugin: BuckPytestPlugin) -> int:
    coverage_run = _Coverage(options)
    coverage_run.start()
    code = pytest.main(arguments, plugins=[plugin])

    records: list[dict[str, object]] = [result.record() for result in plugin.results]
    covered = coverage_run.finish()
    if covered is not None:
        records.append({"coverage": covered})

    if options.output is not None:
        with open(options.output, "w") as output:
            json.dump(records, output, indent=4, sort_keys=True)

    return protocol.exit_code(code)


def main(argv: list[str]) -> int:
    options = protocol.parse_arguments(argv, coverage_available=coverage is not None)
    _configure_logging(options)

    modules, rootdir = _test_modules()
    arguments = protocol.pytest_arguments(options, modules, rootdir)
    plugin = BuckPytestPlugin(options)

    if options.list_tests:
        return _list_tests(options, arguments, plugin)
    return _run_tests(options, arguments, plugin)


if __name__ == "__main__":
    sys.exit(main(sys.argv))
