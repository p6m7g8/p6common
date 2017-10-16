#!/bin/sh

main() {

    . ../p6test/lib/_colors.sh
    . ../p6test/lib/_util.sh
    . ../p6test/lib/backends/tap.sh
    . ../p6test/lib/asserts/aserts.sh
    . ../p6test/lib/harness.sh
    . ../p6test/lib/api.sh

    . lib/io.sh
    . lib/string.sh

    p6_test_setup "37"

    p6_test_start "p6_string_blank"
    (
	p6_test_run "p6_string_blank"
	p6_test_assert_run_ok "no arg: blank"

	p6_test_run "p6_string_blank" ""
	p6_test_assert_run_ok "\"\": blank"

	p6_test_run "p6_string_blank" ''
	p6_test_assert_run_ok "'': blank"

	p6_test_run "p6_string_blank" 0
	p6_test_assert_run_ok "0: not blank" 1

	p6_test_run "p6_string_blank" 1
	p6_test_assert_run_ok "1: not blank" 1

	p6_test_run "p6_string_blank" -
	p6_test_assert_run_ok "-: not blank" 1

	p6_test_run "p6_string_blank" -1
	p6_test_assert_run_ok "-1: not blank" 1

	p6_test_run "p6_string_blank" "' '"
	p6_test_assert_run_ok "' ': not blank" 1

	p6_test_run "p6_string_blank" "a"
	p6_test_assert_run_ok "a: not blank" 1

	p6_test_run "p6_string_blank" "abcdef"
	p6_test_assert_run_ok "abcdef: not blank" 1

	p6_test_run "p6_string_blank" "a b"
	p6_test_assert_run_ok "a b: not blank" 1
    )
    p6_test_finish

    p6_test_start "p6_string_blank real use"
    (
	local s="notblank"
	if p6_string_blank "$s"; then
	    p6_test_not_ok "s=[$s] seems blank"
	else
	    p6_test_ok "positive conditional works"
	fi

	if ! p6_string_blank "$s"; then
	    p6_test_ok "negative conditional works"
	else
	    p6_test_not_ok "s=[$s] seems blank"
	fi

	local S=
	if p6_string_blank "$S"; then
	    p6_test_ok "positive conditional works"
	else
	    p6_test_not_ok "s=[$S] seems blank"
	fi

	if ! p6_string_blank "$S"; then
	    p6_test_not_ok "S=[$S] seems blank"
	else
	    p6_test_ok "negative conditional works"
	fi

    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
