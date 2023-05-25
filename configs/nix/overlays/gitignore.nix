{ gitignore }:
final: prev:
let gitignore' = import gitignore { inherit (final) lib; };
in
{
  inherit (gitignore') gitignoreSource;
}
