file_load() {
    local file="$1"

    debug "loading $file"
    [ -r $file ] && . $file
}

file_move() {
    local src="$1"
    local dst="$2"

    debug "rename $src to $dst"
    mv $src $dst
}

file_copy() {
    local src="$1"
    local dst="$2"

    debug "copy $src to $dst"
    cp $src $dst
}

file_rmf() {
    local file="$1"

    debug "remove $file"
    rm -f $file
}

file_unlink() {
    local file="$1"

    debug "unlink $file"
    unlink $file
}

file_contains() {
    local pattern="$1"
    local file="$2"

    debug "match $pattern in $file"
    grep "$pattern" $file
}

file_ma_sync() {
    local from="$1"
    local to="$2"

    debug "time $from -> $to"
    touch -r $from $to
}

file_symlink() {
    local to="$1"
    local from="$2"

    debug "symbolic link $to -> $from"
    ln -s $to $from
}
