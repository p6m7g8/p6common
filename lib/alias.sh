p6_debug__alias() {
    local msg="$1"

    p6_debug "p6_alias: $msg"
}

p6_alias_cd_dirs() {
    local dir="$1"

#    p6_debug__alias "cd_dirs(): $dir"

    if p6_dir_exists "$dir"; then
	local d
	for d in $(p6_dirs_list "$dir"); do
	    p6_alias "$cd$d" "cd $dir/$d"
	done
    else
	p6_debug__alias "cd_dirs(): $dir DNE"
    fi
}

p6_alias() {
    local from="$1"
    local to="$2"

    p6_debug__alias "alias(): $from -> $to"

    if ! p6_string_blank "$to"; then
	if ! p6_string_blank "$from"; then
	    alias $from="$to"
	fi
    fi
}
