#!/bin/sh

main() {

    . ../p6common/src/_bootstrap.sh
    p6_bootstrap "../p6common"

    . ../p6test/src/_bootstrap.sh
    p6_p6test_bootstrap "../p6test"

    p6_test_setup "0"

    p6_test_start "p6_env_export"
    (
        true
    )
    p6_test_finish

    p6_test_start "p6_env_export_un"
    (
        true
    )
    p6_test_finish

    p6_test_start "p6_env_list"
    (
        true
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
