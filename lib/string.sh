p6_init_cap() {
    local str="$1"

    echo $str | awk '{for(i=1;i<=NF;i++){ $i=toupper(substr($i,1,1)) substr($i,2) }}1'
}

p6_transliterate() {
    local str="$1"
    local from="$2"
    local to="$3"

    echo $str | tr $from $to
}

p6_string_to_file() {
    local contents="$1"

    local dir=$(p6_transient_create "idk")

    echo $contents > $dir/file

    echo $dir/file
}

p6_append_to() {
    local to="$1"
    local new="$2"
    local sep="${3:-" "}"

    if [ -n "$to" ]; then
	to="$to$sep$new"
    else
	to=$new
    fi

    echo $to
}

p6_append_to_cond() {
    local str="$1"
    local flag="$2"
    local add_str="$3"
    local sep="${4:-,}"

    if [ x"$flag" != x"0" ]; then
	str=$(p6_append_to "$str" "$add_str" "$sep")
    fi

    echo $str
}

p6_append_to_if_not_in() {
    local str="$1"
    local thing="$2"
    local not_thing="$3"
    local add_str="$4"
    local sep="${5:-,}"

    case $thing in
	$not_thing) ;;
	*) str=$(p6_append_to "$str" "$add_str" "$sep") ;;
    esac

    echo $str
}

p6_tokenize() {
    local str="$1"
    local delim="${2:-:}"

    local IFS="$delim"
    for i in $(echo $str); do
	echo $i
    done
}
