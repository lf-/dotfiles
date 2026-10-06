/* Stands in for what network's ./configure would generate (its
 * include/HsNetworkConfig.h.in), answered by hand for the platforms the
 * hermetic toolchains target: darwin and glibc Linux. The checks are listed
 * in network's configure.ac; re-check it when bumping network. */

/* Also read by GHC's CPP, which runs with -undef: there only GHC's own
 * <os>_HOST_OS macros exist. */
#if defined(__APPLE__) || defined(darwin_HOST_OS)
#define HSNET_CONFIG_DARWIN 1
#elif defined(__linux__) || defined(linux_HOST_OS)
#define HSNET_CONFIG_LINUX 1
#else
#error "HsNetworkConfig.h: no answers for this platform"
#endif

#define HAVE_ARPA_INET_H 1
#define HAVE_FCNTL_H 1
#define HAVE_INTTYPES_H 1
#define HAVE_LIMITS_H 1
#define HAVE_NETDB_H 1
#define HAVE_NETINET_IN_H 1
#define HAVE_NETINET_TCP_H 1
#define HAVE_NET_IF_H 1
#define HAVE_STDINT_H 1
#define HAVE_STDIO_H 1
#define HAVE_STDLIB_H 1
#define HAVE_STRINGS_H 1
#define HAVE_STRING_H 1
#define HAVE_SYS_SOCKET_H 1
#define HAVE_SYS_STAT_H 1
#define HAVE_SYS_TYPES_H 1
#define HAVE_SYS_UIO_H 1
#define HAVE_SYS_UN_H 1
#define HAVE_UNISTD_H 1
#define STDC_HEADERS 1

#define HAVE_GAI_STRERROR 1
#define HAVE_GETHOSTENT 1

#define HAVE_DECL_AI_ADDRCONFIG 1
#define HAVE_DECL_AI_ALL 1
#define HAVE_DECL_AI_NUMERICSERV 1
#define HAVE_DECL_AI_V4MAPPED 1
#define HAVE_DECL_IPPROTO_IP 1
#define HAVE_DECL_IPPROTO_IPV6 1
#define HAVE_DECL_IPPROTO_TCP 1
#define HAVE_DECL_IPV6_V6ONLY 1

#define HAVE_STRUCT_MSGHDR_MSG_CONTROL 1

#ifdef HSNET_CONFIG_DARWIN
#define HAVE_GETPEEREID 1
#define HAVE_STRUCT_SOCKADDR_SA_LEN 1
#define HAVE_DECL_SO_PEERCRED 0
#define HAVE_DECL_IP_DONTFRAG 1
#define HAVE_DECL_IP_MTU_DISCOVER 0
#endif

#ifdef HSNET_CONFIG_LINUX
#define HAVE_ACCEPT4 1
#define HAVE_STRUCT_UCRED 1
#define HAVE_DECL_SO_PEERCRED 1
#define HAVE_DECL_IP_DONTFRAG 0
#define HAVE_DECL_IP_MTU_DISCOVER 1
#endif

#define PACKAGE_BUGREPORT "libraries@haskell.org"
#define PACKAGE_NAME "Haskell network package"
#define PACKAGE_TARNAME "network"
#define PACKAGE_URL ""
