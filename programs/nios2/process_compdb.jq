#!/bin/sh
# \
exec jq -f "$0" -- "$@"
# File that cleans up a compilation database from nios 2 so that clang can
# understand it.

def bads:
    ["-mgpopt=global", "-mno-hw-div", "-mno-hw-mul", "-mno-hw-mulx"]
    ;

[.[] | . + {arguments: (.arguments - bads)} ]
