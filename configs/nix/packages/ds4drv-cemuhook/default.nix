{ python3Packages, fetchFromGitHub }:
python3Packages.ds4drv.overrideAttrs (attrs: {
  src = fetchFromGitHub {
    owner = "epigramx";
    repo = "ds4drv-cemuhook";
    rev = "0308a68447b7688a340841ff3401c2425d7f111b";
    hash = "sha256-Tjz6GkPVwllyzI1futer7yPPYUWa/hW694zXAWjW2Bs=";
  };

  propagatedBuildInputs = attrs.propagatedBuildInputs ++ [
    python3Packages.pybluez
    python3Packages.attrs
  ];
})
