let
  pkgs = import <nixpkgs> { };
  nginx = pkgs.nginx.override {
    modules = pkgs.nginx.modules ++ [ pkgs.nginxModules.fancyindex ];
  };
in
pkgs.runCommandLocal "docs-service" { } ''
  mkdir -p $out
  substitute \
    ${./docs.service.in} \
    $out/docs.service \
    --replace @MKDIR@ ${pkgs.coreutils}/bin/mkdir \
    --replace @NGINX@ ${nginx}/bin/nginx \
    --replace nginx.conf $out/nginx.conf
  substitute \
    ${./nginx.conf} \
    $out/nginx.conf \
    --replace /etc/nginx ${nginx}/conf
''
