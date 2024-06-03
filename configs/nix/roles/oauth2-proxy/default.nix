{ config, ... }:
let idp = import ../../lib/idp.nix { baseUrl = "https://id.jade.fyi"; clientId = "oauth2_proxy_oauth"; };
in {
  config = {
    age.secrets.oauth2-proxy-secrets.file = ../../secrets/oauth2-proxy-secrets.age;

    services.oauth2-proxy = {
      enable = true;

      httpAddress = "http://127.0.0.1:4180";

      provider = "oidc";

      clientID = idp.clientId;
      oidcIssuerUrl = idp.oidcIssuerUri;

      email.domains = [ "*" ];

      loginURL = idp.apiAuthUrl;
      redeemURL = idp.tokenUrl;

      validateURL = idp.rfc7662TokenIntrospectionUrl;

      reverseProxy = true;
      proxyPrefix = "/_oauth2_proxy";

      scope = "openid profile email";
      profileURL = idp.oidcUserInfo;

      keyFile = config.age.secrets.oauth2-proxy-secrets.path;
    };
  };
}
