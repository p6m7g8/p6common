msg() {
    echo "$@"
}

Log() { msg "$@" }

error() {
    echo >2 "$@"
}

verbose() {
    local level="$1"
    shift

    VERBOSE=${VERBOSE:-0}
    [ $VERBOSE -ne 0 -a \( $level -gt $VERBOSE -o $level -eq $VERBOSE \) ] && echo "$@"
}

debug() {
    [ -n "$DEBUG" ] || return

    echo >&2 "$@"
}

die() {
    local code="$1"
    shift

    echo "$@"
    exit $code
}

header() {
    local indent="$1"
    shift

    local i=0
    while [ $i -lt $indent ]; do
	echo "=\c"
	i=$(($i+1))
    done

    echo "> \c"
    echo "$@"
}

cond_run() {

    log_and_run "$*"
}

log_and_run() {
    local cmd="$1"

    if [ -n "${DRY_RUN}" ]; then
        Log "$cmd" | perl -p -e "s, , \\\\\n\t,g"
    fi
    eval "$cmd"
}

cond_log_and_run() {
    local cmd="$*"

    if [ -n "${DRY_RUN}" ]; then
        Log "$cmd" | perl -p -e "s, , \\\\\n\t,g"
    else
        eval "$cmd"
    fi
}
