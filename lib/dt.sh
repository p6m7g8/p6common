#!/bin/sh

p6_dt__debug() {
    local msg="$1"

    p6_debug "p6_dt: $msg"
}

p6_dt__date() {
    local fmt="$1"
    local offset="$2"

    p6_dt__debug "_date(): date \"$fmt\" \"$offset\""

    local dt
    if [ -z "$offset" ]; then
	dt=$(date $fmt)
    else
	local os_name=$(p6_os_name)
	case $os_name in
	    Darwin|BSD) oft_flag="-v" ; oft_val="${oft}d" ;;
	    *)          oft_flag="--date"  ; oft_val="${oft} day ago" ;;
	esac
	dt=$(date $fmt $oft)
    fi

    p6_return "$dt"
}

p6_dt_now_epoch_seconds() {

    p6_dt__date "+%s"
}

p6_dt_now() {

    p6_dt__date "+%Y%m%d"
}

p6_dt_yesterday() {

    local fmt="+%Y%m%d"
    p6_dt__date "$fmt" "-1"
}

p6_dt_tomorrow() {

    local fmt="+%Y%m%d"
    p6_dt__date "$fmt" "1"
}

p6_dt_mtime() {
    local file="$1"

    stat -f "%m" $file
}
