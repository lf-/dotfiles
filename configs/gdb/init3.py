import gdb
import re


def hxd(b, begin=0):
    print(hxd_s(b, begin))

def hxd_s(b, begin=0):
    """
    hexdump

    begin is the first address
    """
    def isprintable(c):
        return c > 0x20 and c < 0x7e

    def asciify(c):
        return chr(c) if isprintable(c) else '.'
    ret = ''

    length = len(b)
    pos = 0

    def take(n):
        nonlocal pos
        taken = b[pos:min(pos+n, length)]
        pos += n
        return taken

    def make_body(line, start=0):
        #   aa aabb aacc
        body = ''
        for i in range(16):
            # unpopulated
            if i < start or i - start >= len(line):
                body += '  '
            else:
                body += f'{line[i - start]:02x}'
            if i % 2 == 1:
                body += ' '
        return body

    def make_ascii(line, start=0):
        body = ''
        for i in range(16):
            # unpopulated
            if i < start or i - start >= len(line):
                body += ' '
            else:
                body += asciify(line[i - start])
        return body

    vv1 = begin - begin % 16
    vv = begin

    # grab lines of 16, starting with a possible partial line at the start
    while True:
        if pos >= length:
            break
        line_len = 16 - vv % 16
        line = take(line_len)
        vv += line_len

        ret += f'{vv1:04x}: '
        vv1 = vv
        ret += make_body(line, 16 - line_len)
        ret += make_ascii(line, 16 - line_len)
        ret += '\n'

    return ret

class HexDump(gdb.Command):
    def __init__(self):
        super (HexDump, self).__init__ ('hd', gdb.COMMAND_DATA)

    def invoke(self, arg, _from_tty):
        argv = gdb.string_to_argv(arg)
        # print('argv', argv)

        addr = gdb.parse_and_eval(argv[0])
        # print('addr', type(addr))
        if len(argv) == 2:
             try:
                 nbytes = int(gdb.parse_and_eval(argv[1]))
             except ValueError:
                 raise gdb.GdbError('Byte count must be an integer value.')
        else:
             nbytes = 500

        inferior = gdb.selected_inferior()

        mem = inferior.read_memory(addr, nbytes)
        pr_addr = int(addr)

        # print('pr_addr = ', pr_addr, addr)
        hxd(mem.tobytes(), pr_addr)

HexDump()

IS_NIXY_RE = re.compile(r'^/nix/store/.*-glibc-.*/lib/ld-linux-.*\.so\..*$')
def new_inferior(inf_: gdb.NewInferiorEvent):
    inf = inf_.inferior

    # debuginfod is completely pointless on nix built executables since they don't
    # have any useful debuginfo in general and certainly not Online
    do_debuginfod = True

    if 'x86_64' in inf.architecture().name():
        gdb.execute('set disassembly-flavor intel')
    do_debuginfod = not any(IS_NIXY_RE.match(f.filename) for f in inf.progspace.objfiles() if f.filename)

    gdb.execute(f"set debuginfod enabled {'on' if do_debuginfod else 'off'}")

gdb.events.new_inferior.connect(new_inferior)

gdb.execute(f"""
set index-cache enabled on
set print asm-demangle on
""")
