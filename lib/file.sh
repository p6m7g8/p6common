p6_debug__file() {
    local msg="$1"

    p6_debug "p6_file: $msg"
}

p6_file_load() {
    local file="$1"

    if [ -r $file ]; then
	p6_debug__file "load(): -r $file"
	. $file
    else
	p6_debug__file "load(): $file DNE"
    fi
}

p6_file_move() {
    local src="$1"
    local dst="$2"

    p6_debug__file "move(): $src $dst"
    mv $src $dst
}

p6_file_copy() {
    local src="$1"
    local dst="$2"

    p6_debug__file "copy(): $src $dst"
    cp $src $dst
}

p6_file_rmf() {
    local file="$1"

    p6_debug__file "rmf(): rm -f $file"
    rm -f $file
}

p6_file_unlink() {
    local file="$1"

    p6_debug__file "unlink(): unlink $file"
    unlink $file
}

p6_file_contains() {
    local pattern="$1"
    local file="$2"

    p6_debug__file "contains(): /$pattern/ $file"
    grep "$pattern" $file
}

p6_file_repalce() {
    local file="$1"
    local sed_cmd="$2"

    p6_debug__file "replace(): sed -i '' -e $sed_cmd $file"
    sed -i '' -e $sed_cmd $file
}

p6_file_exists() {
    local file="$1"

    if [ -e $file ]; then
	p6_debug__file "exists(): $file: -e "
	echo 1
    else
	p6_debug__file "exists(): $file: DNE "
	echo 0
    fi
}

p6_file_create() {
    local file="$1"

    p6_debug__file "create(): touch $file"
    touch $file
}

p6_file_append() {
    local file="$1"
    local contents="$2"

    p6_debug__file "append(): $contents -> $file"
    echo "$contents" >> $file
}

p6_file_ma_sync() {
    local from="$1"
    local to="$2"

    p6_debug__file "ma_sync(): $from -> $to"
    touch -r $from $to
}

p6_file_symlink() {
    local to="$1"
    local from="$2"

    p6_debug__file "symlink(): $to -> $from"
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
	    p6_debug__file "cascade(): Checking: $path/$cmd"
	    if [ -f "$path/$cmd" ]; then
		p6_debug__file "cascade(): Found: $path/$cmd"
		echo "$path/$cmd"
		break 2
	    fi
	else
	    local ext
	    for ext in $exts ''; do
		p6_debug__file "cascade(): [$ext] Checking: $path/$cmd$ext"
		if [ -f "$path/$cmd$ext" ]; then
		    p6_debug__file "cascade(): [$ext] Found: $path/$cmd$ext"
		    echo "$path/$cmd$ext"
		    break 2
		fi
	    done
	fi
    done
}
