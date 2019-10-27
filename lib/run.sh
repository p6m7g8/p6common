#!/bin/sh

######################################################################
#<
#
# Function:
#	p6_run__debug()
#
#>
######################################################################
p6_run__debug() {
    local msg="$1"

    p6_debug "p6_run: $msg"

    p6_return_void
}

p6_run_code() {
    local code="$*"

    eval "$code"
    local rc=$?

    p6_return_code_as_code "$rc"
}

######################################################################
#<
#
# Function:
#	p6_run_read_cmd(cmd)
#
#  Args:
#	cmd - 
#
#>
######################################################################
p6_run_read_cmd() {
    local cmd="$@"

    if p6_debug || p6_verbose; then
	p6_log "$cmd" | perl -p -e "s, , \\\\\n\t,g"
    fi

    p6_run_code "$cmd"
    local rc=$?

    p6_return_code_as_code "$rc"
}

######################################################################
#<
#
# Function:
#	p6_run_write_cmd(cmd)
#
#  Args:
#	cmd - 
#
#>
######################################################################
p6_run_write_cmd() {
    local cmd="$@"

    if p6_dryruning; then
	p6_log "$cmd" | perl -p -e "s, , \\\\\n\t,g"
	# XXX: intentional no run
	p6_return_true
    else
	if p6_debugging; then
	    p6_log "$cmd" | perl -p -e "s, , \\\\\n\t,g"
	fi

	p6_run_code "$cmd"
	local rc=$?

	p6_return_code_as_code "$rc"
    fi
}

######################################################################
#<
#
# Function:
#	p6_run_retry(stop, fail, func)
#
#  Args:
#	stop - 
#	fail - 
#	func - 
#
#>
######################################################################
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

    p6_retun_code_as_code "$status"
}

######################################################################
#<
#
# Function:
#	p6_run_parallel(parallel, things, cmd)
#
#  Args:
#	parallel - 
#	things - 
#	cmd - 
#
#>
######################################################################
p6_run_parallel() {
    local i="$1"
    local parallel="$2"
    local things="$3"
    local cmd="$4"
    shift 4

    local thing
    for thing in $(p6_echo "$things"); do
	((i=i%parallel)); ((i++==0)) && wait
	p6_run__debug "run_parallel(): $cmd @ $thing"
	p6_echo "$cmd [$@] '$thing'"
	local rc="$($cmd $@ "$thing")" &
    done
}

######################################################################
#<
#
# Function:
#	p6_run_serial(things, cmd)
#
#  Args:
#	things - 
#	cmd - 
#
#>
######################################################################
p6_run_serial() {
    local things="$1"
    local cmd="$2"
    shift 2

    local thing
    for thing in $(p6_echo "$things"); do
	p6_run__debug "run_serial(): $cmd @ $thing"
	local rc="$($cmd $@ "$thing")"
    done

    p6_return_void
}

######################################################################
#<
#
# Function:
#	true  = p6_run_if_not_in(script, skip_list)
#
#  Args:
#	script - 
#	skip_list - 
#
#  Returns:
#	true - #	false - 
#
#>
######################################################################
p6_run_if_not_in() {
    local script="${1%.sh}"
    local skip_list="$2"

    local item
    for item in $(p6_echo "$skip_list"); do
	if [ "$item" = "$script" ]; then
	    p6_return_true
	fi
    done

    p6_return_false
}

######################################################################
#<
#
# Function:
#	p6_run_script(cmd_env, shell, set_flags, cmd, [exts=.sh], arg_list)
#
#  Args:
#	cmd_env - 
#	shell - 
#	set_flags - 
#	cmd - 
#	OPTIONAL exts -  [.sh]
#	arg_list - 
#
#>
######################################################################
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