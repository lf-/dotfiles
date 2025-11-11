#
# Forgejo Git Backend
# vim: et:ts=2:sw=2:
#
{
  pkgs,
  lib,
  config,
  ...
}:
let
  host = "git.jade.fyi";
  baseDir = "/data/forgejo";
  meilisearchSecretsDir = "/run/meilisearch-secrets";
  meilisearchMasterKey = "${meilisearchSecretsDir}/master.key";
  meilisearchConnString = "${meilisearchSecretsDir}/conn-string";
in
{
  services.forgejo = {
    enable = true;

    stateDir = baseDir;

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
        HTTP_ADDR = "::1";
        DOMAIN = host;
        PROTOCOL = "http";
        ENABLE_ACME = false;
        LANDING_PAGE = "explore";
        ROOT_URL = "https://${host}";
      };

      openid = {
        ENABLE_OPENID_SIGNIN = false;
        ENABLE_OPENID_SIGNUP = false;
      };

      oauth2_client = {
        ENABLE_AUTO_REGISTRATION = true;
        REGISTER_EMAIL_CONFIRM = false;
        ACCOUNT_LINKING = "login";
        USERNAME = "nickname";
        OPENID_CONNECT_SCOPES = "email profile";
      };

      service = {
        DISABLE_REGISTRATION = false;
        ALLOW_ONLY_EXTERNAL_REGISTRATION = true;
        ALLOW_ONLY_INTERNAL_REGISTRATION = false;
        #REQUIRE_SIGNIN_VIEW = false;
        ENABLE_NOTIFY_MAIL = true;

        # Require confirmation to add new email addresses. We *don't* require
        # confirmation to register emails via OAuth2 because we enforce that
        # in the IdP already, but this is required to not have a security hole.
        REGISTER_EMAIL_CONFIRM = true;

        # Don't add org members as watchers on all repos, or indeed on new
        # repos either.
        #
        # See: https://github.com/bmackinney/gitea/commit/a9eb2167536cfa8f7b7a23f73e11c8edf5dc0dc0
        AUTO_WATCH_NEW_REPOS = false;

      };

      "service.explore" = {
        REQUIRE_SIGNIN_VIEW = true;
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

      "ssh.minimum_key_sizes" = {
        # Due to tpm bullshit I cannot use a longer or better key last I checked.
        RSA = 2047;
      };

      mailer = {
        ENABLED = false;
      };

      ui = {
        THEMES = "lix-auto,lix-light,lix-dark,forgejo-auto,forgejo-light,forgejo-dark,gitea-auto,gitea-light,gitea-dark";

        DEFAULT_THEME = "lix-auto";
      };

      indexer = {
        ISSUE_INDEXER_TYPE = "meilisearch";
        ISSUE_INDEXER_NAME = "forgejo_issues";
      };
    };

    database = {
      type = "postgres";
      name = "git";
      user = config.services.forgejo.user;
    };

    secrets = {
      indexer = {
        ISSUE_INDEXER_CONN_STR = meilisearchConnString;
      };
    };
  };

  services.meilisearch = {
    package = pkgs.meilisearch;
    enable = true;
    masterKeyFile = meilisearchMasterKey;
    settings = {
      env = "production";
      # it would be cute to have mTLS authentication. however, it is localhost
      # and that's more work than 10 lines of nix.
    };
  };

  systemd.services.meilisearch-key-setup = {
    before = [
      "meilisearch.service"
      "forgejo.service"
    ];
    wantedBy = [
      "meilisearch.service"
      "forgejo.service"
    ];

    script = ''
      # hm, idk how to make sure these get synced every time (since you also
      # probably have to restart the services in question if they change).
      # whatever, it self heals on reboot.
      set -eu
      [[ -s ${meilisearchMasterKey} ]] || \
        printf "MEILI-KEY-%s\n" "$(${lib.getExe pkgs.openssl} rand -hex 20)" > ${meilisearchMasterKey}
      [[ -s ${meilisearchConnString} ]] || \
        printf "http://:%s@%s:%s\n" "$(cat ${meilisearchMasterKey})" "${config.services.meilisearch.listenAddress}" "${toString config.services.meilisearch.listenPort}" > ${meilisearchConnString}
      exit 0
    '';
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

  jade.caddy-wildcard.hosts = {
    "git.jade.fyi" = {
      publicAccess = true;
      action = ''
        reverse_proxy [::1]:3000
      '';
    };
  };

  systemd.tmpfiles.rules =
    let
      cfg = config.services.forgejo;
      img = ./img;
    in
    [
      "d ${meilisearchSecretsDir} 0700 root root - -"
      "d '${cfg.customDir}/public' 0750 ${cfg.user} ${cfg.group} - -"
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
