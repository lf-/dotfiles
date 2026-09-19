/* Shared between `main.c` and `hello.cpp`, so both compilers see it. */
#ifndef TOOLCHAINS_TEST_CXX_SMOKE_HELLO_H
#define TOOLCHAINS_TEST_CXX_SMOKE_HELLO_H

#ifdef __cplusplus
extern "C" {
#endif

/* `__VERSION__` as the C++ half of the toolchain spells it. */
const char *hello_cxx_version(void);

/* Computed through libc++, so a missing C++ runtime fails the link. */
int hello_cxx_answer(void);

#ifdef __cplusplus
}
#endif

#endif
