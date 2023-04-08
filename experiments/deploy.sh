#!/bin/bash

if [[ ! -e .deploy_config ]]; then
	cat >&2 <<-EOF
	Please create a .deploy_config with content:
	DEPLOY_HOST=[the host you rsync to]
	DEPLOY_DIR=[the directory you rsync to]
	# optional
	EXTRA_OPTS=[extra rsync options you want to use]
	EOF

	exit 1
fi

source .deploy_config

srcdir=$(realpath "$(dirname "${BASH_SOURCE[0]}")")
cd "$srcdir" || exit

# trailing slash: copy contents of directory into destination
DEFAULT_OPTS="--protect-args --verbose --human-readable --recursive --times \
    --new-compress --files-from=./files.txt --delete-delay"
rsync ${DEFAULT_OPTS} ${EXTRA_OPTS_MAIN} "${srcdir}/" \
    "${DEPLOY_HOST}:${DEPLOY_DIR}"
