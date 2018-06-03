p6_echo() {

    echo "$@"
}

p6_msg() {
    p6_echo "$@"
}

p6_log() {
    p6_msg "$@" >> /tmp/p6.log
}

p6_error() {
    p6_msg "$@" >2
}

p6_verbose() {
    local level="$1"
    shift

    P6_VERBOSE=${P6_VERBOSE:-0}
    [ $VERBOSE -ne 0 -a \( $level -gt $P6_VERBOSE -o $level -eq $P6_VERBOSE \) ] && p6_msg "$@"
}

p6_debug() {
    #    [ -n "$P6_DEBUG" ] && p6_msg "$@"
    p6_msg "$@" >> /tmp/p6.log
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
    local cmd="$@"

#    if [ -n "${P6_DRY_RUN}" ]; then
	p6_log "$cmd" | perl -p -e "s, , \\\\\n\t,g"
#    fi
#    eval "$cmd"
}

p6_log_or_run() {
    local cmd="$@"

#    if [ -n "${P6_DRY_RUN}" ]; then
	p6_log "$cmd" | perl -p -e "s, , \\\\\n\t,g"
#    else
#	eval "$cmd"
#    fi
}

p6_return_int() {
  local int="$1"

  return $int
}

p6_return_bool() {
    local bool="$1"

    return $bool
}

p6_return() {

    p6_echo "$@"
    return
}
