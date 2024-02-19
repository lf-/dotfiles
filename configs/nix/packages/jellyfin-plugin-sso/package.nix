{ lib, fetchFromGitHub, dotnetCorePackages, buildDotnetModule, yq }:
buildDotnetModule rec {
  pname = "jellyfin-plugin-sso";
  version = "3.5.2.2";

  src = fetchFromGitHub {
    owner = "9p4";
    repo = pname;
    rev = "v${version}";
    hash = "sha256-Ei9OpkhaftqrvNU90f/Xq74T62sFDHr4Pa2GvhJx0ug=";
  };

  projectFile = "SSO-Auth/SSO-Auth.csproj";
  nugetDeps = ./deps.nix;
  dotnet-sdk = dotnetCorePackages.sdk_6_0;
  dotnet-runtime = dotnetCorePackages.aspnetcore_6_0;
  dotnetBuildFlags = [ "--no-self-contained" ];

  nativeBuildInputs = [ yq ];

  yqScript = ''
    {
      guid: .guid,
      name: .name,
      description: .description,
      overview: .overview,
      owner: .owner,
      category: .category,
      targetAbi: .targetAbi,
      changelog: .changelog,
      timestamp: "2000-01-01T00:00:00Z",
      version: "${version}",
      imageUrl: .imageUrl
    }
  '';

  fixupPhase = ''
    artifacts=("IdentityModel.OidcClient.dll" "IdentityModel.dll" "SSO-Auth.dll" "SSO-Auth.pdb")
    for artifact in "''${artifacts[@]}"; do
      mv $out/lib/jellyfin-plugin-sso/$artifact $out
    done
    rm -rf $out/lib
    yq "$yqScript" build.yaml > $out/meta.json
  '';

  meta = with lib; {
    description = "SSO plugin for Jellyfin";
    homepage = "https://github.com/9p4/jellyfin-plugin-sso";
    license = licenses.gpl3Only;
    maintainers = with lib.maintainers; [ lf- ];
    platforms = dotnet-runtime.meta.platforms;
  };
}
