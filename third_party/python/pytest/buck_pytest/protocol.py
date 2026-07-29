"""The buck test protocol, decided without ever importing pytest.

Buck's test runner talks to a `python_test` binary over the CLI contract that
`prelude//python/tools:__test_main__.py` defines: flags, test names, result
records.  This module is that contract and the mapping from pytest's vocabulary
onto it, all pure functions over records so the decisions that could actually
be wrong are testable in-memory, in bulk.  `plugin.py` feeds it pytest's
objects; `main.py` does the I/O.
"""

from __future__ import annotations

import enum
import logging
import optparse
import os
import re
from collections.abc import Iterable, Sequence
from dataclasses import dataclass

# 70 is the only failure code the protocol defines.
EXIT_CODE_SUCCESS = 0
EXIT_CODE_TEST_FAILURE = 70


class TestStatus(enum.Enum):
    """The `type` field of a result record.

    `EXCLUDED` is in the vocabulary but never emitted, matching upstream: a
    filtered-out test never runs, so there is no record to attach it to.
    """

    SUCCESS = "SUCCESS"
    FAILURE = "FAILURE"
    ASSUMPTION_VIOLATION = "ASSUMPTION_VIOLATION"
    EXCLUDED = "EXCLUDED"


class ListFormat(enum.Enum):
    BUCK = "buck"
    PYTHON = "python"


# pytest's three per-test phases, and the outcomes a phase can report.
SETUP, CALL, TEARDOWN = "setup", "call", "teardown"
PASSED, FAILED, SKIPPED = "passed", "failed", "skipped"

# Trailing `[...]` on a pytest test name is its parametrisation.
_PARAMETRISATION = re.compile(r"\[.*\]$")


@dataclass(frozen=True)
class TestName:
    """A test's identity, split into the parts the two name formats need.

    `cls` is `None` for a plain test function -- which unittest cannot express,
    so both formats degrade to dropping the class segment.  Neither format is
    injective -- a function in a submodule named like a class collides with the
    class's method -- faithfully matching upstream.
    """

    module: str
    cls: str | None
    method: str

    @property
    def case_name(self) -> str:
        """The `testCaseName` field: the class a test lives in, module-qualified."""
        return f"{self.module}.{self.cls}" if self.cls else self.module

    @property
    def buck(self) -> str:
        """`module.Class#method` -- the format `--regex` matches against."""
        return f"{self.case_name}#{self.method}"

    @property
    def python(self) -> str:
        """`method (module.Class)` -- unittest's own repr of a test."""
        return f"{self.method} ({self.case_name})"

    @property
    def dotted(self) -> str:
        """`module.Class.method` -- the form positional arguments name."""
        return f"{self.case_name}.{self.method}"

    def format(self, list_format: ListFormat) -> str:
        return self.buck if list_format is ListFormat.BUCK else self.python


def matches_argument(name: TestName, argument: str) -> bool:
    """Does `argument` select `name`?

    A positional argument names a module, class, or test, and selects everything
    under it; naming a test picks up all of its parametrisations.  The prefix
    rule applies to the unparametrised name only, so a dot inside a
    parametrisation (`test_it[1.5]`) is not a segment boundary.
    """
    unparametrised = f"{name.case_name}.{_PARAMETRISATION.sub('', name.method)}"
    return argument in (name.dotted, unparametrised) or unparametrised.startswith(
        argument + "."
    )


def selects(
    name: TestName, regex: re.Pattern[str] | None, arguments: Sequence[str]
) -> bool:
    """Whether a collected test survives `--regex` and the positional filters."""
    if regex is not None and not regex.search(name.buck):
        return False
    return not arguments or any(matches_argument(name, a) for a in arguments)


@dataclass(frozen=True)
class Phase:
    """A dumb mirror of one pytest `TestReport`, so the outcome mapping below
    can be tested without constructing pytest objects."""

    when: str
    outcome: str
    duration: float = 0.0
    message: str = ""
    stacktrace: str = ""
    stdout: str = ""
    stderr: str = ""
    xfail: bool = False


def status_of(phases: Sequence[Phase]) -> TestStatus:
    """Collapse a test's phases into the single status the wire format carries."""
    call = next((p for p in phases if p.when == CALL), None)
    if call is not None and call.xfail:
        # pytest reports an xfail as a skip and an xpass as a pass; on the wire
        # those invert to SUCCESS and FAILURE.  A *strict* xpass arrives as a
        # plain failure and falls through below.
        return TestStatus.SUCCESS if call.outcome == SKIPPED else TestStatus.FAILURE
    if any(p.outcome == FAILED for p in phases):
        # Including setup and teardown: unittest's "error" is FAILURE on the wire.
        return TestStatus.FAILURE
    if any(p.outcome == SKIPPED for p in phases):
        return TestStatus.ASSUMPTION_VIOLATION
    return TestStatus.SUCCESS


@dataclass(frozen=True)
class TestResult:
    name: TestName
    status: TestStatus
    duration_ms: int
    message: str
    stacktrace: str | None
    stdout: str
    stderr: str

    def record(self) -> dict[str, object]:
        """The JSON object `--output` writes for this test."""
        return {
            "testCaseName": self.name.case_name,
            "testCase": self.name.method,
            "type": self.status.value,
            "time": self.duration_ms,
            "message": self.message,
            "stacktrace": self.stacktrace,
            "stdOut": self.stdout,
            "stdErr": self.stderr,
        }


def result_of(name: TestName, phases: Sequence[Phase]) -> TestResult:
    """Fold a test's phases into one result record; durations sum because the
    runner wants the wall time of the whole test."""
    stacktrace = "\n".join(p.stacktrace for p in phases if p.stacktrace)
    return TestResult(
        name=name,
        status=status_of(phases),
        duration_ms=int(sum(p.duration for p in phases) * 1000),
        message=os.linesep.join(p.message for p in phases if p.message),
        stacktrace=stacktrace or None,
        stdout="".join(p.stdout for p in phases),
        stderr="".join(p.stderr for p in phases),
    )


def coverage_string(
    statements: Iterable[int], excluded: Iterable[int], missing: Iterable[int]
) -> str | None:
    """Render one file's line coverage as the runner's per-line string.

    `C`overed, e`X`cluded, `U`ncovered, `N`ot a statement -- one character per
    line, from the shape `coverage.Coverage.analysis2` returns.
    """
    statements, excluded, missing = list(statements), list(excluded), list(missing)
    line_count = max([*statements, *excluded, *missing], default=0)
    if not line_count:
        return None
    lines = ["N"] * line_count
    for marker, numbers in (("C", statements), ("X", excluded), ("U", missing)):
        for number in numbers:
            lines[number - 1] = marker
    return "".join(lines)


DEFAULT_VERBOSITY = 2

_LOG_LEVELS = {
    "debug": logging.DEBUG,
    "info": logging.INFO,
    "warn": logging.WARNING,
    "warning": logging.WARNING,
    "error": logging.ERROR,
    "critical": logging.CRITICAL,
    "fatal": logging.FATAL,
}


@dataclass(frozen=True)
class Options:
    """Everything the command line said, parsed into the domain.

    `--logger` arrives as `<category>=<level>` strings; they become `(name,
    level)` pairs at this boundary so nothing downstream re-parses them.
    """

    show_output: bool = True
    output: str | None = None
    failfast: bool = False
    list_tests: bool = False
    list_format: ListFormat = ListFormat.PYTHON
    regex: re.Pattern[str] | None = None
    collect_coverage: bool = False
    coverage_include: tuple[str, ...] = ("*",)
    coverage_omit: tuple[str, ...] = ()
    logger_levels: tuple[tuple[str, int], ...] = ()
    verbosity: int = DEFAULT_VERBOSITY
    arguments: tuple[str, ...] = ()


def option_parser() -> optparse.OptionParser:
    """The `__test_main__` option set, flag for flag -- this has to accept
    exactly what the runner already knows how to send, `-?` included."""
    op = optparse.OptionParser(usage="%prog [options] [TEST] ...", add_help_option=False)
    op.add_option(
        "--hide-output",
        dest="show_output",
        action="store_false",
        default=True,
        help="Suppress data that tests print to stdout/stderr, and only "
        "show it if the test fails.",
    )
    op.add_option(
        "-o",
        "--output",
        help="Write results to a file in a JSON format to be read by Buck",
    )
    op.add_option(
        "-f", "--failfast", action="store_true", default=False,
        help="Stop after the first failure",
    )
    op.add_option(
        "-l", "--list-tests", action="store_true", dest="list", default=False,
        help="List tests and exit",
    )
    op.add_option(
        "-L", "--list-format", dest="list_format", choices=["buck", "python"],
        default="python", help="List tests format",
    )
    op.add_option(
        "-r", "--regex", default=None,
        help="Regex to apply to tests, to only run those tests",
    )
    op.add_option(
        "--collect-coverage", action="store_true", default=False,
        help="Collect test coverage information",
    )
    op.add_option(
        "--coverage-include", default="*",
        help='File globs to include in converage (split by ",")',
    )
    op.add_option(
        "--coverage-omit", default="",
        help='File globs to omit from converage (split by ",")',
    )
    op.add_option(
        "--logger", action="append", metavar="<category>=<level>", default=[],
        help="Configure log levels for specific logger categories",
    )
    op.add_option(
        "-q", "--quiet", action="count", default=0,
        help="Decrease the verbosity (may be specified multiple times)",
    )
    op.add_option(
        "-v", "--verbosity", action="count", default=DEFAULT_VERBOSITY,
        help="Increase the verbosity (may be specified multiple times)",
    )
    op.add_option("-?", "--help", action="help", help="Show this help message and exit")
    return op


def parse_arguments(argv: Sequence[str], *, coverage_available: bool) -> Options:
    """Parse a full argv (including argv[0]) into `Options`.

    Bad input exits the process through `optparse`, as upstream does.
    """
    op = option_parser()
    parsed, arguments = op.parse_args(list(argv[1:]))

    if parsed.collect_coverage and not coverage_available:
        op.error("coverage module is not available")

    regex = None
    if parsed.regex is not None:
        try:
            regex = re.compile(parsed.regex)
        except re.error as error:
            op.error(f"invalid regex {parsed.regex!r}: {error}")

    logger_levels = []
    for value in parsed.logger:
        name, separator, level_name = value.rpartition("=")
        if not separator:
            op.error(f"--logger argument must be of the form <name>=<level>: {value}")
        level = _LOG_LEVELS.get(level_name.lower())
        if level is None:
            op.error(f"invalid log level {level_name!r} for log category {name}")
        logger_levels.append((name, level))

    return Options(
        show_output=parsed.show_output,
        output=parsed.output,
        failfast=parsed.failfast,
        list_tests=parsed.list,
        list_format=ListFormat(parsed.list_format),
        regex=regex,
        collect_coverage=parsed.collect_coverage,
        coverage_include=tuple(parsed.coverage_include.split(",")),
        coverage_omit=tuple(parsed.coverage_omit.split(",")) if parsed.coverage_omit else (),
        logger_levels=tuple(logger_levels),
        verbosity=parsed.verbosity - parsed.quiet,
        arguments=tuple(arguments),
    )


def pytest_arguments(options: Options, modules: Sequence[str], rootdir: str) -> list[str]:
    """Build pytest's argv.

    `--pyargs` with dotted module names rather than paths: under `package_style
    = "outplace"` the sources live in a link tree with no `__init__.py`, so a
    path would make pytest invent a module name.  An explicit `--rootdir`, or
    pytest anchors on whichever stray `pyproject.toml` it finds.
    """
    arguments = ["--rootdir", rootdir]

    if options.failfast:
        arguments.append("-x")

    # Upstream tees test output to the console while recording it; `--hide-output`
    # keeps pytest's default capture, which shows output only on failure.
    if options.show_output:
        arguments.append("--capture=tee-sys")

    # pytest starts at zero where `__test_main__` starts at two.
    verbosity = options.verbosity - DEFAULT_VERBOSITY
    arguments += ["-v"] * verbosity if verbosity > 0 else ["-q"] * -verbosity

    arguments.append("--pyargs")
    arguments += modules
    return arguments


def exit_code(pytest_exit_code: int) -> int:
    """Translate pytest's exit code into the runner's.

    pytest's `NO_TESTS_COLLECTED` (5) lands on failure: a target that collects
    nothing is a bug in the target, not a green suite.
    """
    return EXIT_CODE_SUCCESS if pytest_exit_code == 0 else EXIT_CODE_TEST_FAILURE
