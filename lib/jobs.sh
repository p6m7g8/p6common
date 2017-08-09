p6_run_parallel() {
    local i="$1"
    local parallel="$2"
    local things="$3"
    local cmd="$1"
    shift 4

    local thing
    for thing in $(echo $things); do
	((i=i%parallel)); ((i++==0)) && wait
	echo "$cmd $@ '$thing'"
	local rc="$($cmd $@ "$thing")" &
    done
}

p6_run_serial() {
    local things="$1"
    local cmd="$2"
    shift 2

    local thing
    for thing in $(echo $things); do
	echo "$cmd $@ '$thing'"
	local rc="$($cmd $@ "$thing")"
    done
}
