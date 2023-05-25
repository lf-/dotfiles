{ pkgs, config, lib, ... }:
{
  options.jade.dep-inject = lib.mkOption {
    type = with lib.types;
      attrsOf (unique { message = "cannot define a dependency injection more than once"; } anything);
    default = { };
    description = lib.mdDoc ''
      Allows injecting dependencies from some outer system such as a
      top-level flake using an inline module. Replaces usage of specialArgs,
      which is really a very ugly solution.
    '';
  };
}
