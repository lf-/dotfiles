# cargo-info
Query crates.io for crates details

Build status

 branch | status
:-------|:------:
  master| [![Build Status](https://travis-ci.org/imp/cargo-info.svg?branch=master)](https://travis-ci.org/imp/cargo-info)
 develop| [![Build Status](https://travis-ci.org/imp/cargo-info.svg?branch=develop)](https://travis-ci.org/imp/cargo-info)

Building on OSX 10.11+
```
export OPENSSL_INCLUDE_DIR=`brew --prefix openssl`/include
export OPENSSL_LIB_DIR=`brew --prefix openssl`/lib

cargo clean
cargo build
```
