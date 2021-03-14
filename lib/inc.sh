#!/bin/sh

######################################################################
#<
#
# Function: p6_include__debug()
#
#>
######################################################################
p6_include__debug() {
    local msg="$1"

    p6_debug "p6_include: $msg"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_include_module(module, [start=init.sh])
#
#  Args:
#	module -
#	OPTIONAL start - [init.sh]
#
#>
######################################################################
p6_include_module() {
    local module="$1"
    local start="${2:-init.sh}"

    . $P6_DFZ_SRC_DIR/p6m7g8/p6common/lib/io.sh
    . $P6_DFZ_SRC_DIR/p6m7g8/p6common/lib/debug.sh
    . $P6_DFZ_SRC_DIR/p6m7g8/p6common/lib/file.sh
    . $P6_DFZ_SRC_DIR/p6m7g8/p6common/lib/dir.sh

    p6_include__debug "module(): $module/$start"
    p6_file_load "$module/$start"

    p6_return_void
}
