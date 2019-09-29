#!/bin/sh

######################################################################
#<
#
# Function:
#      = p6_debug__debug()
#
#
#
#>
######################################################################
p6_debug__debug() {
    local msg="$1" # msg to log

    p6_debug "debug: $msg"
}

######################################################################
#<
#
# Function:
#      = p6_verbose(level)
#
# Arg(s):
#    level - minimum verbosity before output
#
#
#>
######################################################################
p6_verbose() {
    local level="$1" # minimum verbosity before output
    shift

    P6_VERBOSE=${P6_VERBOSE:-0}
    [ $P6_VERBOSE -ne 0 -a \( $level -gt $P6_VERBOSE -o $level -eq $P6_VERBOSE \) ] && p6_msg "$@"
}

######################################################################
#<
#
# Function:
#      = p6_debug()
#
#
#
#>
######################################################################
p6_debug() {

    if p6_debugging; then
	p6_msg "$@" >> /tmp/p6/debug.log
    fi
}

######################################################################
#<
#
# Function:
#      = p6_log()
#
#
#
#>
######################################################################
p6_log() {

    p6_msg "$@" >> /tmp/p6/log.log
}

######################################################################
#<
#
# Function:
#     $rv = p6_debugging()
#
#
# Return(s):
#    $rv - whether debugging
#
#>
######################################################################
p6_debugging() {

    local rv=$([ -n "${P6_DEBUG}" ])

    p6_return_bool "$rv" # whether debugging
}

######################################################################
#<
#
# Function:
#     $rv = p6_dryruning()
#
#
# Return(s):
#    $rv - whether dryrunning
#
#>
######################################################################
p6_dryruning() {

    local rv=[ -n "${P6_DRY_RUN}" ]

    p6_return_bool "$rv" # whether dryrunning
}
