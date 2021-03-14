#!/bin/sh

######################################################################
#<
#
# Function: p6_env__debug()
#
#>
######################################################################
p6_env__debug() {
    local msg="$1"

    p6_debug "p6_env: $msg"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_env_export(var, val)
#
#  Args:
#	var -
#	val -
#
#>
######################################################################
p6_env_export() {
    local var="$1"
    local val="$2"

    p6_run_code "export $var=\"$val\""

    p6_env__debug "export(): [$var] => [$val]"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_env_export_un(var)
#
#  Args:
#	var -
#
#>
######################################################################
p6_env_export_un() {
    local var="$1"

    p6_env__debug "export_un(): [$var]"

    ## XXX: p6_unset
    unset $var

    p6_return_void
}

######################################################################
#<
#
# Function: p6_env_list(glob)
#
#  Args:
#	glob -
#
#>
######################################################################
p6_env_list() {
    local glob="$1"

    if p6_string_blank "$glob"; then
        env
    else
        env | grep $glob
    fi

    p6_return_void
}
