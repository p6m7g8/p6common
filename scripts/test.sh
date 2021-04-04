#!/bin/bash

. ../p6common/lib/_bootstrap.sh
p6_bootstrap

set -x
p6_test_harness_tests_run t
set +x
