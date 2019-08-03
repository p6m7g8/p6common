p6_run__debug() {
    local msg="$1"

    p6_debug "p6_run: $msg"
}

p6_run_retry() {
    local stop="$1"
    local fail="$2"
    local func="$3"
    shift 3

    p6_dryruning && p6_return

    local i=1
    while [ : ]; do
	local status=$($func "$@")
	$($stop "$status" "$@")
	i=$(p6_retry_delay_doubling "$i")
    done

    p6_retun "$status"
}

p6_run_parallel() {
    local i="$1"
    local parallel="$2"
    local things="$3"
    local cmd="$4"
    shift 4

    local thing
    for thing in $(echo $things); do
	((i=i%parallel)); ((i++==0)) && wait
	p6_run__debug "run_parallel(): $cmd @ $thing"
	echo "$cmd [$@] '$thing'"
	local rc="$($cmd $@ "$thing")" &
    done
}

p6_run_serial() {
    local things="$1"
    local cmd="$2"
    shift 2

    local thing
    for thing in $(echo $things); do
	p6_run__debug "run_serial(): $cmd @ $thing"
	local rc="$($cmd $@ "$thing")"
    done
}

p6_run_if_not_in() {
    local script="${1%.sh}"
    local skip_list="$2"

    local item
    for item in $(echo $skip_list); do
	if [ "$item" = "$script" ]; then
	    p6_return_bool 0
	fi
    done

    p6_return_bool 1
}

p6_run_script() {
    local cmd_env="$1"
    local shell="$2"
    local set_flags="$3"
    local cmd="$4"
    local exts="${5:-.sh}"
    local arg_list="$6"
    shift 6

    local file=$(p6_file_cascade "${cmd}" "${exts}" $@)
    p6_run__debug "run(): $file"
    env -i ${cmd_env} ${shell} ${set_flags} ${file} $arg_list
}
