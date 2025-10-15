{ writeShellApplication, copybara }:
writeShellApplication {
  name = "copybara-workflow";
  runtimeInputs = [ copybara ];
  text = builtins.readFile ../../../../ci/copybara.sh;
}
