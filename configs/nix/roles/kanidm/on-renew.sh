#!@bash@/bin/bash
# shellcheck shell=bash
set -e

export PATH=/empty
for i in @path@; do PATH=$PATH:$i/bin; done

DOMAINS=(@domains@)

echo "$*" | logger

cert_id=$1
issuer=$2
cert_path=$3
private_key_path=$4

dir=${STATE_DIRECTORY:-/var/lib/caddy}
export_dir="$dir/certs-export/$cert_id"

# no access for others
umask 077

# ignore staging certs
# if [[ $issuer =~ .*staging.* ]]; then
#     exit 0
# fi

# https://stackoverflow.com/a/8574392
containsElement () {
  local e match="$1"
  shift
  for e; do [[ "$e" == "$match" ]] && return 0; done
  return 1
}

if ! containsElement "$cert_id" "${DOMAINS[@]}"; then
    exit 0
fi

cd "$dir/.local/share/caddy"

mkdir -p "$export_dir"
cp "$cert_path" "$export_dir/$cert_id.crt"
cp "$private_key_path" "$export_dir/$cert_id.key"

systemctl restart @restartUnits@
