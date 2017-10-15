#!/bin/sh

main() {

    . ../p6test/lib/_colors.sh
    . ../p6test/lib/_util.sh
    . ../p6test/lib/backends/tap.sh
    . ../p6test/lib/asserts/aserts.sh
    . ../p6test/lib/harness.sh
    . ../p6test/lib/api.sh

    . lib/io.sh
    . lib/tokens.sh

    p6_test_setup "12"

    p6_test_start "p6_hash"
    (
	p6_test_run "p6_hash"
	p6_test_assert_run_ok "success return code" "needs str=string"
	p6_test_assert_blank "$(p6_test_run_stdout)" "no stdout"
	p6_test_assert_blank "$(p6_test_run_stderr)" "no stderr"

	p6_test_run "p6_hash 'foo'"
	p6_test_assert_run_ok "success return code"
	p6_test_assert_blank "$(p6_test_run_stderr)" "no stderr"
	p6_test_assert_eq "$(p6_test_run_stdout)" "d3b07384d113edec49eaa6238ad5ff00" "expected hash"
    )
    p6_test_finish

    p6_test_start "p6_token()"
    (
	p6_test_run "p6_token"
	p6_test_assert_blank "$(p6_test_run_stdout)" "no stdout"

	p6_test_run "p6_token 64"
	p6_test_assert_contains "$(p6_test_run_stdout)" "[0-9a-zA-Z]*" "well formed token"
	p6_test_assert_len "$(p6_test_run_stdout)" "64" "correct length"
    )
    p6_test_finish

    p6_test_start "p6_mkpasswd()"
    (
	p6_test_run "p6_mkpasswd"
	p6_test_assert_blank "$(p6_test_run_stdout)" "no stdout"

	p6_test_run "p6_mkpasswd 64"
	p6_test_assert_contains "$(p6_test_run_stdout)" "[0-9a-zA-Z]*" "well formed passwd"
	p6_test_assert_len "$(p6_test_run_stdout)" "64" "correct length"
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
