{
  config,
  lib,
  ...
}:
let
  inherit (lib) types;

  cfg = config.jade.immich;
  versions = builtins.fromJSON (builtins.readFile ./versions.json);
in
{
  options = {
    # Though there exists a PR of NixOS packaging for this, it looks like it
    # has to do a bunch of ugly things to actually make it work. I really don't
    # like docker, but this seems most expedient.
    #
    # https://github.com/NixOS/nixpkgs/pull/324127/files
    jade.immich = {
      enable = lib.mkEnableOption "immich containers";

      uploadDir = lib.mkOption {
        description = "Upload directory on the host to put the immich images in";
        example = "/tank/photos/immich";
        default = "/var/lib/immich/uploads";
        type = types.str;
      };

      postgresDataDir = lib.mkOption {
        description = "Directory on the host where the Immich postgres instance stores data";
        example = "/tank/srv/immich/postgres";
        default = "/var/lib/immich/postgres";
        type = types.str;
      };

      redisDataDir = lib.mkOption {
        description = "Directory on the host where the Immich redis instance stores data";
        example = "/tank/srv/immich/redis";
        default = "/var/lib/immich/redis";
        type = types.str;
      };

      environment = lib.mkOption {
        description = "Non-sensitive environment variables to set in the immich containers";
        example = {
          IMMICH_API_METRICS_PORT = "8081";
        };
        default = {
          DB_HOSTNAME = "immich-database";
          REDIS_HOSTNAME = "immich-redis";
        };
        type = types.attrsOf types.str;
      };

      environmentFiles = lib.mkOption {
        description = ''
          Environment file, for sensitive information

          Must set the following (the pairs need to be the same value):
          - DB_PASSWORD and POSTGRES_PASSWORD
          - DB_USERNAME and POSTGRES_USER ("immich" works)
          - DB_DATABASE_NAME and POSTGRES_DB ("immich" works)
        '';
        default = [ ];
        type = types.listOf types.str;
      };

      httpPort = lib.mkOption {
        description = "Port to expose the web interface on";
        example = 1337;
        default = 2283;
        type = types.port;
      };

      extraVolumes = lib.mkOption {
        description = "Extra volumes to add to the main immich container, for external libraries";
        default = [ ];
        type = types.listOf types.str;
      };

      extraPodmanOptions = lib.mkOption {
        description = "Extra podman options to add to the main immich container";
        default = [ ];
        type = types.listOf types.str;
      };
    };
  };

  config = lib.mkIf cfg.enable {
    virtualisation.oci-containers = {
      containers = {
        immich-server = {
          image = versions.immich-server.image;

          dependsOn = [
            "immich-redis"
            "immich-database"
          ];

          volumes = [
            "${cfg.uploadDir}:/usr/src/app/upload"
            "/etc/localtime:/etc/localtime:ro"
          ] ++ cfg.extraVolumes;

          user = "immich";
          # FIXME: this may be evil?
          extraOptions = [
            "--userns=keep-id"
            "--hostuser=immich"
          ] ++ cfg.extraPodmanOptions;

          ports = [
            "127.0.0.1:${toString cfg.httpPort}:3001"
          ];

          inherit (cfg) environment environmentFiles;

          /*
            volumes:
              # Do not edit the next line. If you want to change the media storage location on your system, edit the value of UPLOAD_LOCATION in the .env file
              - ${UPLOAD_LOCATION}:/usr/src/app/upload
              - /etc/localtime:/etc/localtime:ro
            env_file:
              - .env
            ports:
              - 2283:3001
            depends_on:
              - redis
              - database
          */
        };
        immich-machine-learning = {
          image = versions.immich-machine-learning.image;

          volumes = [
            "/var/cache/immich/model-cache:/cache"
          ];

          user = "immich";
          # FIXME: this may be evil?
          extraOptions = [
            "--userns=keep-id"
            "--hostuser=immich"
          ];

          inherit (cfg) environment environmentFiles;

          /*
              volumes:
                - model-cache:/cache
              env_file:
                - .env
          */
        };
        immich-redis = {
          image = versions.redis.image;

          user = "immich";
          # FIXME: this may be evil?
          extraOptions = [
            "--userns=keep-id"
            "--hostuser=immich"
          ];

          volumes = [
            "${cfg.redisDataDir}:/data"
          ];
        };
        immich-database = {
          image = versions.database.image;

          volumes = [
            "${cfg.postgresDataDir}:/var/lib/postgresql/data"
          ];

          user = "immich";
          # FIXME: this may be evil
          extraOptions = [
            "--userns=keep-id"
            "--hostuser=immich"
          ];

          environment = {
            POSTGRES_INITDB_ARGS = "--data-checksums";
          } // cfg.environment;

          inherit (cfg) environmentFiles;

          cmd = [
            "postgres"
            "-c"
            "shared_preload_libraries=vectors.so"
            "-c"
            "search_path=\"$$user\", public, vectors"
            "-c"
            "logging_collector=on"
            "-c"
            "max_wal_size=2GB"
            "-c"
            "shared_buffers=512MB"
            "-c"
            "wal_compression=on"
          ];
          /*
            container_name: immich_postgres
            image: docker.io/tensorchord/pgvecto-rs:pg14-v0.2.0@sha256:90724186f0a3517cf6914295b5ab410db9ce23190a2d9d0b9dd6463e3fa298f0
            environment:
              POSTGRES_PASSWORD: ${DB_PASSWORD}
              POSTGRES_USER: ${DB_USERNAME}
              POSTGRES_DB: ${DB_DATABASE_NAME}
              POSTGRES_INITDB_ARGS: '--data-checksums'
            volumes:
              # Do not edit the next line. If you want to change the database storage location on your system, edit the value of DB_DATA_LOCATION in the .env file
              - ${DB_DATA_LOCATION}:/var/lib/postgresql/data
            healthcheck:
              test: pg_isready --dbname='${DB_DATABASE_NAME}' --username='${DB_USERNAME}' || exit 1; Chksum="$$(psql --dbname='${DB_DATABASE_NAME}' --username='${DB_USERNAME}' --tuples-only --no-align --command='SELECT COALESCE(SUM(checksum_failures), 0) FROM pg_stat_database')"; echo "checksum failure count is $$Chksum"; [ "$$Chksum" = '0' ] || exit 1
              interval: 5m
              start_interval: 30s
              start_period: 5m
            command: ["postgres", "-c", "shared_preload_libraries=vectors.so", "-c", 'search_path="$$user", public, vectors', "-c", "logging_collector=on", "-c", "max_wal_size=2GB", "-c", "shared_buffers=512MB", "-c", "wal_compression=on"]
          */
        };
      };
    };

    # as required by redis https://github.com/jemalloc/jemalloc/issues/1328
    boot.kernel.sysctl."vm.overcommit_memory" = "1";

    users.groups.immich = {
      gid = 981;
    };

    users.users.immich = {
      description = "immich service user";
      isSystemUser = true;
      group = "immich";
      uid = 987;
    };

    systemd.tmpfiles.rules = [
      "d /var/cache/immich/model-cache 0770 immich immich"
      "d ${cfg.uploadDir} 0770 immich immich"
      "d ${cfg.postgresDataDir} 0700 immich root"
      "d ${cfg.redisDataDir} 0770 immich immich"
    ];
  };
}
