/* Stands in for what unix-time's ./configure would generate (its
 * cbits/config.h.in), for the platforms the hermetic toolchains target:
 * darwin and glibc Linux. The Linux answers are configure's own on glibc; the
 * darwin ones are by hand. The checks are listed in unix-time's configure.ac;
 * re-check it when bumping unix-time. Only cbits/conv.c includes this. */

#if defined(__APPLE__)
#define IS_LINUX 0
#define HAVE_XLOCALE_H 1
#elif defined(__linux__)
#define IS_LINUX 1
#else
#error "unix-time config.h: no answers for this platform"
#endif

#define IS_NT61 0

#define HAVE_INTTYPES_H 1
#define HAVE_MEMORY_H 1
#define HAVE_STDINT_H 1
#define HAVE_STDLIB_H 1
#define HAVE_STRINGS_H 1
#define HAVE_STRING_H 1
#define HAVE_SYS_STAT_H 1
#define HAVE_SYS_TYPES_H 1
#define HAVE_UNISTD_H 1
#define STDC_HEADERS 1

#define HAVE_STRPTIME_L 1
#define HAVE_STRTOLL_L 1
#define HAVE_STRTOL_L 1
#define HAVE_TIMEGM 1
#define HAVE_DECL__MKGMTIME 0
