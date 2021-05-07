# various bit twiddling

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

def hxd_s(b):
    """
    hexdump
    """
    import itertools

    def isprintable(c):
        return c > 0x20 and c < 0x7e

    def grouper(iterable, n):
        class Filler(object): pass
        return (itertools.filterfalse(lambda x: x is Filler, chunk) for chunk in (itertools.zip_longest(*[iter(iterable)]*n, fillvalue=Filler)))

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

