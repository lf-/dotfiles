# gooeyd

This service exposes the system clipboard and other GUI services to a remote
machine. The purpose of this is to allow clipboard access etc from remote
machines, with reasonable security.

It is implemented by (minor crimes!) running HTTP over a Unix socket so that
there is access control on the remote end: ssh will create the socket with only
r/w to the running user when you forward it, so only you can access it. This is
in contrast to listening on TCP where anyone on the remote machine could
conceivably connect.

## Usage

### Setup

Install `pyperclip` from PyPI/distro package manager.

Run `python gooeyd.py` on your computer (and probably put it in a startup
file). It will print out the value you should set the environment variable
`LC_GOOEYD_SOCK` to; in practice it will probably be `$TMPDIR/gooeyd.sock`.

Use the wrapper `sshc` provided here to log into remote machines. It will
remote-forward the Unix socket gooeyd uses as some random path in `/tmp` and
*attempt* to set the `LC_GOOEYD_SOCK` environment variable in the remote
session to that path.

This may or may not work; by default Debian and friends ship a sshd
configuration with `AcceptEnv LC_*`, so we pretend to be a locale variable
(crimes!). If your remote-side distro does not ship this sshd patch, either add
the config option if you can or consider writing a different wrapper that sets
the environment variable some other way.

**NOTE**: on some systems, the python webbrowser module which we use will open
arbitrary files if you give it arbitrary file paths. this is probably a remote
code execution (but restricted to your user) as it could open arbitrary
programs. if you don't like this, pass `--disable-open` to `gooeyd.py` to
disable the open feature.

### Usage

#### goo

We provide a script `goo.py`, which you can install somewhere in your path on a
remote machine as `goo`. It requires curl.

```sh
local$ sshc some-server
some-server$ echo 'nya' | goo copy
some-server$ echo 'nya2' | goo copy --primary # for x11 middle click clipboard if present

some-server$ goo paste # puts clipboard on stdout
nya
some-server$ goo paste --primary # again, x11 middle click clipboard
nya2

some-server$ goo open https://google.com # opens google.com in your web browser
```

#### http

If you have an http client that supports running over a Unix socket, here's the
API:

`POST /copy` - with body of what you want to copy
`POST /copy?primary=xyzThisFieldIsIgnored` - same but primary selection
`GET /paste` - returns the clipboard contents as body
`GET /paste?primary=xyzThisFieldIsIgnored` - same but primary selection
`POST /open-url` - with body of the url you want to open
