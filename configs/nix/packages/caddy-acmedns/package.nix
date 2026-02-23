{ caddy }:
caddy.withPlugins {
  plugins = [
    "github.com/caddy-dns/acmedns@v0.6.0"
    "github.com/mholt/caddy-events-exec@v0.1.0"
  ];
  hash = "sha256-XmgR+KDVQCviuv7xW8D1k9BaNr4HaxEnA80/19SF8uQ=";
}
