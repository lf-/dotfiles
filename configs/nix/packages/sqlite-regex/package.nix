{ rustPlatform, fetchFromGitHub, sqlite, pkg-config }:
rustPlatform.buildRustPackage (rec {
  # FIXME: re-engineer this accursed thing to actually use the system sqlite3
  # https://github.com/asg017/sqlite-loadable-rs/tree/main/sqlite3ext-sys
  pname = "sqlite-regex";
  version = "v0.2.3";

  src = fetchFromGitHub {
    owner = "asg017";
    repo = "sqlite-regex";
    # https://github.com/asg017/sqlite-regex/tree/v0.2.3
    rev = version;
    sha256 = "sha256-Ro1oRymbaPhwAMH6D17WpwzksI+/qa9VU0GY3F90Afc=";
  };

  buildInputs = [ sqlite pkg-config ];
  nativeBuildInputs = [ rustPlatform.bindgenHook ];

  GIT_HASH = version;
  # broken git hash stuff
  preConfigure = ''
    rm build.rs
  '';

  postFixup = ''
    mv $out/lib/libsqlite_regex.so $out/lib/regex.so
  '';

  cargoSha256 = "sha256-vu2jf75EjLzPpKeTwvsqbRdUEy9bG55go2FaZxeX+4o=";
})
