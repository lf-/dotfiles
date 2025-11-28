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
from typing import Any, Tuple
import random
import urllib.parse
import webbrowser

TEMPDIR = Path(tempfile.gettempdir())
SOCK = TEMPDIR / "gooeyd.sock"

DO_OPEN = True


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


class GooeydServer(UnixHTTPServer):
    def __init__(
        self, server_address, RequestHandlerClass, bind_and_activate: bool = True
    ) -> None:
        import pyperclip

        (self._copy, self._paste) = pyperclip.determine_clipboard()
        self.have_primary = "primary" in inspect.signature(self._copy).parameters

        super().__init__(server_address, RequestHandlerClass, bind_and_activate)


def eprint(*args, **kwargs):
    print(*args, file=sys.stderr, **kwargs)


@dataclass
class Reply:
    code: int
    headers: dict[str, str]
    content: str
    content_type: str = "application/octet-stream"


def parse_path(path) -> Tuple[str, dict[str, list[str]]]:
    res = urllib.parse.urlparse(path, "http://")
    return (res.path, urllib.parse.parse_qs(res.query))


class Handler(BaseHTTPRequestHandler):
    server: GooeydServer  # type: ignore

    def log_message(self, format: str, *args: Any) -> None:
        # don't log anything :)
        pass

    def reply(self, reply: Reply):
        content = reply.content.encode("utf-8")

        self.send_response(reply.code)
        self.send_header("Content-Length", str(len(content)))
        for h, v in reply.headers.items():
            self.send_header(h, v)

        self.end_headers()
        self.wfile.write(content)

    def call_handler(self, handlers, body=None):
        (path, args) = parse_path(self.path)
        handler = handlers.get(path)
        if handler:
            reply = handler(args=args, body=body)
        else:
            reply = Reply(404, {}, "Path not found")

        self.reply(reply)

    def do_GET(self):
        HANDLERS = {
            "/paste": self.paste,
        }

        self.call_handler(HANDLERS)

    def paste(self, args, **_) -> Reply:
        if args.get("primary") and self.server.have_primary:
            clip = self.server._paste(primary=True)  # type: ignore
        else:
            clip = self.server._paste()

        return Reply(code=200, headers={}, content=clip)

    def copy(self, body: str, args, **_) -> Reply:
        if args.get("primary") and self.server.have_primary:
            self.server._copy(body, primary=True)  # type: ignore
        else:
            self.server._copy(body)

        return Reply(code=200, headers={}, content="")

    def open_url(self, body: str, **_) -> Reply:
        if not DO_OPEN:
            return Reply(
                code=401, headers={}, content="open-url is disabled on this server"
            )
        # XXX: this is an arbitrary remote command execution on platforms where
        # the browser is set to something like the `open` command. i don't
        # think there's much we can actually do about this short of a highly
        # bypassable filter, however.

        browser = webbrowser.get()
        if not (
            (isinstance(browser, webbrowser.UnixBrowser) and browser.background)
            or isinstance(browser, webbrowser.BackgroundBrowser)
        ):
            eprint(
                f"browser {browser!r} does not support background usage! not doing anything"
            )

        browser.open(body.strip())
        return Reply(code=200, headers={}, content="")

    def do_POST(self):
        HANDLERS = {
            "/copy": self.copy,
            "/open-url": self.open_url,
        }
        content_len = int(self.headers.get("Content-Length", "0"))
        post_body = self.rfile.read(content_len).decode("utf-8")

        self.call_handler(HANDLERS, post_body)


def is_socket_listening(path: Path) -> bool:
    try:
        sock = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
        sock.connect(str(path))
        sock.close()
        return True
    except (FileNotFoundError, ConnectionRefusedError, PermissionError):
        return False


def main(raw_args, prog_name):
    global DO_OPEN
    global SOCK
    ap = argparse.ArgumentParser(prog=prog_name)
    ap.add_argument(
        "--disable-open",
        help="disables the open handler, as it "
        "may be a remote code execution by opening files for anyone with "
        'the socket if your system has "open" or similar set as the '
        "browser",
        action="store_true",
        default=False,
    )
    ap.add_argument(
        "--random-socket",
        help="Use a random file name for the socket. Useful for gooeyd that is run alongside ssh.",
        action="store_true",
        default=False,
    )

    args = ap.parse_args(raw_args)
    DO_OPEN = not args.disable_open
    if args.random_socket:
        SOCK = SOCK.with_name(SOCK.name + "." + str(random.randint(1, 1_000_000)))

    # If it's already running, then just print the path and leave
    if is_socket_listening(SOCK):
        eprint("Using existing gooeyd socket")
        print(f"export LC_GOOEYD_SOCK={SOCK}", flush=True)
        return
    else:
        atexit.register(lambda: SOCK.unlink(missing_ok=True))
        SOCK.unlink(missing_ok=True)

    server = GooeydServer(str(SOCK), Handler)  # type: ignore
    print(f"export LC_GOOEYD_SOCK={SOCK}", flush=True)
    server.serve_forever()


if __name__ == "__main__":
    main(sys.argv[1:], sys.argv[0])
