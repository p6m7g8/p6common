p6_string__debug() {
    local msg="$1"

    p6_debug "p6_string: $msg"
}

p6_string_blank() {
    local string="$1"

    local rv=-1
    [ -z "$string" ] && rv=1 || rv=0

#    p6_string__debug "blank(): [$string] -> $rv"

    p6_return_bool "$rv"
}
