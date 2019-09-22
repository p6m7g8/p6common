#!/bin/sh

######################################################################
#<
#
# Function:
#      = p6_int__debug()
#
#
#
#>
######################################################################
p6_int__debug() {
    local msg="$1"

    p6_debug "p6_int: $msg"
}

######################################################################
#<
#
# Function:
#     42 = p6_int_confirm_ask()
#
#
# Return(s):
#    42 - 
#
#>
######################################################################
p6_int_confirm_ask() {

    while [ : ]; do
	p6_msg "Are you sure Y/n?: \c"
	local answer
	read answer

	[ x"${answer}" = x"Y" -o x"${answer}" = x"n" ] && break
    done
    p6_int__debug "confirm_ask(): received [$answer]"

    if [ x"${answer}" = x"n" ]; then
	if [ -n "${TEST_MODE}" ]; then
	    p6_msg "Asked to Exit"
	    p6_return "42"
	else
	    p6_die "42" "Asked to Exit."
	fi
    fi
}