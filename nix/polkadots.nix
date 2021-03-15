{ polkadots }:
final: curr:
{
  polkadots = curr.python3Packages.buildPythonApplication {
    pname = "polkadots";
    version = "0.0.0";
    doCheck = false;
    src = polkadots;
  };
}
