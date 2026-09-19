/* Proves `toolchains//:cxx` compiles and links C and C++ together, and that it
 * is the compiler it is supposed to be. Nothing else in the repo is a
 * first-party `cxx_binary`, so without this a bad toolchain edit surfaces as a
 * silent fallback.
 *
 * The version checks are deliberately loose -- they assert the *identity* of
 * the toolchain, not its version, so bumping zig does not have to edit this
 * file.
 *
 * Everywhere but macOS the toolchain is the hermetic `zig cc`, so `__VERSION__`
 * must say clang and must not say Apple: that rules out both compilers this
 * replaced, since gcc's `__VERSION__` is a bare version number and Apple
 * clang's says "Apple". macOS is still Apple's own clang -- see
 * `hermetic_zig_toolchain.bzl` for why -- so there it only has to be clang. */

#include <ctype.h>
#include <stdio.h>
#include <string.h>

#include "hello.h"

#ifdef __APPLE__
#define HERMETIC_CXX 0
#else
#define HERMETIC_CXX 1
#endif

static int contains_fold(const char *haystack, const char *needle) {
  size_t n = strlen(needle);
  for (; strlen(haystack) >= n; haystack++) {
    size_t i;
    for (i = 0; i < n; i++) {
      if (tolower((unsigned char)haystack[i]) != tolower((unsigned char)needle[i])) {
        break;
      }
    }
    if (i == n) {
      return 1;
    }
  }
  return 0;
}

static int failures = 0;

static void check(int ok, const char *message) {
  if (!ok) {
    printf("FAIL: %s\n", message);
    failures++;
  }
}

static void check_version(const char *what, const char *version) {
  printf("%s __VERSION__: %s\n", what, version);
  check(contains_fold(version, "clang"), "not a clang driver -- system gcc?");
  if (HERMETIC_CXX) {
    check(!contains_fold(version, "apple"), "Apple clang -- not the hermetic toolchain");
  }
}

int main(void) {
  check_version("c  ", __VERSION__);
  check_version("c++", hello_cxx_version());
  check(hello_cxx_answer() == 42, "the C++ half is not doing arithmetic");

  if (failures) {
    return 1;
  }
  puts("ok");
  return 0;
}
