"""Tests for the mapping `buck_pytest.protocol` performs, all in memory.

That the harness as a whole exits with the right code, lists the right names
and writes the right JSON is asserted by the `sh_test` fixtures beside this
file.
"""

import logging
import re

import pytest
from hypothesis import assume, given
from hypothesis import strategies as st

from buck_pytest import protocol
from buck_pytest.protocol import Options, Phase

# Aliased, not imported under their own names: pytest tries to collect any
# module-level name beginning with `Test`, and warns when it cannot.
from buck_pytest.protocol import TestName as Name
from buck_pytest.protocol import TestStatus as Status


def phases(setup="passed", call="passed", teardown="passed", xfail=False):
    """The reports pytest emits for one test: no call phase unless setup passed."""
    reports = [Phase(protocol.SETUP, setup, duration=0.001)]
    if setup == protocol.PASSED:
        reports.append(Phase(protocol.CALL, call, duration=0.002, xfail=xfail))
    reports.append(Phase(protocol.TEARDOWN, teardown, duration=0.003))
    return reports


# ---------------------------------------------------------------------------
# Names
# ---------------------------------------------------------------------------


def test_a_method_is_named_by_its_class():
    name = Name("pkg.test_mod", "TestThing", "test_it")
    assert name.buck == "pkg.test_mod.TestThing#test_it"
    assert name.python == "test_it (pkg.test_mod.TestThing)"
    assert name.case_name == "pkg.test_mod.TestThing"


def test_a_bare_function_drops_the_class_segment():
    # The one place the two name formats had to be extended rather than copied.
    name = Name("pkg.test_mod", None, "test_it")
    assert name.buck == "pkg.test_mod#test_it"
    assert name.python == "test_it (pkg.test_mod)"


# ---------------------------------------------------------------------------
# Filtering
# ---------------------------------------------------------------------------

PARAMETRISED = Name("pkg.test_mod", "TestThing", "test_it[1-2]")


@pytest.mark.parametrize(
    "argument",
    [
        "pkg",
        "pkg.test_mod",
        "pkg.test_mod.TestThing",
        "pkg.test_mod.TestThing.test_it",  # every parametrisation of a test
        "pkg.test_mod.TestThing.test_it[1-2]",  # or exactly one of them
    ],
)
def test_a_positional_argument_selects_everything_beneath_it(argument):
    assert protocol.selects(PARAMETRISED, None, [argument])


@pytest.mark.parametrize(
    "argument",
    ["pk", "pkg.test_mo", "pkg.test_mod.TestOther", "test_mod", "other"],
)
def test_a_positional_argument_does_not_match_half_a_segment(argument):
    assert not protocol.selects(PARAMETRISED, None, [argument])


def test_the_regex_applies_to_the_buck_name():
    # `--regex` is documented against `module.Class#method`, so `#` is matchable
    # and the python format's parentheses are not.
    assert protocol.selects(PARAMETRISED, re.compile(r"TestThing#test_it"), [])
    assert not protocol.selects(PARAMETRISED, re.compile(r"test_it \("), [])


def test_the_regex_and_the_arguments_both_have_to_agree():
    assert not protocol.selects(PARAMETRISED, re.compile("nope"), ["pkg"])
    assert not protocol.selects(PARAMETRISED, re.compile("TestThing"), ["other"])


identifiers = st.from_regex(r"\A[A-Za-z_][A-Za-z0-9_]{0,8}\Z")
module_names = st.lists(identifiers, min_size=1, max_size=3).map(".".join)
names = st.builds(Name, module_names, st.none() | identifiers, identifiers)


@given(name=names)
def test_a_test_is_always_selected_by_its_own_name(name):
    assert protocol.selects(name, None, [name.dotted])
    assert protocol.selects(name, None, [name.module])
    assert protocol.selects(name, re.compile(re.escape(name.buck)), [])


parametrised_names = st.builds(
    lambda name, p: Name(name.module, name.cls, f"{name.method}[{p}]"),
    names,
    st.text("ab.0-", min_size=1, max_size=6),
)


@given(name=parametrised_names, data=st.data())
def test_an_argument_cut_short_inside_the_brackets_selects_nothing(name, data):
    # Parametrisation ids may contain dots (`test_it[1.5]`); a dot inside the
    # brackets is not a segment boundary for the prefix rule.
    dotted = name.dotted
    cut = data.draw(st.integers(dotted.index("[") + 1, len(dotted) - 1))
    assert not protocol.selects(name, None, [dotted[:cut]])


# ---------------------------------------------------------------------------
# Outcomes
# ---------------------------------------------------------------------------

OUTCOMES = [
    ("a test that passes", phases(), Status.SUCCESS),
    ("a test that fails", phases(call="failed"), Status.FAILURE),
    ("a test skipped in setup", phases(setup="skipped"), Status.ASSUMPTION_VIOLATION),
    ("a test that skips itself", phases(call="skipped"), Status.ASSUMPTION_VIOLATION),
    ("a test whose fixture blows up", phases(setup="failed"), Status.FAILURE),
    ("a test whose teardown blows up", phases(teardown="failed"), Status.FAILURE),
    # pytest reports an xfail as a skip and an xpass as a pass; unittest calls
    # them EXPECTED_FAILURE and UNEXPECTED_SUCCESS, which invert both of those.
    ("an xfail that failed as expected", phases(call="skipped", xfail=True), Status.SUCCESS),
    ("an xfail that passed unexpectedly", phases(call="passed", xfail=True), Status.FAILURE),
]


@pytest.mark.parametrize(
    "reports,expected",
    [(reports, expected) for _, reports, expected in OUTCOMES],
    ids=[description for description, _, _ in OUTCOMES],
)
def test_outcomes_map_onto_the_wire_vocabulary(reports, expected):
    assert protocol.status_of(reports) is expected


outcomes = st.sampled_from(["passed", "failed", "skipped"])


@given(setup=outcomes, call=outcomes, teardown=outcomes)
def test_a_failure_in_any_phase_fails_the_test(setup, call, teardown):
    reports = phases(setup, call, teardown)
    assume(any(report.outcome == protocol.FAILED for report in reports))
    assert protocol.status_of(reports) is Status.FAILURE


# ---------------------------------------------------------------------------
# Result records
# ---------------------------------------------------------------------------


def test_the_phases_of_a_test_add_up_to_its_duration():
    reports = [
        Phase(protocol.SETUP, "passed", duration=0.001),
        Phase(protocol.CALL, "passed", duration=0.25),
        Phase(protocol.TEARDOWN, "passed", duration=0.004),
    ]
    assert protocol.result_of(PARAMETRISED, reports).duration_ms == 255


def test_output_from_every_phase_reaches_the_record():
    reports = [
        Phase(protocol.SETUP, "passed", stdout="fixture\n"),
        Phase(protocol.CALL, "passed", stdout="body\n", stderr="warning\n"),
        Phase(protocol.TEARDOWN, "passed", stdout="cleanup\n"),
    ]
    result = protocol.result_of(PARAMETRISED, reports)
    assert result.stdout == "fixture\nbody\ncleanup\n"
    assert result.stderr == "warning\n"


def test_a_test_that_did_not_fail_has_no_stacktrace():
    # `null` rather than `""`, matching what upstream writes for a passing test.
    assert protocol.result_of(PARAMETRISED, phases()).stacktrace is None


# ---------------------------------------------------------------------------
# Coverage
# ---------------------------------------------------------------------------


def test_a_file_with_no_lines_has_no_coverage_string():
    assert protocol.coverage_string([], [], []) is None


def test_a_missing_line_reads_as_uncovered_even_though_it_is_a_statement():
    # coverage.py reports a line in both lists; uncovered has to win, or an
    # untested file would read as fully covered.
    assert protocol.coverage_string([1, 2], [], [2]) == "CU"


def test_a_gap_between_statements_is_not_a_statement():
    assert protocol.coverage_string([1, 4], [], []) == "CNNC"


@given(lines=st.lists(st.integers(1, 200), unique=True, min_size=1))
def test_every_covered_line_is_marked_and_nothing_else_is(lines):
    # Deliberately unsorted: nothing about `Iterable[int]` promises order.
    covered = protocol.coverage_string(lines, [], [])
    assert len(covered) == max(lines)
    assert {index + 1 for index, mark in enumerate(covered) if mark == "C"} == set(lines)


# ---------------------------------------------------------------------------
# The command line
# ---------------------------------------------------------------------------


def parse(*argv, coverage_available=True):
    return protocol.parse_arguments(
        ["buck_pytest", *argv], coverage_available=coverage_available
    )


def test_verbosity_counts_up_from_two_and_back_down():
    assert parse().verbosity == protocol.DEFAULT_VERBOSITY
    assert parse("-v", "-v").verbosity == protocol.DEFAULT_VERBOSITY + 2
    assert parse("-q").verbosity == protocol.DEFAULT_VERBOSITY - 1


def test_omitting_nothing_is_an_empty_list_not_an_empty_glob():
    # `"".split(",")` is `[""]`, a glob that would omit everything.
    assert parse().coverage_omit == ()
    assert parse("--coverage-omit", "c/*,d/*").coverage_omit == ("c/*", "d/*")


def test_a_logger_specification_is_parsed_into_a_level():
    assert parse("--logger", "a.b=debug").logger_levels == (("a.b", logging.DEBUG),)


@pytest.mark.parametrize("specification", ["a.b", "a.b=loud"])
def test_a_bad_logger_specification_is_refused(specification):
    with pytest.raises(SystemExit):
        parse("--logger", specification)


def test_a_malformed_regex_is_refused_rather_than_thrown():
    # It arrives from a human via `--test-arg`, so a usage error beats a
    # traceback out of the middle of collection.
    with pytest.raises(SystemExit):
        parse("--regex", "test_(")


def test_an_empty_category_names_the_root_logger():
    # Upstream splits on the last `=` and accepts this, and `getLogger("")` is
    # the root logger -- so it is a thing to want rather than a typo to catch.
    assert parse("--logger", "=info").logger_levels == (("", logging.INFO),)


@given(verbosity=st.integers(0, 6))
def test_verbosity_is_rebased_onto_pytest_s_scale(verbosity):
    # `__test_main__` counts from 2 where pytest counts from 0.
    arguments = protocol.pytest_arguments(Options(verbosity=verbosity), [], "/root")
    delta = arguments.count("-v") - arguments.count("-q")
    assert delta == verbosity - protocol.DEFAULT_VERBOSITY
