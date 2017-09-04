p6_file_load() {
    local file="$1"

    debug "loading $file"
    [ -r $file ] && . $file
}

p6_file_move() {
    local src="$1"
    local dst="$2"

    debug "rename $src to $dst"
    mv $src $dst
}

p6_file_copy() {
    local src="$1"
    local dst="$2"

    debug "copy $src to $dst"
    cp $src $dst
}

p6_file_rmf() {
    local file="$1"

    debug "remove $file"
    rm -f $file
}

p6_file_unlink() {
    local file="$1"

    debug "unlink $file"
    unlink $file
}

p6_file_contains() {
    local pattern="$1"
    local file="$2"

    debug "match $pattern in $file"
    grep "$pattern" $file
}

p6_file_ma_sync() {
    local from="$1"
    local to="$2"

    debug "time $from -> $to"
    touch -r $from $to
}

p6_file_symlink() {
    local to="$1"
    local from="$2"

    debug "symbolic link $to -> $from"
    ln -s $to $from
}

p6_file_cascade() {
    local cmd="$1"
    local exts="$2"
    shift 2

    # Search
    local path
    for path in "$@"; do
	if [ -z "${exts}" ]; then
	    debug "Looking: [$path/$cmd]"
	    if [ -f "$path/$cmd" ]; then
		debug "Found: $path/$cmd"
		echo "$path/$cmd"
		break 2
	    fi
	else
	    local ext
	    for ext in $exts ''; do
		debug "Looking: [$path/$cmd$ext]"
		if [ -f "$path/$cmd$ext" ]; then
		    debug "Found: $path/$cmd$ext"
		    echo "$path/$cmd$ext"
		    break 2
		fi
	    done
	fi
    done
}
