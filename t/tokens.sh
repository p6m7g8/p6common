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
    . lib/tokens.sh

    p6_test_setup "15"

    p6_test_start "p6_token_hash"
    (
	p6_test_run "p6_token_hash"
	p6_test_assert_run_ok "no arg: needs str=string"

	p6_test_run "p6_token_hash 'foo'"
	p6_test_assert_blank "$(p6_test_run_stderr)" "no stderr"
	p6_test_assert_eq "$(p6_test_run_stdout)" "d3b07384d113edec49eaa6238ad5ff00" "expected hash"
    )
    p6_test_finish

    p6_test_start "p6_token_random()"
    (
	p6_test_run "p6_token_random"
	p6_test_assert_run_ok "no arg"

	p6_test_run "p6_token_random 64"
	p6_test_assert_contains "$(p6_test_run_stdout)" "[0-9a-zA-Z]*" "well formed token"
	p6_test_assert_len "$(p6_test_run_stdout)" "64" "correct length"
    )
    p6_test_finish

    p6_test_start "p6_token_passwd()"
    (
	p6_test_run "p6_token_passwd"
	p6_test_assert_run_ok "no arg"

	p6_test_run "p6_token_passwd 64"
	p6_test_assert_contains "$(p6_test_run_stdout)" "[0-9a-zA-Z]*" "well formed passwd"
	p6_test_assert_len "$(p6_test_run_stdout)" "64" "correct length"
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
