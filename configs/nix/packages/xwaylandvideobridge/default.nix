{ lib
, stdenv
, fetchFromGitLab
, cmake
, extra-cmake-modules
, wrapQtAppsHook
, qtx11extras
, kdoctools
, kio
, kpipewire
}:
let
  kpipewire' = kpipewire.overrideAttrs (attrs: {
    src = fetchFromGitLab {
      owner = "plasma";
      repo = "kpipewire";
      domain = "invent.kde.org";
      rev = "c21da54fef3d0c1f35c73c57e8a6a61b053b07bf";
      hash = "sha256-xcuSWURiyY9iuayeY9w6G59UJTbYXyPWGg8x+EiXNsY=";
    };
    version = "5.27.5";
  });
in
stdenv.mkDerivation {
  pname = "xwaylandvideobridge";
  version = "2023-05-13-git";

  src = fetchFromGitLab {
    owner = "system";
    repo = "xwaylandvideobridge";
    domain = "invent.kde.org";
    rev = "f769cd107667045ee2f1b11ec85b1b9564f31cb9";
    hash = "sha256-vm6Nh0v4RtKZcyiFSk0PUnUBkUztt/gDcSPV2+XsANo=";
  };

  nativeBuildInputs = [
    cmake
    extra-cmake-modules
    kdoctools
    wrapQtAppsHook
  ];

  buildInputs = [
    qtx11extras
    kio
    kpipewire'
  ];

  meta = {
    description = "Utility to allow streaming Wayland windows to X applications";
    homepage = "https://invent.kde.org/system/xwaylandvideobridge";
    license = lib.licenses.gpl2Plus;
    platforms = with lib.platforms; linux;
    maintainers = with lib.maintainers; [ lf- ];
  };
}
