{ aiobspwm, aiopanel }:
final: curr:
let
  aiobspwm' = curr.python3Packages.buildPythonPackage {
    pname = "aiobspwm";
    version = "0.0.0";
    doCheck = false;
    src = aiobspwm;
  };
in
{
  aiopanel = curr.python3Packages.buildPythonApplication {
    pname = "aiopanel";
    version = "0.0.0";
    doCheck = false;
    src = aiopanel;
    propagatedBuildInputs = (with curr.python3Packages; [ jinja2 pydbus gbulb pulsectl ])
      ++ [aiobspwm'];
  };
}
