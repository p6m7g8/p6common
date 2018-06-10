##############################################################################
#>
#
# On screen (stdout) msgs for developers if verbosity level is high enough
#
#<
##############################################################################
p6_verbose() {
    local level="$1"
    shift

    P6_VERBOSE=${P6_VERBOSE:-0}
    [ $VERBOSE -ne 0 -a \( $level -gt $P6_VERBOSE -o $level -eq $P6_VERBOSE \) ] && p6_msg "$@"
}

##############################################################################
#>
#
# On screen (stdout) msgs & to the log file for developers
#
#<
##############################################################################
p6_debug() {

    if p6_debugging; then
	p6_log "$@"
    fi
}

##############################################################################
#>
#
# Log to log file
#
#<
##############################################################################
p6_log() {
    p6_msg "$@" >> /tmp/p6.log
}

p6_debugging() {

    [ -n "${P6_DEBUG}" ]
}

p6_dryruning() {

    [ -n "${P6_DRY_RUN}" ]
}
