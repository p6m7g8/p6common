init_cap() {
    local str="$1"

    echo $str | awk '{for(i=1;i<=NF;i++){ $i=toupper(substr($i,1,1)) substr($i,2) }}1'
}

transliterate() {
    local str="$1"
    local from="$2"
    local to="$3"

    echo $str | tr $from $to
}

string_to_file() {
    local contents="$1"

    local dir=$(transient_create "idk")

    echo $contents > $dir/file

    echo $dir/file
}
