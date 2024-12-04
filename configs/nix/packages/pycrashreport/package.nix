{ buildPythonPackage
, fetchPypi
, setuptools
, setuptools-scm
, click
, cached-property
, la-panic
}:
buildPythonPackage rec {
  pname = "pycrashreport";
  version = "1.2.5";
  pyproject = true;

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-Eppd1K/Diez+Yn0vX++bmprY6lw/Q4lD3ye57cv0aQ8=";
  };

  build-system = [
    setuptools
    setuptools-scm
  ];

  dependencies = [
    click
    cached-property
    la-panic
  ];

  meta = {
    description = "Parser for Apple crash reports";
    homepage = "https://github.com/doronz88/pycrashreport";
  };
}
