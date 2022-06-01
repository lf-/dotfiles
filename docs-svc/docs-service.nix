let pkgs = import <nixpkgs> {};
  nginx = pkgs.nginx.override {
    modules = pkgs.nginx.modules ++ [pkgs.nginxModules.fancyindex];
  };
in
  pkgs.runCommandLocal "docs-service" { } ''
  mkdir -p $out
  substitute \
    ${./docs.service} \
    $out/docs.service \
    --replace /usr/bin/mkdir ${pkgs.coreutils}/bin/mkdir \
    --replace /usr/bin/nginx ${nginx}/bin/nginx \
    --replace nginx.conf $out/nginx.conf
  substitute \
    ${./nginx.conf} \
    $out/nginx.conf \
    --replace /etc/nginx ${nginx}/conf
  ''
