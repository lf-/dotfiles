#!/usr/bin/env python3
import requests


def login():
    requests.packages.urllib3.disable_warnings()
    requests.post('https://1.1.1.1/login.html', {'buttonClicked': 4}, verify=False)


if __name__ == '__main__':
    login()
