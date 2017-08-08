run_parallel() {
    local i="$1"
    local parallel="$2"
    local things="$3"
    shift 3

    local cmd="$1"
    shift 1

    local thing
    for thing in $(echo $things); do
	((i=i%parallel)); ((i++==0)) && wait
	echo "$cmd $@ '$thing'"
	local rc="$($cmd $@ "$thing")" &
    done
}
