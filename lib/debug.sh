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

    p6_debug "p6_debug: $msg"

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
    local msg="$1"

    local systems="$P6_DEBUG"
    local system=$(p6_echo "$msg" | cut -d : -f 1)

    if p6_debugging; then
	if p6_debugging_system_on "$systems" "$system"; then
	    p6_msg "$msg" >> /tmp/p6/debug.log
	fi
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

    p6_msg "$*" >> /tmp/p6/log.log

    p6_return_void
}

######################################################################
#<
#
# Function:
#	bool rv = p6_debugging()
#
#  Returns:
#	bool - rv
#
#>
######################################################################
p6_debugging() {

    test -n "${P6_DEBUG}"
    local rv=$?

    p6_return_bool "$rv"
}

p6_debugging_system_on() {
    local systems="$1"
    local system="$2"

    local rc=$P6_FALSE

    case $systems in
	*$system*) rc=$P6_TRUE ;;
    esac

    case $systems in
	*all*) rc=$P6_TRUE ;;
    esac

    p6_return_code_as_code "$rc"
}

######################################################################
#<
#
# Function:
#	bool rv = p6_dryruning()
#
#  Returns:
#	bool - rv
#
#>
######################################################################
p6_dryruning() {

    test -n "${P6_DRY_RUN}"
    local rv=$?

    p6_return_bool "$rv"
}
