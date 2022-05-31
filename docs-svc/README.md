# local docs service

this used to be python based and now uses nginx, arbitrarily, because python
http server is kinda fragile

## docs-rsync-pull.service

pulls docs via rsync, but it requires ssh to a box that's not publicly
accessible. I might serve this publicly one day.

## docs.service

this runs a local nginx under your user manager

build for/with nix with
```
systemctl enable --user --force --now `nix-build docs-service.nix`/docs.service
```
