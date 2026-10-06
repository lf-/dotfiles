"""Answers one GET for the http-client test: binds an ephemeral port, prints
it on stdout for the caller, serves a single request and exits."""

import http.server


class Handler(http.server.BaseHTTPRequestHandler):
    def do_GET(self):
        body = f"you asked for {self.path}\n".encode()
        self.send_response(200)
        self.send_header("Content-Type", "text/plain")
        self.send_header("Content-Length", str(len(body)))
        self.end_headers()
        self.wfile.write(body)


def main():
    with http.server.HTTPServer(("127.0.0.1", 0), Handler) as server:
        print(server.server_address[1], flush=True)
        server.handle_request()


if __name__ == "__main__":
    main()
