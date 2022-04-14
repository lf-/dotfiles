# to paste:
# curl --unix-socket /tmp/nya.sock http:/test
#
# to copy:
# echo nya | curl --unix-socket /tmp/nya.sock -XPOST -d '@-' http:/test
#
# ssh with -R .cache/ssh-clip-$RANDOM:/tmp/nya.sock
# to get it into the remote server, try putting it in the LC_CRIMES env variable then
# use the ssh option -o SendEnv=LC_CRIMES

import pyperclip
import socket
from socketserver import TCPServer
from http.server import BaseHTTPRequestHandler, HTTPServer
from pathlib import Path
import tempfile
import atexit

TEMPDIR = Path(tempfile.gettempdir())
SOCK = TEMPDIR / 'ssh-clip.sock'

atexit.register(lambda: SOCK.unlink(missing_ok=True))
SOCK.unlink(missing_ok=True)

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

class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        clip = pyperclip.paste().encode('utf-8')
        self.send_response(200)
        self.send_header('Content-Type', 'application/octet-stream')
        self.send_header('Content-Length', str(len(clip)))
        self.end_headers()

        self.wfile.write(clip)

    def do_POST(self):
        content_len = int(self.headers.get('Content-Length'))
        post_body = self.rfile.read(content_len)
        pyperclip.copy(post_body.decode('utf-8'))

        self.send_response(200)
        self.send_header('Content-Length', '0')
        self.end_headers()

server = UnixHTTPServer(str(SOCK), Handler)
print(f"socket is at {SOCK}")
server.serve_forever()
