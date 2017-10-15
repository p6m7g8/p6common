p6_debug__dt() {
    local msg="$1"

    p6_debug "p6_dt: $msg"
}

p6_dt__date() {
    local fmt="$1"

    p6_debug__dt "_date(): date \"$fmt\""
    local dt=$(date $fmt)
    p6_return "$dt"
}

p6_dt_now_epoch_seconds() {

    p6_dt__date "+%s"
}

p6_dt_now() {

    p6_dt__date "+%Y%m%d"
}

p6_dt_yesterday() {

    p6_dt__date "-v -1d +%Y%m%d"
}

p6_dt_tomorrow() {

    p6_dt__date "-v +1d +%Y%m%d"
}
