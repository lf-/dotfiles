"""A suite with one broken test, run only to watch the harness go red: a runner
that always exits 0 is indistinguishable from a green suite."""


def test_that_passes():
    assert 2 + 2 == 4


def test_that_fails():
    assert 2 + 2 == 5
