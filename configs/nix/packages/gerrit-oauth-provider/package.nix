{ fetchFromGitHub, buildBazelPackage, bazel_5, git, curl, jdk, breakpointHook }:
let
  # bazel needs the literal git commit but we also need a version number
  # Please update both when updating the package.
  srcVer = {
    version = "3.5.1";
    rev = "d21d1721f15e6dc0db4145724e608d5c416e692d";
    hash = "sha256-EPyBDFxZxmHeu0/Snt8Ik5FdqdSDrmo8ntSMu/SEFjg=";
  };
in
buildBazelPackage {
  pname = "gerrit-oauth-provider";
  version = srcVer.version;

  bazel = bazel_5;
  bazelFlags = [
    "--java_runtime_version=local_jdk"
    "--tool_java_runtime_version=local_jdk"
  ];


  src = fetchFromGitHub {
    owner = "davido";
    repo = "gerrit-oauth-provider";
    rev = "v${srcVer.version}";
    hash = srcVer.hash;

    # nah let's try not building bazel from source
    postFetch = ''
      chmod -R +w $out
      rm $out/.bazelversion
      echo ${srcVer.rev} > $out/SOURCE_VERSION
    '';
  };

  nativeBuildInputs = [
    git
    curl
    jdk
    breakpointHook
  ];

  bazelTargets = [ "gerrit-oauth-provider" ];
  fetchAttrs = {
    sha256 = "sha256-aUINeqwk0XLbnUS5va2nZM3O+PWeNz9Rxzf/bmMC0EI=";
    # copypasta from BUILD under gerrit_plugin, deps
    bazelFetchFlags = [ "--all" ];
    bazelTargets = [
      "//..."
      # "@commons-codec//jar:neverlink"
      # "@jackson-core//jar"
      # "@jackson-databind//jar"
      # "@scribejava-apis//jar"
      # "@scribejava-core//jar"
    ];
  };
  buildAttrs = {
    bazelTestFlags = [ "--nofetch" ];
    bazelBuildFlags = [ "--nofetch" ];
  };
}
