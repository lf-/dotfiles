{ lib, fetchFromGitHub, dotnetCorePackages, buildDotnetModule, yq }:
buildDotnetModule rec {
  pname = "jellyfin-plugin-sso";
  version = "4.0.0.3";

  src = fetchFromGitHub {
    owner = "9p4";
    repo = pname;
    rev = "v${version}";
    hash = "sha256-xaOqKX1sRTpFN/SuiYAnIc4wIM4eiz+JMqHWQp2xHf8=";
  };

  prePatch = ''
    # you dont need f# lol
    rm -rf SSO-Auth/Lib
    substituteInPlace SSO-Auth/Api/SSOController.cs --replace-fail 'using SSO_Auth.Lib;' ""
  '';

  projectFile = "SSO-Auth/SSO-Auth.csproj";
  nugetDeps = ./deps.json;
  dotnet-sdk = dotnetCorePackages.sdk_9_0;
  dotnet-runtime = dotnetCorePackages.aspnetcore_9_0;
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
    ls -R $out
    artifacts=("Duende.IdentityModel.dll" "Duende.IdentityModel.OidcClient.dll" "SSO-Auth.dll" "SSO-Auth.pdb")
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
