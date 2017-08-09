dt_now_epoch_seconds() {

    date "+%s"
}

dt_now() {

    date "+%Y%m%d"
}

dt_yesterday() {

    date -v -1d "+%Y%m%d"
}

dt_tomorrow() {

    date -v +1d "+%Y%m%d"
}
