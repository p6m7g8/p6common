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

p6_tokenize() {
    local str="$1"
    local delim="${2:-:}"

    local _SAVED_IFS=$IFS
    IFS="$delim"
    for i in $(echo $str); do
        echo $i
    done
    IFS=$_SAVED_IFS
}
