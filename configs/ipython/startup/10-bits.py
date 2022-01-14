# various bit twiddling

def unhx(s):
    assert len(s) % 2 == 0
    out = bytearray()
    for n in range(len(s) // 2):
        out.append(int(s[n*2:n*2+2], 16))
    return bytes(out)

def hx(b):
    """
    good hex
    """
    ret = ''
    for byte in b:
        ret += f'{byte:02x}'
    return ret

def hxd(b):
    print(hxd_s(b))

def hxarr(b):
    ret = '['
    for idx, byte in enumerate(b):
        if idx != 0:
            ret += ', '
        ret += f'0x{byte:02x}'
    ret += ']'
    return ret

def grouper(iterable, n):
    import itertools

    class Filler(object): pass
    return (itertools.filterfalse(lambda x: x is Filler, chunk) for chunk in (itertools.zip_longest(*[iter(iterable)]*n, fillvalue=Filler)))


def strgroups(s, n):
    return ' '.join(''.join(a for a in vv) for vv in grouper(s, n))

def hxd_s(b):
    """
    hexdump
    """
    def isprintable(c):
        return c > 0x20 and c < 0x7e

    def asciify(c):
        return chr(c) if isprintable(c) else '.'
    ret = ''
    for (lineno, line) in enumerate(grouper(iter(b), 16)):
        line_out = ''
        line = bytes(line)
        lineno_s = f'{lineno * 16:04x}:'
        line_out += lineno_s
        for group in grouper(line, 2):
            group = bytes(group)
            line_out += ' '
            for byte in group:
                line_out += f'{byte:02x}'

        line_out = line_out.ljust(43 + len(lineno_s))
        line_out += ''.join(asciify(c) for c in line)
        ret += line_out
        ret += '\n'
    return ret

def bswap16(v):
    return ((v & 0xff) << 8) | ((v & 0xff00) >> 8)

def bswap32(v):
    return (bswap16(v & 0xffff) << 16) | bswap16((v & 0xffff_0000) >> 16)

def bina(i):
    fmt = lambda n: format(n, '08b')
    groups = []
    groups.append(fmt(i & 0xff))
    i = i >> 8
    while i != 0:
        groups.append(fmt(i & 0xff))
        i = i >> 8
    return '0b' + '_'.join(groups[::-1])

def hexa(i):
    fmt = lambda n: format(n, '04x')
    groups = []
    groups.append(fmt(i & 0xffff))
    i = i >> 16
    while i != 0:
        groups.append(fmt(i & 0xffff))
        i = i >> 16
    return '0x' + '_'.join(groups[::-1])
