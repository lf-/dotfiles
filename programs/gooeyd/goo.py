#!/usr/bin/env python3
"""
cli client for gooey
"""
import argparse
import os
import sys
import subprocess


def post(path, socket, data=None):
    stdin = subprocess.PIPE if data else None

    cmdline = ('curl', '--silent', '--unix-socket', socket, '-XPOST',
               '--fail-with-body', '--data-binary', '@-',
               'http:/test{path}'.format(path=path))
    proc = subprocess.Popen(cmdline, stdin=stdin)
    if data:
        proc.communicate(data.encode('utf-8'))
    exitcode = proc.wait()
    if exitcode != 0:
        raise subprocess.CalledProcessError(exitcode, cmdline)


def do_copy(args):
    primary = '?primary=true' if args.primary else ''
    post('/copy{primary}'.format(primary=primary), args.socket)


def do_paste(args):
    primary = '?primary=true' if args.primary else ''
    subprocess.run(('curl', '--silent', '--unix-socket', args.socket,
                    'http:/test/paste{primary}'.format(primary=primary)))


def do_open_url(args):
    post('/open-url', args.socket, data=args.url)


def eprint(*args, **kwargs):
    print(*args, file=sys.stderr, **kwargs)


def main(args_raw, prog_name):
    ap = argparse.ArgumentParser(prog=prog_name)
    ap.add_argument(
        '--socket',
        help=
        'path to the unix socket to communicate over; defaults to the value of the LC_GOOEYD_SOCK environment variable',
        default=os.environ.get('LC_GOOEYD_SOCK'))

    def oopsie(_args):
        ap.print_help()

    ap.set_defaults(target=oopsie)
    sps = ap.add_subparsers(help='subcommand')

    copy_parser = sps.add_parser('copy',
                                 help='copy something to the clipboard')
    copy_parser.set_defaults(target=do_copy)
    copy_parser.add_argument(
        '--primary',
        '-p',
        help='use the primary (middle click) selection if available',
        action='store_true')

    paste_parser = sps.add_parser('paste',
                                  help='paste text from the clipboard')
    paste_parser.set_defaults(target=do_paste)
    paste_parser.add_argument(
        '--primary',
        '-p',
        help='use the primary (middle click) selection if available',
        action='store_true')

    open_url_parser = sps.add_parser('open', help='open a url')
    open_url_parser.set_defaults(target=do_open_url)
    open_url_parser.add_argument('url', help='url to open')

    args = ap.parse_args(args_raw)
    if args.target != oopsie and not args.socket:
        eprint(
            'No socket available, is LC_GOOEYD_SOCK set? Alternatively, provide a --socket argument'
        )
        sys.exit(1)

    args.target(args)


if __name__ == '__main__':
    main(sys.argv[1:], sys.argv[0])
