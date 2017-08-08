uri_parse_name() {
    local uri="$1"

    basename $uri
}

uri_parse_path() {
    local uri="$1"

    dirname $uri
}
