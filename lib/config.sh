#!/bin/sh

p6_config__debug() {
    local msg="$1"

    p6_debug "p6_config: $msg"
}

# XXX: this isn't right
p6_config_load() {

    local defaults_file=$(dirname $0)/../conf/defaults.conf

    p6_file_load "$defaults_file"
}
