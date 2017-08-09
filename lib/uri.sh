uri_name() {
    local uri="$1"

    basename $uri
}

uri_path() {
    local uri="$1"

    dirname $uri
}
