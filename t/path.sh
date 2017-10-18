#!/bin/sh

main() {

    . ../p6test/lib/_colors.sh
    . ../p6test/lib/_util.sh
    . ../p6test/lib/backends/tap.sh
    . ../p6test/lib/asserts/aserts.sh
    . ../p6test/lib/harness.sh
    . ../p6test/lib/api.sh

    . lib/io.sh
    . lib/path.sh

    p6_test_setup "3"

    p6_test_start "p6_path_current"
    (
	local p="/bin:/usr/bin"
	local cmd="PATH=$p p6_path_current"
	p6_test_run "$cmd"
	p6_test_assert_run_rc "min path: 0" "0"
	p6_test_assert_eq "$(p6_test_run_stdout | xargs)" "$(echo $p | sed -e 's,:, ,g')" "min path: works"
	p6_test_assert_blank "$(p6_test_run_stderr)" "min path: no stderr"
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
