p6_debug__dir() {
    local msg="$1"

    p6_debug "p6_dir: $msg"
}

p6_dir_load() {
    local dirs="$@"

    p6_debug__dir "load(): $dirs"

    local dir
    for dir in $dirs; do
        local children=$(p6_dirs_list $dirs)
        for child in $(echo $children); do
             p6_file_load "$dir/$child"
        done
    done
}

p6_dirs_list() {
    local dirs="$@"

    p6_debug__dir "list(): $dirs"

    local dir
    for dir in $dirs; do
        if p6_dir_exists "$dir"; then
	    local children=$(cd $dir ; ls -1 | xargs)
	    p6_debug__dir "list(): collecting $dir -> [$children]"
	else
	    p6_debug__dir "list(): $dir DNE"
	fi
    done

    echo $children
}

p6_dir_exists() {
    local dir="$1"

    local rv=-1
    if [ -d "$dir" ]; then
	rv=0
    else
	rv=1
    fi

    p6_debug__dir "exists(): $dir -> $rv"

    p6_return_bool "$rv"
}

p6_dir_rmrf() {
    local dir="$1"

    if [ -z "$dir" -o "$dir" = "/" ]; then
	p6_msg "p6_dir: rmrf(): Cowardly refusing to shoot us in the foot [$dir]"
    else
	p6_debug__dir "rmrf(): rm -rf $dir"
	rm -rf $dir
    fi
}

p6_dir_mk() {
    local dir="$1"

    if ! p6_dir_exists "$dir"; then
	p6_debug__dir "mk(): mkdir -p $dir"
	mkdir -p $dir
    fi
}

p6_dir_cp() {
    local src="$1"
    local dst="$2"

    p6_debug__dir "cp(): cp -R $src $dst"
    cp -R $src $dst
}

p6_dir_mv() {
    local src="$1"
    local dst="$2"

    p6_debug__dir "mv(): mv $src $dst"
    mv $src $dst
}

p6_dir_cd() {
    local dir="$1"

    p6_debug__dir "cd(): cd $dir"
    cd $dir
}
