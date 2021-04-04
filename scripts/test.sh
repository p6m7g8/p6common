#!/bin/bash

. ${ROOT_DIR_REL:-..}/p6common/lib/_bootstrap.sh
p6_bootstrap

p6_test_harness_tests_run t
