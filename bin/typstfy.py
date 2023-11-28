import re

def sym(a, b):
    return (r"\$([^$]*)\s?\\" + a + r"\s?([^$]*)\$", f"$\\1 {b} \\2$")

RES: list[tuple[str, str]] = [
    sym('ldots', 'dots.h'),
    sym('neq', '!='),
    sym('in', 'in'),
    sym('subset', 'subset'),
    sym('omega', 'omega'),
    sym('Omega', 'Omega'),
    sym('Theta', 'Theta'),
    sym(r'\{', r'{'),
    sym(r'\}', r'}'),
    sym('leq', '<='),
    sym('le', '<='),
    sym('geq', '>='),
    sym('ge', '>='),
    (r"_\{([^}]*)\}", r"_(\1)"),
    (r"\\item", r"+"),
    (r"\\begin\{enumerate\}", r"/* begin list */"),
    (r"\\end\{enumerate\}", r"/* end list */"),
    (r"\\clearpage", r"#pagebreak(weak: false)"),
    (r"\\newpage", r"#pagebreak(weak: false)"),
    (r"\\textit\{([^}]*)\}", r"#emph[\1]"),
    (r"{\\em (.*)}", r"#emph[\1]"),
    (r"{\\it (.*)}", r"#emph[\1]"),
    (r"{\\bf (.*)}", r"#strong[\1]"),
    (r"\\section\{(.*)\}", r"= \1"),
    (r"\\label\{(.*)\}", r'#label("\1")'),
]

RES_COMPILED = [(re.compile(r), replace) for (r, replace) in RES]

def run(s: list[str]) -> list[str]:
    out = []
    for line in s:
        for (r, replace) in RES_COMPILED:
            line = r.sub(replace, line)
        out.append(line)
    return out


if __name__ == '__main__':
    import argparse
    ap = argparse.ArgumentParser()
    ap.add_argument('input')
    ap.add_argument('output')
    args = ap.parse_args()

    with open(args.input) as fh:
        content = fh.readlines()
        out = run(content)
        with open(args.output, 'w') as w:
            w.writelines(out)
