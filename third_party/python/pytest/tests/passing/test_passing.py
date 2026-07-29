"""A green suite for the `--output` and `--list-tests` goldens: one of each
interesting shape, none of which may fail."""

import sys

import pytest


def test_bare_function():
    assert True


class TestMethods:
    def test_method_on_a_class(self):
        assert True


@pytest.mark.parametrize("value", [1, 2])
def test_parametrised(value):
    assert value


@pytest.mark.skip(reason="nothing to do here")
def test_skipped():
    raise AssertionError("never runs")


@pytest.mark.xfail(reason="known broken")
def test_expected_failure():
    assert 2 + 2 == 5


def test_writes_to_both_streams():
    print("hello from stdout")
    print("hello from stderr", file=sys.stderr)
