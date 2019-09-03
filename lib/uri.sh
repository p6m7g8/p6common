p6_uri__debug() {
    local msg="$1"

    p6_debug "p6_uri: $msg"
}

p6_uri_name() {
    local uri="$1"

    local name=
    if ! p6_string_blank "$uri"; then
	name=$(basename $uri)
    fi
    p6_uri__debug "name(): $uri -> $name"

    p6_return "$name"
}

p6_uri_path() {
    local uri="$1"

    local name=
    if ! p6_string_blank "$uri"; then
	name=$(dirname $uri)
    fi
    p6_uri__debug "name(): $uri -> $name"

    p6_return "$name"
}
