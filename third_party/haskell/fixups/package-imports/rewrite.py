"""Rewrites package-qualified imports to the names buck gave the packages.

Run by GHC as `-pgmF`: `rewrite.py <original> <input> <output> <from>=<to>...`,
the trailing pairs coming from `-optF`. Only `import [qualified] "<from>"` is
touched, so a string elsewhere that happens to match is left alone.
"""

import re
import sys


def main() -> None:
    _original, src, dst, *pairs = sys.argv[1:]
    names = dict(pair.split("=", 1) for pair in pairs)
    pattern = re.compile(
        r'^(\s*import\s+(?:qualified\s+)?)"({})"'.format(
            "|".join(re.escape(n) for n in names)
        ),
        re.MULTILINE,
    )
    with open(src, encoding="utf-8") as f:
        text = f.read()
    text = pattern.sub(lambda m: '{}"{}"'.format(m.group(1), names[m.group(2)]), text)
    with open(dst, "w", encoding="utf-8") as f:
        f.write(text)


if __name__ == "__main__":
    main()
