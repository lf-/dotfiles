def replace_version:
    sub("\\$\\{IMMICH_VERSION.*\\}"; $immich_version)
    ;

.services | with_entries({ key: .key, value: { image: .value.image | replace_version } })
