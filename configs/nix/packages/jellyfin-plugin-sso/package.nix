{ lib, fetchFromGitHub, dotnetCorePackages, buildDotnetModule, yq }:
buildDotnetModule rec {
  pname = "jellyfin-plugin-sso";
  version = "3.5.2.4";

  src = fetchFromGitHub {
    owner = "9p4";
    repo = pname;
    rev = "v${version}";
    hash = "sha256-ilpMt/2QbInbRDZMt/W9qwL3D/EOVuZ4jLObdokQ86c=";
  };

  projectFile = "SSO-Auth/SSO-Auth.csproj";
  nugetDeps = ./deps.nix;
  dotnet-sdk = dotnetCorePackages.sdk_8_0;
  dotnet-runtime = dotnetCorePackages.aspnetcore_8_0;
  dotnetBuildFlags = [ "--no-self-contained" "-p:AssemblyVersion=${version}" "-p:FileVersion=${version}" ];
  dotnetInstallFlags = [ "-p:Version=${version}" ];

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
    maintainers = [ ];
    platforms = dotnet-runtime.meta.platforms;
  };
}
