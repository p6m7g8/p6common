p6_run__debug() {
    local msg="$1"

    p6_debug "p6_run: $msg"
}

p6_run_parallel() {
    local i="$1"
    local parallel="$2"
    local things="$3"
    local cmd="$1"
    shift 4

    local thing
    for thing in $(echo $things); do
	((i=i%parallel)); ((i++==0)) && wait
	p6_run_debug "run_parallel(): $cmd @ $thing"
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
	p6_run_debug "run_serial(): $cmd @ $thing"
	local rc="$($cmd $@ "$thing")"
    done
}

p6_run_if_not_in() {
    local script="${1%.sh}"
    local skip_list="$2"

    local item
    for item in $(echo $skip_list); do
	if [ "$item" = "$script" ]; then
	    echo 0
	    return
	fi
    done

    echo 1
}

p6_run_script() {
    local cmd_env="$1"
    local shell="$2"
    local set_flags="$3"
    local cmd="$4"
    local exts="${5:-.sh}"
    local arg_list="$6"
    shift 6

    local file=$(file_cascade "${cmd}" "${exts}" $@)
    p6_run_debug "run(): $file"
    p6_debug "Run: [$file]"
    env -i ${cmd_env} ${shell} ${set_flags} ${file} $arg_list
}
