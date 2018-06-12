p6_string__debug() {
    local msg="$1"

    p6_debug "p6_string: $msg"
}

p6_string_blank() {
    local string="$1"

    local rv=-1
    if [ -z "$string" ]; then
	rv=0
    else
	rv=1
    fi

    p6_string__debug "blank(): [$string] -> $rv"

    p6_return_bool $rv
}

p6_string_append() {
    true
}

p6_string_init_cap() {
    local str="$1"

    echo $str | awk '{for(i=1;i<=NF;i++){ $i=toupper(substr($i,1,1)) substr($i,2) }}1'
}
