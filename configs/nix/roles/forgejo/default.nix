#
# Forgejo Git Backend
# vim: et:ts=2:sw=2:
#
{ pkgs, lib, config, ... }:
let
  host = "git.jade.fyi";
in
{
  services.forgejo = {
    enable = true;

    # General settings.
    lfs.enable = true;

    # Make our checkout paths more in line with expectations by calling our user "git".
    user = "git";
    group = "git";

    # Server and database config.
    settings = {

      # Sets the name in the titlebar, mostly.
      DEFAULT.APP_NAME = "jadeware";

      # Settings for how we serve things.
      server = {
        DOMAIN = host;
        PROTOCOL = "http";
        ENABLE_ACME = false;
        LANDING_PAGE = "explore";
        ROOT_URL = "https://${host}";
      };

      openid = {
        #ENABLE_OPENID_SIGNIN = true;
        ENABLE_OPENID_SIGNUP = true;
      };
      oauth2_client = {
        ENABLE_AUTO_REGISTRATION = true;
        ACCOUNT_LINKING = "login";
        USERNAME = "nickname";
      };

      service = {
        DISABLE_REGISTRATION = true;
        #REQUIRE_SIGNIN_VIEW = false;
        ENABLE_NOTIFY_MAIL = true;

        # Don't add org members as watchers on all repos, or indeed on new
        # repos either.
        #
        # See: https://github.com/bmackinney/gitea/commit/a9eb2167536cfa8f7b7a23f73e11c8edf5dc0dc0
        AUTO_WATCH_NEW_REPOS = false;
      };

      session = {
        # Put sessions in the DB so they survive restarts
        PROVIDER = "db";
        PROVIDER_CONFIG = "";

        # Cookie only works over https
        COOKIE_SECURE = true;

        # 5 day sessions
        SESSION_LIFE_TIME = 86400 * 5;
      };

      # Careful with these!
      security = {
        # Don't allow access to the install page; manage exclusively via Nix.
        INSTALL_LOCK = true;

        # Allow internal users with the right permissions to set up Git hooks.
        DISABLE_GIT_HOOKS = false;
      };

      mailer = {
        ENABLED = false;
      };

      ui = {
        THEMES = "lix-auto,lix-light,lix-dark,forgejo-auto,forgejo-light,forgejo-dark,gitea-auto,gitea-light,gitea-dark";

        DEFAULT_THEME = "lix-auto";
      };
    };

    database = {
      type = "postgres";
      name = "git";
      user = config.services.forgejo.user;
    };
  };

  # Create our user an group. This is necessary for any name that's
  # not "forgejo", due to the nix module config.
  users.users."${config.services.forgejo.group}" = {
    description = "Gitea Service";
    useDefaultShell = true;

    home = config.services.forgejo.stateDir;
    group = config.services.forgejo.group;

    isSystemUser = true;
  };
  users.groups."${config.services.forgejo.group}" = { };

  systemd.tmpfiles.rules = let cfg = config.services.forgejo; img = ./img; in [
    "d '${cfg.customDir}/public/assets' 0750 ${cfg.user} ${cfg.group} - -"
    "d '${cfg.customDir}/public/assets/img' 0750 ${cfg.user} ${cfg.group} - -"
    "L+ '${cfg.customDir}/public/assets/css' - - - - ${./theme}"

    "L+ '${cfg.customDir}/public/assets/img/logo.svg' - - - - ${img}/logo.svg"
    "L+ '${cfg.customDir}/public/assets/img/logo.png' - - - - ${img}/logo.png"
    "L+ '${cfg.customDir}/public/assets/img/apple-touch-icon' - - - - ${img}/logo.png"
    "L+ '${cfg.customDir}/public/assets/img/favicon.svg' - - - - ${img}/favicon.svg"
    "L+ '${cfg.customDir}/public/assets/img/favicon.png' - - - - ${img}/favicon.png"
  ];
}
