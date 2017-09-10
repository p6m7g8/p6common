p6_string_create() {
    local val="$1"

    local str=$(p6_transient_create "str")/file
    touch $str
    if [ -n "$val" ]; then
	echo $val > $str
    fi
    echo $str
}

p6_string_destroy() {
    local str="$1"

    p6_transient_delete "$str"
}

p6_string_display() {
    local str="$1"

    cat $str
}

p6_string_value() {
    local str="$1"

    cat $str
}

p6_string_length() {
    local str="$1"

    echo $(($(cat $str | wc -m)-1))
}

p6_string_tokenize() {
    local str="$1"
    local delim="${2:-:}"

    local IFS="$delim"
    for i in $(cat $str); do
	echo $i
    done
}

p6_string_append_to() {
    local str="$1"
    local new="$2"
    local sep="${3:-" "}"

    local val=$(cat $str)

    if [ -n "$val" ]; then
	echo "$val$sep$new" > $str
    else
	echo $new > $str
    fi
}

p6_string_to_file() {
    local str="$1"

    local dir=$(p6_transient_create "idk")

    cat $str > $dir/file

    echo $dir/file
}

p6_string_transliterate() {
    local str="$1"
    local from="$2"
    local to="$3"

    local t=$(cat $str | tr "$from" "$to")
    echo $t > $str
}

p6_string_init_cap() {
    local str="$1"

    local t=$(cat $str | awk '{for(i=1;i<=NF;i++){ $i=toupper(substr($i,1,1)) substr($i,2) }}1')
    echo $t > $str
}

p6_string_append_to_cond() {
    local str="$1"
    local flag="$2"
    local add_str="$3"
    local sep="${4:-,}"

    if [ x"$flag" != x"0" ]; then
	p6_string_append_to "$str" "$add_str" "$sep"
    fi
}

p6_string_append_to_if_not_in() {
    local str="$1"
    local thing="$2"
    local not_thing="$3"
    local add_str="$4"
    local sep="${5:-,}"

    case $thing in
	$not_thing) ;;
	*) p6_string_append_to "$str" "$add_str" "$sep" ;;
    esac
}
