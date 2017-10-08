p6_debug__alias() {
    local msg="$1"

    p6_debug "p6_alias: $msg"
}

p6_alias_cd_dirs() {
    local dir="$1"

    p6_debug__alias "cd_dirs(): $dir"

    if [ -d $dir ]; then
	local d
	for d in $(cd $dir ; /bin/ls -1); do
	    local als="alias cd$d='cd $dir/$d'"
	    p6_debug__alias "cd_dirs(): $als"
	    eval "$als"
	done
    else
	p6_debug__alias "cd_dirs(): $dir DNE"
    fi
}
