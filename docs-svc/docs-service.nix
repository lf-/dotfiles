let pkgs = import <nixpkgs> {};
in
  pkgs.runCommandLocal "docs-service" { } ''
  mkdir -p $out
  substitute \
    ${./docs.service} \
    $out/docs.service \
    --replace /usr/bin/mkdir ${pkgs.coreutils}/bin/mkdir \
    --replace /usr/bin/nginx ${pkgs.nginx}/bin/nginx \
    --replace nginx.conf $out/nginx.conf
  substitute \
    ${./nginx.conf} \
    $out/nginx.conf \
    --replace /etc/nginx ${pkgs.nginx}/conf
  ''
