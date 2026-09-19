// The C++ half of the smoke test: `cxx_binary` has to pick the C++ driver for
// this file and the C driver for `main.c`, and link both against libc++.

#include "hello.h"

#include <numeric>
#include <string>
#include <vector>

extern "C" const char *hello_cxx_version(void) { return __VERSION__; }

extern "C" int hello_cxx_answer(void) {
  // Deliberately going through <string> and <numeric> rather than doing the
  // arithmetic inline: this is what makes the link need a C++ runtime.
  const std::string digits = "0123456789";
  std::vector<int> values;
  for (char digit : digits) {
    values.push_back(digit - '0');
  }
  return std::accumulate(values.begin(), values.end(), 0) - 3;
}
