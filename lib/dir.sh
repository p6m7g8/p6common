p6_dirs_list() {
    local dirs="$@"

    local dir
    for dir in $dirs; do
	if [ -d $dir ]; then
	    (cd $dir ; ls -1)
	fi
    done
}

p6_dir_rmrf() {
    local dir="$1"

    p6_debug "remove dir $dir"
    if [ -z "$dir" -o "$dir" = "/" ]; then
	p6_msg "Cowardly refusing to shoot us in the foot"
    else
	rm -rf $dir
    fi
}

p6_dir_mk() {
    local dir="$1"

    p6_debug "mkdir $dir"
    mkdir -p $dir
}

p6_dir_cp() {
    local src="$1"
    local dst="$2"

    p6_debug "copy $src to $dst"
    cp -R $src $dst
}
p6_dir_cd() {
    local dir="$1"

    p6_debug "cd $dir"
    cd $dir
}
