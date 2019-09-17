#!/bin/sh

p6_os__debug() {
    local msg="$1"

    p6_debug "p6_os: $msg"
}

p6_os_name() {

    local name=$(uname -r)

    p6_os__debug "name(): $name"

    p6_return "$name"
}
