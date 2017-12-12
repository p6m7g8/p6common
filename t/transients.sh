#!/bin/sh

main() {

    . ../p6test/lib/_colors.sh
    . ../p6test/lib/_util.sh
    . ../p6test/lib/backends/tap.sh
    . ../p6test/lib/asserts/aserts.sh
    . ../p6test/lib/harness.sh
    . ../p6test/lib/api.sh

    . lib/const.sh
    . lib/io.sh
    . lib/tokens.sh
    . lib/dir.sh
    . lib/file.sh
    . lib/string.sh
    . lib/transients.sh

    p6_test_setup "12"

    p6_test_start "p6_transient_create"
    (
	p6_test_run "p6_transient_create"
	p6_test_assert_run_ok "no args"

	p6_test_run "p6_transient_create" "tmp"
	p6_test_assert_blank "$(p6_test_run_stderr)" "tmp: no stderr"
	p6_test_assert_contains "/tmp/p6/transients/tmp/" "$(p6_test_run_stdout)" "tmp: prefix"
	p6_test_assert_dir_exists "$(p6_test_run_stdout)" "tmp: exists -> $(p6_test_run_stdout)"
	p6_transient_delete "$(p6_test_run_stdout)"
	p6_test_assert_dir_not_exists "$(p6_test_run_stdout)" "tmp: cleaned up"
    )
    p6_test_finish

    p6_test_start "p6_transient_create # overrun"
    (
	p6_test_run "P6_TEST_TRANSIENT_CREATE_RAND=1 p6_transient_create" "tmp" "1"
	p6_test_assert_blank "$(p6_test_run_stderr)" "tmp: no stderr"
	p6_test_assert_contains "/tmp/p6/transients/tmp/" "$(p6_test_run_stdout)" "tmp: prefix"
	p6_test_assert_dir_exists "$(p6_test_run_stdout)" "tmp: exists -> $(p6_test_run_stdout)"

	p6_test_run "P6_TEST_TRANSIENT_CREATE_RAND=1 p6_transient_create" "tmp" "1"
	p6_test_assert_blank "$(p6_test_run_stderr)" "tmp: no stderr"
	p6_test_assert_blank "$(p6_test_run_stdout)" "tmp: already exists"

	p6_transient__cleanup
	p6_test_assert_dir_not_exists "/tmp/p6/transients/tmp/TEST_MODE" "tmp: cleaned up"
    )
    p6_test_teardown
}

main "$@"