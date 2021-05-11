#!/bin/sh
nginx -p . -c nginx.conf -T -e stderr
