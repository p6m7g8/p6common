#!/bin/sh

p6_cicd__debug() {
    local msg="$1"

    p6_debug "p6_cicd: $msg"
}

p6_cicd_tests_run() {

    # XXX: move to func
    . ../p6test/lib/_colors.sh
    . ../p6test/lib/_util.sh
    . ../p6test/lib/backends/tap.sh
    . ../p6test/lib/asserts/aserts.sh
    . ../p6test/lib/harness.sh
    . ../p6test/lib/api.sh

    p6_test_harness_tests_run "t"
}

p6_cicd_version_bump() {

    p6_config_load

    p6_version_bump "$@"
}

p6_cicd_tag() {
    local file="${1:-conf/meta}"

    p6_config_load

    local version=$(p6_version_get "$file")
}

p6_cicd_release() {

    p6_config_load

    # .....
}

p6_cicd_install() {

    p6_config_load

    # .....
}
