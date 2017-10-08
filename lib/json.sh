p6_debug__json() {
    local msg="$1"

    p6_debug "p6_json: $msg"
}

p6_json_key_2_value() {
    local key="$1"
    local file="$2"

    p6_debug__json "key_2_value(): $key $file"
    if [ x"$file" = x"-" ]; then
	file=""
    else
	file="< $file"
    fi

    local val=$(awk -v k=$key '$1 ~ k { print $2 }' $file | sed -e 's/[",:]//g' | head -1)

    p6_debug__json "key_2_value(): $val"

    echo $val
}

p6_json_value_2_key() {
    local key="$1"
    local file="$2"

    p6_debug__json "key_2_value(): $key $file"
    if [ x"$file" = x"-" ]; then
	file=""
    else
	file="< $file"
    fi

    local val=$(awk -v k=$key '$2 ~ k { print $1 }' $file | sed -e 's/[",:]//g')

    p6_debug__json "key_2_value(): $val"

    echo $val
}
