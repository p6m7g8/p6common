json_key_2_value() {
    local key="$1"
    local file="$2"

    if [ x"$file" = x"-" ]; then
	file=""
    else
	file="< $file"
    fi

    awk -v k=$key '$1 ~ k { print $2 }' $file | sed -e 's/[",:]//g' | head -1
}

json_value_2_key() {
    local key="$1"
    local file="$2"

    if [ x"$file" = x"-" ]; then
	file=""
    else
	file="< $file"
    fi

    awk -v k=$key '$2 ~ k { print $1 }' $file | sed -e 's/[",:]//g'
}
