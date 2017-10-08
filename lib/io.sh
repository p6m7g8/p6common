p6_msg() {
    echo "$@"
}

p6_log() {
    p6_msg "$@"
}

p6_error() {
    p6_msg "$@" >2
}

p6_verbose() {
    local level="$1"
    shift

    VERBOSE=${VERBOSE:-0}
    [ $VERBOSE -ne 0 -a \( $level -gt $VERBOSE -o $level -eq $VERBOSE \) ] && p6_msg "$@"
}

p6_debug() {
    [ -n "$DEBUG" ] && p6_msg "$@" >> /tmp/p6.log
}

p6_die() {
    local code="$1"
    shift

    p6_msg "$@"
    exit $code
}

p6_header() {
    local indent="$1"
    shift

    local h=""
    local i=0
    while [ $i -lt $indent ]; do
	h="${h}="
	i=$(($i+1))
    done

    p6_msg "$h> $@"
}

p6_h1() {
    p6_header  "2" "$@"
}
p6_h2() {
    p6_header  "4" "$@"
}
p6_h3() {
    p6_header  "6" "$@"
}
p6_h4() {
    p6_header  "8" "$@"
}
p6_h5() {
    p6_header "10" "$@"
}

p6_log_and_run() {
    local cmd="$1"

    if [ -n "${DRY_RUN}" ]; then
	p6_log "$cmd" | perl -p -e "s, , \\\\\n\t,g"
    fi
    eval "$cmd"
}

p6_log_or_run() {
    local cmd="$*"

    if [ -n "${DRY_RUN}" ]; then
	p6_log "$cmd" | perl -p -e "s, , \\\\\n\t,g"
    else
	eval "$cmd"
    fi
}

p6_return() {

    p6_echo "$@"
}

p6_echo() {

    echo "$@"
}
