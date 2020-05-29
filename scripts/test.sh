#!/bin/sh

. ../p6common/lib/_bootstrap.sh
p6_bootstrap

p6_bootstrap ../p6test

p6_p6test_bootstrap

p6_test_harness_tests_run t
