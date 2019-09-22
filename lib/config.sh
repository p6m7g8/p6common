#!/bin/sh

######################################################################
#<
#
# Function:
#      = p6_config__debug()
#
#
#
#>
######################################################################
p6_config__debug() {
    local msg="$1"

    p6_debug "p6_config: $msg"
}

# XXX: this isn't right
######################################################################
#<
#
# Function:
#      = p6_config_load()
#
#
#
#>
######################################################################
p6_config_load() {

    local defaults_file=$(dirname $0)/../conf/defaults.conf

    p6_file_load "$defaults_file"
}