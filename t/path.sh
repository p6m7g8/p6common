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
    . lib/string.sh
    . lib/dir.sh
    . lib/path.sh

    p6_test_setup "12"

    p6_test_start "p6_path_current"
    (
	local p="/bin:/usr/bin"
	local cmd="PATH=$p p6_path_current"

	p6_test_run "$cmd"

	p6_test_assert_run_rc "min path: rc=0" "0"
	p6_test_assert_eq "$(p6_test_run_stdout | xargs)" "$(echo $p | sed -e 's,:, ,g')" "min path: works"
	p6_test_assert_blank "$(p6_test_run_stderr)" "min path: no stderr"
    )
    p6_test_finish

    p6_test_start "p6_path_if"
    (
	p6_test_run "p6_path_if"
	p6_test_assert_run_ok "no arg" "1"

	p6_test_run "p6_path_if /nonexistent"
	p6_test_assert_run_ok "/nonexistent" "1"

	p6_test_run "PATH=/bin:/usr/bin p6_path_if $P6_TEST_DIR_ORIG/t"
	p6_test_assert_run_ok "$P6_TEST_DIR_ORIG/t" "0"
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
