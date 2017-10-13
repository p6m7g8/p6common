p6_transient_create() {
    local dir_name="$1"
    local len="${2:-4}"

    local rand=$(p6_mkpasswd $len)
    dir_name=${TMPDIR:-/tmp}/transients/$dir_name/$rand

    p6_debug "p6_misc: transient_create(): $dir_name [$len]"

#    if p6_dir_exists "$dir_name"; then
#	local es=$(p6_dt_now_epoch_seconds)
#	dir_name="$dir_name.$es"
#    fi

    p6_dir_mk "$dir_name"
    p6_transient_log "$dir_name"

    echo $dir_name
}

p6_transient_delete() {
    local dir="$1"

    p6_debug "p6_misc: transient_delete(): $dir"
    p6_dir_rmrf "$dir"
}

## Internal Only
p6_transient_cleanup() {

    local dir
    local file=${TMPDIR:-/tmp}/transients/p6.$$.tmp

    for dir in $(cat ${TMPDIR:-/tmp}/transients/p6.$$.tmp); do
	p6_transient_delete "$dir"
    done

    exit 0
}
trap p6_transient_cleanup 0 1 2 3 6 14 15

p6_transient_log() {
    local dir="$1"

    echo "$dir" >> ${TMPDIR:-/tmp}/transients/p6.$$.tmp
}
