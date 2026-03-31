{
  lib,
  python3,
  fetchPypi,
}:

python3.pkgs.buildPythonApplication (finalAttrs: {
  pname = "awscurl";
  version = "0.39";
  pyproject = true;

  src = fetchPypi {
    inherit (finalAttrs) pname version;
    hash = "sha256-cJtrZEnqVABFiJlPBNjd/yguxxQRqe2vkVCnZaGDu8M=";
  };

  build-system = [
    python3.pkgs.setuptools
  ];

  dependencies = with python3.pkgs; [
    awscrt
    boto3
    botocore
    configargparse
    configparser
    requests
    urllib3
  ];

  pythonImportsCheck = [
    "awscurl"
  ];

  meta = {
    description = "Curl like tool with AWS request signing";
    homepage = "https://pypi.org/project/awscurl";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ];
    mainProgram = "awscurl";
  };
})
