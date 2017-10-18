#!/bin/sh

main() {

    . ../p6test/lib/_colors.sh
    . ../p6test/lib/_util.sh
    . ../p6test/lib/backends/tap.sh
    . ../p6test/lib/asserts/aserts.sh
    . ../p6test/lib/harness.sh
    . ../p6test/lib/api.sh

    . lib/io.sh
    . lib/string.sh
    . lib/interactive.sh

    p6_test_setup "1"

    p6_test_start "p6_int_confirm_ask"
    (
	p6_test_skip "p6test doesn't yet do stdin" "future"
	p6_test_run "p6_int_confirm_ask"
	p6_test_assert_run_ok "A: " 42
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
