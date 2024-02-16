{ callPackage }:
callPackage ../caddy-with-plugins/package.nix {
  externalPlugins = [
    { name = "acmedns"; repo = "github.com/caddy-dns/acmedns"; version = "v0.3.0"; }
    { name = "events-exec"; repo = "github.com/mholt/caddy-events-exec"; version = "055bfd2e8b8247533c7a710e11301b7d1645c933"; }
  ];
  vendorHash = "sha256-8mNRzCx8++RD2/H0SOYeyJDRGYx6tVIPKP81M7l1Sf0=";
}
