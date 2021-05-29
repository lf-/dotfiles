#!/usr/bin/env python3
"""
Adds clean css to plain html pages
"""
import sys
from pathlib import Path

from bs4 import BeautifulSoup

CSS = """
body {
    /* local (automatic) addition: make the gnu docs have usable css */
    max-width: 70ch;
    margin: auto;
}
html {
    font-size: 1.2em;
}

code, pre {
    font-size: 1.0rem;
}

a {
    text-decoration: none;
    color: #117e6f;
}
a:visited {
    color: #761fbe;
}
ul li {
    margin: 0.2em 0;
}

@media(prefers-color-scheme: dark) {
    html {
        background-color: #181818 !important;
    }
    html,
    body,
    input,
    textarea,
    select,
    button {
        background-color: #181818;
    }
    html,
    body,
    input,
    textarea,
    select,
    button {
        border-color: #736b5e;
        color: #e8e6e3;
    }

    a {
        color: #2196F3;
    }
    a:visited {
        color: rgb(159, 78, 226);
    }

    table {
        border-color: #545b5e;
    }
}
"""


def has_content_type(soup: BeautifulSoup) -> bool:
    metas = soup.head.find_all("meta")
    return any(
        any(
            (k.lower() == "http-equiv" and v.lower() == "content-type")
            or k.lower() == "charset"
            for k, v in meta.attrs.items()
        )
        for meta in metas
    )


def apply(f: Path) -> str:
    with f.open("r") as fh:
        fc = fh.read()
    soup = BeautifulSoup(fc, features="lxml")
    if norm := soup.select_one("head > #normalizeCss"):
        norm.string = CSS
    else:
        tag = soup.new_tag("style")
        tag.attrs["id"] = "normalizeCss"
        tag.string = CSS
        soup.head.append(tag)

    if not has_content_type(soup):
        tag = soup.new_tag("meta")
        tag.attrs["charset"] = "utf-8"
        soup.head.insert(0, tag)
    return str(soup)


if __name__ == "__main__":
    for fpath in sys.argv[1:]:
        print("Process", fpath)
        souped = apply(Path(fpath))
        with open(fpath, "w") as fh:
            fh.write(souped)
        print("Done", fpath)
