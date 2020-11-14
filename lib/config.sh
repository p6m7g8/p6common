#!/bin/sh

######################################################################
#<
#
# Function: p6_config__debug()
#
#>
######################################################################
p6_config__debug() {
    local msg="$1"

    p6_debug "p6_config: $msg"
    
    p6_return_void
}

# XXX: this isn't right
######################################################################
#<
#
# Function: p6_config_load([defaults_file=$(dirname $0)/../conf/defaults.conf])
#
#  Args:
#	OPTIONAL defaults_file - [$(dirname $0)/../conf/defaults.conf]
#
#>
######################################################################
p6_config_load() {
    local defaults_file=${1:-$(dirname $0)/../conf/defaults.conf}

    p6_file_load "$defaults_file"

    p6_return_void
}