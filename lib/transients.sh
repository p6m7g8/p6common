p6_transient_create() {
    local dir_name="$1"
    local len="${2:-4}"

    if p6_string_blank "$dir_name"; then
	p6_return ""
    else
	local rand
	if [ -n "$P6_TEST_TRANSIENT_CREATE_RAND" ]; then
	    rand=TEST_MODE
	else
	    rand=$(p6_mkpasswd "$len")
	fi

	dir_name=$P6_DIR_TRANSIENTS/$dir_name/$rand

	if p6_dir_exists "$dir_name"; then
	    p6_return ""
	else
	    p6_debug "p6_misc: transient_create(): $dir_name [$len]"
	    p6_dir_mk "$dir_name"
	    p6_transient__log "$dir_name"

	    p6_return "$dir_name"
	fi
    fi
}

# Have a good reason to call this yourself
p6_transient_delete() {
    local dir="$1"

    p6_debug "p6_misc: transient_delete(): $dir"
    p6_dir_rmrf "$dir"
}

## Internal Only
p6_transient__cleanup() {

    local dir
    for dir in $(p6_file_display "$P6_TRANSIENT_LOG"); do
	p6_transient_delete "$dir"
    done

    p6_die "$P6_TRUE" "# p6_transient__cleanup"
}
trap p6_transient__cleanup 0 1 2 3 6 14 15

p6_transient__log() {
    local dir="$1"

    p6_file_append "$P6_TRANSIENT_LOG" "$dir"
}
