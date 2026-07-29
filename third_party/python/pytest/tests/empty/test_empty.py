"""A test module holding no tests at all: collecting nothing is a bug in the
target, so this must not exit 0."""


def helper_that_is_not_a_test():
    return 42
