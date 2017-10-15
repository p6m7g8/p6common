#!/bin/sh

main() {

    . ../p6test/lib/_colors.sh
    . ../p6test/lib/_util.sh
    . ../p6test/lib/backends/tap.sh
    . ../p6test/lib/asserts/aserts.sh
    . ../p6test/lib/harness.sh
    . ../p6test/lib/api.sh

    . lib/io.sh
    . lib/dt.sh

    p6_test_setup "12"

    p6_test_start "p6_dt_now_epoch_seconds()"
    (
	p6_test_run "p6_dt_now_epoch_seconds"
	p6_test_assert_run_ok "success return code"
	p6_test_assert_blank "$(p6_test_run_stderr)" "no stderr"
	p6_test_assert_contains "$(p6_test_run_stdout)" "1[0-9]*" "epoc seconds"
    )
    p6_test_finish

    p6_test_start "p6_dt_now()"
    (
	p6_test_run "p6_dt_now"
	p6_test_assert_run_ok "success return code"
	p6_test_assert_blank "$(p6_test_run_stderr)" "no stderr"
	p6_test_assert_contains "$(p6_test_run_stdout)" "20[1-9][0-9][0-9][0-9][0-9][0-9]" "ymd"
    )
    p6_test_finish

    p6_test_start "p6_dt_yesterday()"
    (
	p6_test_run "p6_dt_yesterday"
	p6_test_assert_run_ok "success return code"
	p6_test_assert_blank "$(p6_test_run_stderr)" "no stderr"
	p6_test_assert_contains "$(p6_test_run_stdout)" "20[1-9][0-9][0-9][0-9][0-9][0-9]" "ymd"
    )
    p6_test_finish

    p6_test_start "p6_dt_tomorrow()"
    (
	p6_test_run "p6_dt_tomorrow"
	p6_test_assert_run_ok "success return code"
	p6_test_assert_blank "$(p6_test_run_stderr)" "no stderr"
	p6_test_assert_contains "$(p6_test_run_stdout)" "20[1-9][0-9][0-9][0-9][0-9][0-9]" "ymd"
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
