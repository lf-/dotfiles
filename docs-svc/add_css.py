#!/usr/bin/env python3
"""
Adds clean css to plain html pages
"""
import sys
from pathlib import Path

from bs4 import BeautifulSoup
import bs4

CSS = """
:root {
    --page-bg: #eaeaea;
    --subtle-highlight: #e2e2e2;
    --link-visited: #761fbe;
    --link: #117e6f;
}

body {
    /* local (automatic) addition: make the gnu docs have usable css */
    max-width: 70ch;
    margin: auto;
    padding: 7px;
    overflow-x: auto;

    background-color: var(--page-bg);
}

p {
    hyphens: auto;
}

div.example {
    /* default is 3.2em which is shit on mobile and generally just too much */
    margin-left: 1em !important;
}

html {
    overflow-wrap: break-word;
}

pre, .table-wrapper {
    overflow-x: auto;
}

html {
    font-size: 1.2em;
}

code, pre {
    font-size: 1.0rem;
    background-color: var(--subtle-highlight);
    border-radius: 0.3em;
}

a {
    text-decoration: none;
    color: var(--link);
}

a:visited {
    color: var(--link-visited);
}

ul li {
    margin: 0.2em 0;
}

/**** nav ****/

nav ul.nav li {
    display: inline-block;
    margin: .75rem 1.5rem;
    font-size: 1.5em;
}

nav ul.nav a {
    color: var(--link);
}

nav ul.nav {
    background-color: var(--subtle-highlight);
    border-radius: 0.8em;
    padding: 0;
    display: flex;
    align-content: center;
    justify-content: center;
    list-style: none;
    margin: 0;
    flex-wrap: wrap;
}

/**** dark ****/

@media(prefers-color-scheme: dark) {
    :root {
        --page-bg: #181818;
        --subtle-highlight: #242424;
        --link-visited: rgb(159, 78, 226);
        --link: #2196f3;
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

    table {
        border-color: #545b5e;
    }
}
"""

NAV = """
<ul class="nav">
    <li><a href="https://docs.jade.fyi">docs.jade.fyi</a></li>
    <li><a href="https://github.com/lf-/dotfiles/blob/main/docs-svc/add_css.py">Source Code</a></li>
    <li><a href="https://github.com/lf-/dotfiles/issues">Feedback</a></li>
</ul>
"""

def has_content_type(metas) -> bool:
    return any(
        any(
            (k.lower() == "http-equiv" and v.lower() == "content-type")
            or k.lower() == "charset"
            for k, v in meta.attrs.items()
        )
        for meta in metas
    )


def has_meta_viewport(metas) -> bool:
    return any(m.attrs.get("name") == "viewport" for m in metas)


def add_nav(soup: BeautifulSoup):
    tag = soup.select_one('#nav')
    if not tag:
        tag = soup.new_tag('nav')
        tag.attrs['id'] = 'nav'
        soup.body.insert(0, tag)
    tag.clear()
    nav_contents = BeautifulSoup(NAV, features='lxml')
    for el in nav_contents.body.contents:
        tag.append(el)


def apply(f: Path) -> str:
    with f.open("r") as fh:
        fc = fh.read()
    soup = BeautifulSoup(fc, features="lxml")

    # yes i know i'm deleting the license notice, which is *reproduced in the
    # text*
    # it was causing mozzarella firebox to reparse the page for no reason by
    # being really long
    for child in soup.html.children:
        if isinstance(child, bs4.Comment):
            child.extract()

    if norm := soup.select_one("head > #normalizeCss"):
        norm.string = CSS
    else:
        tag = soup.new_tag("style")
        tag.attrs["id"] = "normalizeCss"
        tag.string = CSS
        soup.head.append(tag)

    metas = soup.head.find_all("meta")
    if not has_content_type(metas):
        tag = soup.new_tag("meta")
        tag.attrs["charset"] = "utf-8"
        soup.head.insert(0, tag)

    if not has_meta_viewport(metas):
        tag = soup.new_tag("meta")
        tag.attrs["name"] = "viewport"
        tag.attrs["content"] = "width=device-width, initial-scale=1"
        soup.head.insert(-1, tag)

    add_nav(soup)

    # if any direct descendent tables aren't wrapped, wrap them in a container
    # to stop overflows
    for tbl in soup.body.find_all('table'):
        tbl: bs4.PageElement
        if 'table-wrapper' in tbl.parent.get('class', []):
            continue
        wrapper = soup.new_tag('div')
        wrapper.attrs['class'] = 'table-wrapper'
        tbl.wrap(wrapper)

    return str(soup)


if __name__ == "__main__":
    for fpath in sys.argv[1:]:
        print("Process", fpath)
        souped = apply(Path(fpath))
        with open(fpath, "w") as fh:
            fh.write(souped)
        print("Done", fpath)
