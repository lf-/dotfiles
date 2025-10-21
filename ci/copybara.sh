#!/usr/bin/env bash

set -euo pipefail
set -x

readonly SUCCESS=0
# shellcheck disable=SC2034
readonly COMMAND_LINE_ERROR=1
# shellcheck disable=SC2034
readonly CONFIGURATION_ERROR=2
# shellcheck disable=SC2034
readonly REPOSITORY_ERROR=3
readonly NO_OP=4
# shellcheck disable=SC2034
readonly INTERRUPTED=8
# shellcheck disable=SC2034
readonly ENVIRONMENT_ERROR=30
# shellcheck disable=SC2034
readonly INTERNAL_ERROR=31

check_ec() {
    case $1 in
        "$NO_OP")
            echo "No-op. Okay!" >&2
            ;;
        "$SUCCESS")
            echo "Okay!" >&2
            ;;
        *)
            echo "Unexpected Copybara exit status: $ec" >&2
            exit 1
            ;;
    esac
}

copybara -v ./vim-plugins/copy.bara.sky buck2_nvim_to_github refs/heads/main && ec=$? || ec=$?
check_ec "$ec"
copybara -v ./vim-plugins/copy.bara.sky haskell_nvim_to_github refs/heads/main && ec=$? || ec=$?
check_ec "$ec"
