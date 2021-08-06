let sources = import ../nix/sources.nix;
    nixpkgs = import sources.nixpkgs { };
    #nixpkgs = import ../nixpkgs { };
    nixops = import sources.nixops;
    # there's something broken with latest nixpkgs which we were accidentally using on here before
    # TODO: diagnose it
    inherit (nixpkgs) mkShell;
in
mkShell {
  name = "environment";

  buildInputs = [
    nixops.default
  ];

  shellHook = ''
    export NIX_PATH="nixpkgs=${sources.nixpkgs}:."
    export NIXOPS_STATE=deployments.nixops
    export NIXOPS_DEPLOYMENT=voracle
  '';
  # shellHook = ''
  #   export NIX_PATH="nixpkgs=../nixpkgs:."
  # '';
}
