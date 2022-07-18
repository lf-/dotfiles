#!/usr/bin/env python3
# to paste:
# curl --unix-socket /tmp/nya.sock http:/test
#
# to copy:
# echo nya | curl --unix-socket /tmp/nya.sock -XPOST -d '@-' http:/test
#
# ssh with -R .cache/ssh-clip-$RANDOM:/tmp/nya.sock
# to get it into the remote server, try putting it in the LC_CRIMES env variable then
# use the ssh option -o SendEnv=LC_CRIMES

import argparse
import atexit
from dataclasses import dataclass
from http.server import BaseHTTPRequestHandler, HTTPServer
import inspect
from pathlib import Path
import socket
from socketserver import TCPServer
import sys
import tempfile
from typing import Tuple
import urllib.parse
import webbrowser

import pyperclip

TEMPDIR = Path(tempfile.gettempdir())
SOCK = TEMPDIR / 'gooeyd.sock'

atexit.register(lambda: SOCK.unlink(missing_ok=True))
SOCK.unlink(missing_ok=True)

DO_OPEN = True

(copy, paste) = pyperclip.determine_clipboard()
HAVE_PRIMARY = 'primary' in inspect.signature(copy).parameters


# hack from https://stackoverflow.com/questions/21650370/setting-up-an-http-server-that-listens-over-a-file-socket
class UnixHTTPServer(HTTPServer):
    address_family = socket.AF_UNIX

    def server_bind(self):
        TCPServer.server_bind(self)
        self.server_name = "foo"
        self.server_port = 0

    def get_request(self):
        request, client_address = super(UnixHTTPServer, self).get_request()
        return (request, ["local", 0])


def eprint(*args, **kwargs):
    print(*args, file=sys.stderr, **kwargs)


@dataclass
class Reply:
    code: int
    headers: dict[str, str]
    content: str
    content_type: str = 'application/octet-stream'


def parse_path(path) -> Tuple[str, dict[str, list[str]]]:
    res = urllib.parse.urlparse(path, 'http://')
    return (res.path, urllib.parse.parse_qs(res.query))


class Handler(BaseHTTPRequestHandler):

    def reply(self, reply: Reply):
        content = reply.content.encode('utf-8')

        self.send_response(reply.code)
        self.send_header('Content-Length', str(len(content)))
        for (h, v) in reply.headers.items():
            self.send_header(h, v)

        self.end_headers()
        self.wfile.write(content)

    def call_handler(self, handlers, body=None):
        (path, args) = parse_path(self.path)
        handler = handlers.get(path)
        if handler:
            reply = handler(args=args, body=body)
        else:
            reply = Reply(404, {}, 'Path not found')

        self.reply(reply)

    def do_GET(self):
        HANDLERS = {
            '/paste': self.paste,
        }

        self.call_handler(HANDLERS)

    def paste(self, args, **_) -> Reply:
        if args.get('primary') and HAVE_PRIMARY:
            clip = paste(primary=True)  # type: ignore
        else:
            clip = paste()

        return Reply(code=200, headers={}, content=clip)

    def copy(self, body: str, args, **_) -> Reply:
        if args.get('primary') and HAVE_PRIMARY:
            copy(body, primary=True)  # type: ignore
        else:
            copy(body)

        return Reply(code=200, headers={}, content='')

    def open_url(self, body: str, **_) -> Reply:
        if not DO_OPEN:
            return Reply(code=401,
                         headers={},
                         content='open-url is disabled on this server')
        # XXX: this is an arbitrary remote command execution on platforms where
        # the browser is set to something like the `open` command. i don't
        # think there's much we can actually do about this short of a highly
        # bypassable filter, however.

        browser = webbrowser.get()
        if not ((isinstance(browser, webbrowser.UnixBrowser)
                 and browser.background)
                or isinstance(browser, webbrowser.BackgroundBrowser)):
            eprint(
                f'browser {browser!r} does not support background usage! not doing anything'
            )

        browser.open(body.strip())
        return Reply(code=200, headers={}, content='')

    def do_POST(self):
        HANDLERS = {
            '/copy': self.copy,
            '/open-url': self.open_url,
        }
        content_len = int(self.headers.get('Content-Length'))
        post_body = self.rfile.read(content_len).decode('utf-8')

        self.call_handler(HANDLERS, post_body)


def main(raw_args, prog_name):
    global DO_OPEN
    ap = argparse.ArgumentParser(prog=prog_name)
    ap.add_argument(
        '--disable-open',
        help='disables the open handler, as it '
        'may be a remote code execution by opening files for anyone with '
        'the socket if your system has "open" or similar set as the '
        'browser',
        action='store_true',
        default=False)

    args = ap.parse_args(raw_args)
    DO_OPEN = not args.disable_open

    server = UnixHTTPServer(str(SOCK), Handler)  # type: ignore
    print(f"export LC_GOOEYD_SOCK={SOCK}")
    server.serve_forever()


if __name__ == '__main__':
    main(sys.argv[1:], sys.argv[0])
