load_file() {
    local file="$1"

    debug "loading $file"
    [ -r $file ] && . $file
}

mv_file() {
    local src="$1"
    local dst="$2"

    debug "rename $src to $dst"
    mv $src $dst
}

cp_file() {
    local src="$1"
    local dst="$2"

    debug "copy $src to $dst"
    cp $src $dst
}

rm_file() {
    local file="$1"

    debug "remove $file"
    rm -f $file
}

unlink_file() {
    local file="$1"

    debug "unlink $file"
    unlink $file
}

grep_file() {
    local pattern="$1"
    local file="$2"

    debug "match $pattern in $file"
    grep "$pattern" $file
}

time_ma_set() {
    local from="$1"
    local to="$2"

    debug "time $from -> $to"
    touch -r $from $to
}

symlink() {
    local to="$1"
    local from="$2"

    debug "symbolic link $to -> $from"
    ln -s $to $from
}

to_file() {
    local contents="$1"

    local dir=$(transient_create "idk")

    echo $contents > $dir/file

    echo $dir/file
}

transient_create() {
    local dir_name="$1"

    local path=$(mktemp -d -t $dir_name)
    debug "transient $path"

    echo $path
}

transient_delete() {
    local file="$1"

    debug "clean $file"
    rm -rf $(dirname $file)
}
