"""The pytest half: hooks in, `protocol` records out.

Knows about pytest's objects and nothing about what they mean -- every
interpretation lives in `protocol`, where it can be tested without pytest in
the room.
"""

from __future__ import annotations

from buck_pytest import protocol
from buck_pytest.protocol import Options, Phase, TestName, TestResult


def name_of(item) -> TestName:
    """The buck-style identity of a collected pytest item.

    From the item's own module and class, not its node id: the node id is a
    file path and the protocol wants the dotted module name.  An item with no
    module falls back to its node id -- unique and greppable, not a crash.
    """
    module = getattr(item, "module", None)
    cls = getattr(item, "cls", None)
    return TestName(
        module=module.__name__ if module is not None else item.nodeid,
        cls=cls.__name__ if cls is not None else None,
        method=item.name,
    )


def phase_of(report) -> Phase:
    """Mirror one pytest `TestReport` into the pure record `protocol` folds."""
    return Phase(
        when=report.when,
        outcome=report.outcome,
        duration=report.duration,
        message=_message(report),
        # Only a failure has a traceback worth carrying; a skip's `longrepr` is
        # a (path, lineno, reason) tuple whose str() is just noise.
        stacktrace=report.longreprtext if report.failed else "",
        stdout=_captured(report, "stdout"),
        stderr=_captured(report, "stderr"),
        xfail=hasattr(report, "wasxfail"),
    )


def _captured(report, stream: str) -> str:
    """The output of just this phase -- not `report.capstdout`, which is
    cumulative and would count the test body twice once phases are summed."""
    section = f"Captured {stream} {report.when}"
    return "".join(content for name, content in report.sections if name == section)


def _message(report) -> str:
    """The one-line summary of why a phase did not pass, matching upstream's
    `"{ExceptionType}: {value}"` -- which is what `reprcrash.message` holds."""
    if report.passed:
        return ""
    longrepr = report.longrepr
    if longrepr is None:
        return ""
    if isinstance(longrepr, tuple):
        return longrepr[2]
    crash = getattr(longrepr, "reprcrash", None)
    return crash.message if crash is not None else report.longreprtext


class BuckPytestPlugin:
    """Collects the run into `results`, in collection order."""

    def __init__(self, options: Options) -> None:
        self._options = options
        self._names: dict[str, TestName] = {}
        self._phases: dict[str, list[Phase]] = {}
        self.results: list[TestResult] = []

    @property
    def names(self) -> list[TestName]:
        """The selected tests, for `--list-tests`."""
        return list(self._names.values())

    def pytest_collection_modifyitems(self, config, items) -> None:
        selected, deselected = [], []
        for item in items:
            name = name_of(item)
            if protocol.selects(name, self._options.regex, self._options.arguments):
                self._names[item.nodeid] = name
                selected.append(item)
            else:
                deselected.append(item)
        if deselected:
            config.hook.pytest_deselected(items=deselected)
        items[:] = selected

    def pytest_runtest_logreport(self, report) -> None:
        name = self._names.get(report.nodeid)
        if name is None:
            return
        phases = self._phases.setdefault(report.nodeid, [])
        phases.append(phase_of(report))
        # teardown is the last report a test produces, so the record is complete.
        if report.when == protocol.TEARDOWN:
            self.results.append(protocol.result_of(name, self._phases.pop(report.nodeid)))
