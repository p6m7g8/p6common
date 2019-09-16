p6_env__debug() {
    local msg="$1"

    p6_debug "p6_env: $msg"
}

p6_env_export() {
    local var="$1"
    local val="$2"

    eval "export $var=\"$val\""

    p6_env__debug "export(): [$var] => [$val]"
}

p6_env_export_un() {
    local var="$1"

    p6_env__debug "export_un(): [$var]"

    unset $k
}

p6_env_list() {
    local glob="$1"

    if p6_string_blank "$glob"; then
	env
    else
	env | grep $glob
    fi
}
