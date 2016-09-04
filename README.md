# cargo-info
Query crates.io for crates details

Build status

 branch | status
:-------|:------:
  master| [![Build Status](https://gitlab.com/imp/cargo-info/badges/master/build.svg)](https://gitlab.com/imp/cargo-info/pipelines?scope=branches)
 develop| [![Build Status](https://gitlab.com/imp/cargo-info/badges/develop/build.svg)](https://gitlab.com/imp/cargo-info/pipelines?scope=branches)

Building on OSX 10.11+
```
export OPENSSL_INCLUDE_DIR=`brew --prefix openssl`/include
export OPENSSL_LIB_DIR=`brew --prefix openssl`/lib

cargo clean
cargo build
```
