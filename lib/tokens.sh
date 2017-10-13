p6_hash() {
    local str="$1"

    local hashed=$(echo "$str" | md5)

    p6_return "$hashed"
}

p6_token() {
    local len="$1"

    local token=$(cat /dev/urandom | env LC_CTYPE=C tr -dc a-zA-Z0-9 | head -c $len)

    p6_return "$token"
}

p6_mkpasswd() {
    local len="$1"

    local pass=$(p6_token "$len")

    p6_return "$pass"
}
