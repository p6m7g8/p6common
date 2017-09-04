p6_dirs_list() {

    local dir
    for dir in "$@"; do
	if [ -d $dir ]; then
	    (cd $dir ; ls -1)
	fi
    done
}
