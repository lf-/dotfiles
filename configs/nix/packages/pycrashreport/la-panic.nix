{ buildPythonPackage
, fetchPypi
, setuptools
, click
, cached-property
, coloredlogs
, pytestCheckHook
}:
buildPythonPackage rec {
  pname = "la-panic";
  version = "0.5.0";
  pyproject = true;

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-UjkCXR6Wqu0fvRxKXTVXL9cM9C3daIOf8eTx0h4+J5s=";
  };

  build-system = [
    setuptools
  ];

  dependencies = [
    click
    coloredlogs
    cached-property
  ];

  nativeBuildInputs = [
    # required crash reports for testing are missing from pypi tarballs
    # pytestCheckHook
  ];

  meta = {
    description = "Parser for Apple kernel panics";
    homepage = "https://gitlab.com/yanivhasbanidev/la_panic";
  };
}
