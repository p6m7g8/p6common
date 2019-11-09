#!/bin/sh

main() {

    . ../p6common/lib/_bootstrap.sh
    p6_bootstrap "../p6common"

    . ../p6test/lib/_bootstrap.sh
    p6_p6test_bootstrap "../p6test"

    p6_test_setup "20"

    p6_test_start "p6_uri_name"
    (
	p6_test_run "p6_uri_name"
	p6_test_assert_run_ok "no arg: needs uri=uri"

	p6_test_run "p6_uri_name one"
	p6_test_assert_eq "$(p6_test_run_stdout)" "one" "one is itself"
	p6_test_assert_blank "$(p6_test_run_stderr)" "no stderr"

	p6_test_run "p6_uri_name one/two"
	p6_test_assert_eq "$(p6_test_run_stdout)" "two" "one/two is two"
	p6_test_assert_blank "$(p6_test_run_stderr)" "no stderr"

	p6_test_run "p6_uri_name /"
	p6_test_assert_eq "$(p6_test_run_stdout)" "/" "/ is /"
	p6_test_assert_blank "$(p6_test_run_stderr)" "no stderr"
    )
    p6_test_finish

    p6_test_start "p6_uri_path"
    (
	p6_test_run "p6_uri_path"
	p6_test_assert_run_ok "no arg: needs uri=uri"

	p6_test_run "p6_uri_path one"
	p6_test_assert_eq "$(p6_test_run_stdout)" "." "one is ."
	p6_test_assert_blank "$(p6_test_run_stderr)" "no stderr"

	p6_test_run "p6_uri_path one/two"
	p6_test_assert_eq "$(p6_test_run_stdout)" "one" "one/two is one"
	p6_test_assert_blank "$(p6_test_run_stderr)" "no stderr"

	p6_test_run "p6_uri_path one/two/three"
	p6_test_assert_eq "$(p6_test_run_stdout)" "one/two" "one/two/three is one/two"
	p6_test_assert_blank "$(p6_test_run_stderr)" "no stderr"

	p6_test_run "p6_uri_path /"
	p6_test_assert_eq "$(p6_test_run_stdout)" "/" "/ is /"
	p6_test_assert_blank "$(p6_test_run_stderr)" "no stderr"
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
