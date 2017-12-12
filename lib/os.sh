p6_os_name() {

    local name=$(uname -r)

    p6_return "$name"
}
