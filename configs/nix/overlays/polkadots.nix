{ polkadots }:
final: curr:
{
  polkadots = final.python3Packages.buildPythonApplication {
    pname = "polkadots";
    version = "0.0.0";
    doCheck = false;
    src = polkadots;
    # no pyproject file but nonetheless it will assume setuptools then work
    pyproject = true;
    build-system = [ final.python3Packages.setuptools ];
  };
}
