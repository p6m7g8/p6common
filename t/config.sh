#!/bin/sh

main() {

    . ../p6common/src/_bootstrap.sh
    p6_bootstrap "../p6common"

    . ../p6test/src/_bootstrap.sh
    p6_p6test_bootstrap "../p6test"

    p6_test_setup "7"

    p6_test_start "p6_config_load"
    (
        p6_test_run "p6_config_load"
        p6_test_assert_run_ok "runs" ""
    )
    p6_test_finish

    p6_test_start "p6_config_load with file"
    (
        P6_PREFIX=$P6_TEST_DIR_ROOT/ p6_test_run "p6_config_load fixtures/defaults.conf"
        p6_test_assert_run_ok "runs" ""
        p6_test_assert_eq "$_p6_test_a" "9" "val from file is visible: _p6_test_a is 9"
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
