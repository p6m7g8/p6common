p6_uri__debug() {
    local msg="$1"

    p6_debug "p6_uri: $msg"
}

p6_uri_name() {
    local uri="$1"

    local name=$(basename $uri)

    p6_uri__debug "name(): $uri -> $name"

    echo $name
}

p6_uri_path() {
    local uri="$1"

    local name=$(dirname $uri)

    p6_uri__debug "name(): $uri -> $name"

    echo $name
}
