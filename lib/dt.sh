p6_dt_now_epoch_seconds() {

    date "+%s"
}

p6_dt_now() {

    date "+%Y%m%d"
}

p6_dt_yesterday() {

    date -v -1d "+%Y%m%d"
}

p6_dt_tomorrow() {

    date -v +1d "+%Y%m%d"
}
