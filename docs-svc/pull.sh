#!/bin/bash
source .deploy_config

DEFAULT_OPTS="--protect-args --verbose --human-readable --recursive --times \
    --new-compress --dry-run"
mkdir -p "${HOME}/.docs"
rsync ${DEFAULT_OPTS} ${PULL_OPTS_MAIN} "${PULL_HOST}:${PULL_DIR}" "${HOME}/.docs"
