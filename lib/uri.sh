p6_uri_name() {
    local uri="$1"

    basename $uri
}

p6_uri_path() {
    local uri="$1"

    dirname $uri
}
