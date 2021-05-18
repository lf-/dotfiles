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

tar -C "${HOME}/.docs" -czvf "${HOME}/.docs/gnudocs.tar.gz" gnu/
# trailing slash: copy contents of directory into destination
rsync --verbose --human-readable --recursive --links --times --new-compress --delete-delay ${EXTRA_OPTS} "${HOME}/.docs/" "${DEPLOY_HOST}:${DEPLOY_DIR}"
