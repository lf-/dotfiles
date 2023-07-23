#!/usr/bin/env python3

from concurrent.futures import ThreadPoolExecutor
import requests
import subprocess
import dataclasses
import sys
from pathlib import Path
import logging

cred = subprocess.check_output(
    ['kwallet-query', '-r', 'apikey', 'kdewallet', '-f',
     'canvas']).strip().decode()
api_base = subprocess.check_output(
    ['kwallet-query', '-r', 'api_base', 'kdewallet', '-f',
     'canvas']).strip().decode()

log = logging.getLogger(__name__)
log.setLevel(logging.INFO)

fmt = logging.Formatter('{asctime} {levelname} {name}: {message}',
                        datefmt='%b %d %H:%M:%S',
                        style='{')

hand = logging.StreamHandler()
hand.setFormatter(fmt)
log.addHandler(hand)


def api(method, endpoint: str, json=True):
    log.info('http %s %s', method, endpoint)
    if not endpoint.startswith('https'):
        endpoint = api_base + endpoint
    resp = requests.request(method,
                            endpoint,
                            headers={'Authorization': f'Bearer {cred}'})
    resp.raise_for_status()
    if json:
        return resp.json()
    else:
        return resp


def paginate(method: str, url: str):
    while True:
        resp = api(method, url, json=False)
        yield from resp.json()
        next_one = resp.links.get('next')
        if not next_one:
            return
        url = next_one.get('url')
        if not url:
            return


def course_modules(course_id):
    return paginate('GET', f'/api/v1/courses/{course_id}/modules')


def module_items(course_id, module_id):
    return paginate('GET',
                    f'/api/v1/courses/{course_id}/modules/{module_id}/items')


def course_file(course_id, file_id):
    return api('GET', f'/api/v1/courses/{course_id}/files/{file_id}')


class DataClassUnpack:
    """Taken from: https://stackoverflow.com/a/72164665"""
    classFieldCache = {}

    @classmethod
    def instantiate(cls, classToInstantiate, argDict):
        if classToInstantiate not in cls.classFieldCache:
            cls.classFieldCache[classToInstantiate] = {
                f.name
                for f in dataclasses.fields(classToInstantiate) if f.init
            }

        fieldSet = cls.classFieldCache[classToInstantiate]
        filteredArgDict = {k: v for k, v in argDict.items() if k in fieldSet}
        return classToInstantiate(**filteredArgDict)


@dataclasses.dataclass
class FileObj:
    url: str
    display_name: str
    filename: str

    def download(self, to_dir):
        to_dir = Path(to_dir)
        name = to_dir / self.display_name.replace('/', '%')
        if name.exists():
            return
        resp = api('GET', self.url, json=False)
        with open(name, 'wb') as fh:
            fh.write(resp.content)


@dataclasses.dataclass
class ModuleItem:
    id: int
    title: str
    url: str


@dataclasses.dataclass
class Module:
    id: int
    name: str
    state: str


def do_file(url, to_dir):
    file = api('GET', url)
    fobj = DataClassUnpack.instantiate(FileObj, file)

    fobj.download(to_dir)


def download_all_from_module(tpe: ThreadPoolExecutor, to_dir, course_id,
                             module_id):
    futs = []
    for item in module_items(course_id, module_id):
        item = DataClassUnpack.instantiate(ModuleItem, item)

        futs.append(tpe.submit(do_file, item.url, to_dir))

    for fut in futs:
        try:
            fut.result()
        except Exception:
            log.exception('downloading file')


def cli_module(args):
    with ThreadPoolExecutor(max_workers=5) as tpe:
        download_all_from_module(tpe, args.to_dir, args.course_id,
                                 args.module_id)


def cli_list_modules(args):
    for mod in course_modules(args.course_id):
        mod = DataClassUnpack.instantiate(Module, mod)
        print(mod)


def main():
    import argparse
    ap = argparse.ArgumentParser()
    sps = ap.add_subparsers()

    def fail(*args):
        ap.print_help()
        sys.exit(1)

    ap.set_defaults(cmd=fail)

    mod = sps.add_parser('module')
    mod.set_defaults(cmd=cli_module)
    mod.add_argument('course_id')
    mod.add_argument('module_id')
    mod.add_argument('--to-dir', '-o')

    mod = sps.add_parser('list-modules')
    mod.set_defaults(cmd=cli_list_modules)
    mod.add_argument('course_id')

    args = ap.parse_args()
    args.cmd(args)


if __name__ == '__main__':
    main()
