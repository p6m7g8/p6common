#!/bin/sh

main() {

    . ../p6test/lib/_colors.sh
    . ../p6test/lib/_util.sh
    . ../p6test/lib/backends/tap.sh
    . ../p6test/lib/asserts/aserts.sh
    . ../p6test/lib/harness.sh
    . ../p6test/lib/api.sh

    . lib/io.sh
    . lib/alias.sh

    p6_test_setup "6"

    p6_test_start "p6_alias"
    (
	p6_test_run "p6_alias"
	p6_test_assert_run_ok "no arg:  success return code"
	p6_test_assert_blank "$(p6_test_run_stdout)" "no arg:  no stdout"
	p6_test_assert_blank "$(p6_test_run_stderr)" "no arg:  no stderr"

	p6_test_run "p6_alias" "from"
	p6_test_assert_run_ok "one arg: success return code"
	p6_test_assert_blank "$(p6_test_run_stdout)" "one arg: no stdout"
	p6_test_assert_blank "$(p6_test_run_stderr)" "one arg: no stderr"

	p6_test_run "p6_alias" "pmg" "echo 777"
	p6_test_assert_run_ok "success return code"
	p6_test_assert_blank "$(p6_test_run_stdout)" "no stdout"
	p6_test_assert_blank "$(p6_test_run_stderr)" "no stderr"

	p6_test_run "pmg"
	p6_test_assert_run_ok "success return code"
	p6_test_assert_blank "$(p6_test_run_stdout)" "no stdout"
	p6_test_assert_blank "$(p6_test_run_stderr)" "no stderr"
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
