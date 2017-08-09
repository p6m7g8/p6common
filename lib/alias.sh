p6_alias_cd_dirs() {
    local dir="$1"

    if [ -d $dir ]; then
	local d
	for d in $(cd $dir ; /bin/ls -1); do
	    eval "alias cd$d='cd $dir/$d'"
	done
    fi
}
