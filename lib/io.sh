msg() {
    echo "$@"
}

Log() { msg "$@" }

error() {
    msg "$@" >2
}

verbose() {
    local level="$1"
    shift

    VERBOSE=${VERBOSE:-0}
    [ $VERBOSE -ne 0 -a \( $level -gt $VERBOSE -o $level -eq $VERBOSE \) ] && msg "$@"
}

debug() {
    [ -n "$DEBUG" ] && msg "$@" >&2
}

die() {
    local code="$1"
    shift

    msg "$@"
    exit $code
}

header() {
    local indent="$1"
    shift

    local h=""
    local i=0
    while [ $i -lt $indent ]; do
	h="${h}="
	i=$(($i+1))
    done

    msg "$h> $@"
}

h1() { header  "2" "$@" }
h2() { header  "4" "$@" }
h3() { header  "6" "$@" }
h4() { header  "8" "$@" }
h5() { header "10" "$@" }

log_and_run() {
    local cmd="$1"

    if [ -n "${DRY_RUN}" ]; then
	Log "$cmd" | perl -p -e "s, , \\\\\n\t,g"
    fi
    eval "$cmd"
}

log_or_run() {
    local cmd="$*"

    if [ -n "${DRY_RUN}" ]; then
	Log "$cmd" | perl -p -e "s, , \\\\\n\t,g"
    else
	eval "$cmd"
    fi
}
