#!/bin/sh

main() {

    . ../p6common/lib/_bootstrap.sh
    p6_bootstrap "../p6common"

    . ../p6test/lib/_bootstrap.sh
    p6_p6test_bootstrap "../p6test"

    p6_test_setup "28"

    p6_test_start "p6_verbose"
    (
	true
    )
    p6_test_finish

    p6_test_start "p6_debug"
    (
	true
    )
    p6_test_finish

    p6_test_start "p6_debug"
    (
	true
    )
    p6_test_finish

    p6_test_start "p6_log"
    (
	true
    )
    p6_test_finish

    p6_test_start "p6_debugging"
    (
	true
    )
    p6_test_finish

    p6_test_start "p6_debugging_system_on"
    (
	true
    )
    p6_test_finish

    p6_test_start "p6_dry_running"
    (
	true
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
