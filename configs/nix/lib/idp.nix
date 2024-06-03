{ baseUrl, clientId }: {
  inherit clientId;

  userAuthUrl = "${baseUrl}/ui/oauth2";
  apiAuthUrl = "${baseUrl}/oauth2/authorise";
  tokenUrl = "${baseUrl}/oauth2/token";

  rfc7662TokenIntrospectionUrl = "${baseUrl}/oauth2/token/introspect";
  rfc7009TokenRevokeUrl = "${baseUrl}/oauth2/token/revoke";

  oauth2Rfc8414Discovery = "${baseUrl}/oauth2/openid/${clientId}/.well-known/oauth-authorization-server";

  oidcIssuerUri = "${baseUrl}/oauth2/openid/${clientId}";
  oidcDiscovery = "${baseUrl}/oauth2/openid/${clientId}/.well-known/openid-configuration";

  oidcUserInfo = "${baseUrl}/oauth2/openid/${clientId}/userinfo";
  oidcTokenSigningPubkey = "${baseUrl}/openid/${clientId}/public_key.jwk";

}
