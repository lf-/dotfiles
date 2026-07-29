# A `python_test` that runs under pytest: the prelude's `__test_main__` is a
# unittest loader that cannot serve a fixture, and `main_module` is the
# documented hook for swapping it out. This macro is that swap plus the
# dependency it needs -- no custom rule involved. The pytest wheel itself
# (`//third_party/python:pytest`, a different package!) arrives transitively
# through `:main`, so a consumer names neither.

def pytest(*, name, srcs, deps = [], **kwargs):
    native.python_test(
        name = name,
        srcs = srcs,
        main_module = "buck_pytest.main",
        deps = deps + ["//third_party/python/pytest:main"],
        **kwargs
    )
