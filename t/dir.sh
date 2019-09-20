#!/bin/sh

main() {

    . ../p6test/lib/_bootstrap.sh
    p6_p6test_bootstrap "../p6test"

    p6_test_setup "21"

    p6_test_start "p6_dir_exists"
    (
	p6_test_run "p6_dir_exists"
	p6_test_assert_run_ok "no arg: dne" 1

	p6_test_run "p6_dir_exists" ""
	p6_test_assert_run_ok "\"\": dne" 1

	p6_test_run "p6_dir_exists" ''
	p6_test_assert_run_ok "'': dne" 1

	p6_test_run "p6_dir_exists" " "
	p6_test_assert_run_ok "\" \": dne" 1

	p6_test_run "p6_dir_exists" "' '"
	p6_test_assert_run_ok "\' \': dne" 1

	p6_test_run "p6_dir_exists" "/nonexistent"
	p6_test_assert_run_ok "/nonexistent: dne" 1

	p6_test_run "p6_dir_exists" "."
	p6_test_assert_run_ok ". is -d"
    )
    p6_test_finish


    p6_test_teardown
}

main "$@"
