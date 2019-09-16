#!/bin/sh

main() {

    . ../p6test/lib/_colors.sh
    . ../p6test/lib/_util.sh
    . ../p6test/lib/backends/tap.sh
    . ../p6test/lib/asserts/aserts.sh
    . ../p6test/lib/harness.sh
    . ../p6test/lib/api.sh

    . lib/io.sh
    . lib/debug.sh
    . lib/file.sh

    p6_test_setup "21"

    p6_test_start "p6_file_exists"
    (
	p6_test_run "p6_file_exists"
	p6_test_assert_run_ok "no arg: dne" 1

	p6_test_run "p6_file_exists" ""
	p6_test_assert_run_ok "\"\": dne" 1

	p6_test_run "p6_file_exists" ''
	p6_test_assert_run_ok "'': dne" 1

	p6_test_run "p6_file_exists" " "
	p6_test_assert_run_ok "\" \": dne" 1

	p6_test_run "p6_file_exists" "' '"
	p6_test_assert_run_ok "\' \': dne" 1

	p6_test_run "p6_file_exists" "/nonexistent"
	p6_test_assert_run_ok "/nonexistent: dne" 1

	p6_test_run "p6_file_exists" "$P6_TEST_DIR_ORIG/README.md"
	p6_test_assert_run_ok "Test file is -r per"
    )
    p6_test_finish


    p6_test_teardown
}

main "$@"
