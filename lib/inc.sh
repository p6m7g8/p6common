#!/bin/sh

p6_include__debug() {
    local msg="$1"

    p6_debug "p6_include: $msg"
}

p6_include_file() {
    local file="$1"

    p6_include__debug "file(): $file"
    file_load "$file"
}

p6_include_module() {
    local module="$1"
    local start="${2:-init.cfg}"

    p6_include__debug "module(): $module/$start"
    file_load "$module/$start"
}
