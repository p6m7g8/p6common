#!/bin/sh

######################################################################
#<
#
# Function:
#	p6_debug__debug()
#
#>
######################################################################
p6_debug__debug() {
    local msg="$1" # msg to log

    p6_debug "debug: $msg"

    p6_return_void
}

######################################################################
#<
#
# Function:
#	p6_verbose(level)
#
#  Args:
#	level - minimum verbosity before output
#
#>
######################################################################
p6_verbose() {
    local level="$1" # minimum verbosity before output
    shift

    P6_VERBOSE=${P6_VERBOSE:-0}
    [ $P6_VERBOSE -ne 0 -a \( $level -gt $P6_VERBOSE -o $level -eq $P6_VERBOSE \) ] && p6_msg "$@"

    p6_return_void
}

######################################################################
#<
#
# Function:
#	p6_debug()
#
#>
######################################################################
p6_debug() {

    if p6_debugging; then
	p6_msg "$@" >> /tmp/p6/debug.log
    fi

    p6_return_void
}

######################################################################
#<
#
# Function:
#	p6_log()
#
#>
######################################################################
p6_log() {

    p6_msg "$@" >> /tmp/p6/log.log

    p6_return_void
}

######################################################################
#<
#
# Function:
#	bool rv = p6_debugging()
#
#  Returns:
#	bool - rv: whether debugging
#
#>
######################################################################
p6_debugging() {

    test -n "${P6_DEBUG}"
    local rv=$?

    p6_return_bool "$rv"
}

######################################################################
#<
#
# Function:
#	bool rv = p6_dryruning()
#
#  Returns:
#	bool - rv: whether dryrunning
#
#>
######################################################################
p6_dryruning() {

    test -n "${P6_DRY_RUN}"
    local rv=$?

    p6_return_bool "$rv"
}
