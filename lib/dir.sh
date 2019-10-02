#!/bin/sh

######################################################################
#<
#
# Function:
#	void() = p6_dir__debug(
#
#>
######################################################################
p6_dir__debug() {
    local msg="$1"

    p6_debug "p6_dir: $msg"

    p6_return_void
}

######################################################################
#<
#
# Function:
#	void() = p6_dir_load(dirs, 
#
#  Args:
#	dirs - 
#
#>
######################################################################
p6_dir_load() {
    local dirs="$@"

    p6_dir__debug "load(): $dirs"

    local dir
    for dir in $dirs; do
	local children=$(p6_dirs_list $dirs)
	for child in $(p6_echo "$children"); do
	     p6_file_load "$dir/$child"
	done
    done

    p6_return_void
}

######################################################################
#<
#
# Function:
#	array($children) = p6_dir_list(dir, 
#
#  Args:
#	dir - 
#
#>
######################################################################
p6_dir_list() {
    local dir="$1"

    local children
    if p6_dir_exists "$dir"; then
	children=$(p6_dir_cd "$dir" ; ls -1 | xargs)
	p6_dir__debug "list(): collected [$dir] -> [$children]"
    else
	p6_dir__debug "list(): [$dir] DNE"
    fi

    p6_return_array "$children"
}

######################################################################
#<
#
# Function:
#	array($entries) = p6_dirs_list(dirs, 
#
#  Args:
#	dirs - 
#
#>
######################################################################
p6_dirs_list() {
    local dirs="$@"

    p6_dir__debug "list(): $dirs"

    local entries
    local dir
    for dir in $dirs; do
	local children=$(p6_dir_list "$dir")
	p6_string_append "$entries" "$children" " "
    done

    p6_return_array "$entries"
}

######################################################################
#<
#
# Function:
#	array($descendants) = p6_dir_list_recursive(dir, 
#
#  Args:
#	dir - 
#
#>
######################################################################
p6_dir_list_recursive() {
    local dir="$1"

    p6_dir__debug "list_recursive(): $dir"

    local descendants=$(
	find $dir \
	     -type f | \
	    xargs
	  )

    p6_dir__debug "list_recursive(): $descendants"

    p6_return_array "$descendants"
}

######################################################################
#<
#
# Function:
#	bool($rv) = p6_dir_exists(dir, 
#
#  Args:
#	dir - 
#
#>
######################################################################
p6_dir_exists() {
    local dir="$1"

    local rv=-1
    if [ -d "$dir" ]; then
	rv=$P6_TRUE
    else
	rv=$P6_FALSE
    fi

    p6_dir__debug "exists(): $dir -> $rv"

    p6_return_bool "$rv"
}

######################################################################
#<
#
# Function:
#	void() = p6_dir_rmrf(dir, 
#
#  Args:
#	dir - 
#
#>
######################################################################
p6_dir_rmrf() {
    local dir="$1"

    if [ -z "$dir" -o "$dir" = "/" ]; then
	p6_msg "p6_dir: rmrf(): Cowardly refusing to shoot us in the foot [$dir]"
    else
	p6_dir__debug "rmrf(): rm -rf $dir"
	rm -rf $dir
    fi

    p6_return_void
}

######################################################################
#<
#
# Function:
#	void() = p6_dir_mk(dir, 
#
#  Args:
#	dir - 
#
#>
######################################################################
p6_dir_mk() {
    local dir="$1"

    if ! p6_dir_exists "$dir"; then
	p6_dir__debug "mk(): mkdir -p $dir"
	mkdir -p $dir
    fi

    p6_return_void
}

######################################################################
#<
#
# Function:
#	void() = p6_dir_cp(src, dst, 
#
#  Args:
#	src - 
#	dst - 
#
#>
######################################################################
p6_dir_cp() {
    local src="$1"
    local dst="$2"

    p6_dir__debug "cp(): cp -R $src $dst"
    cp -R $src $dst

    p6_return_void
}

######################################################################
#<
#
# Function:
#	void() = p6_dir_mv(src, dst, 
#
#  Args:
#	src - 
#	dst - 
#
#>
######################################################################
p6_dir_mv() {
    local src="$1"
    local dst="$2"

    p6_dir__debug "mv(): mv $src $dst"
    mv $src $dst

    p6_return_void
}

######################################################################
#<
#
# Function:
#	void() = p6_dir_cd(dir, 
#
#  Args:
#	dir - 
#
#>
######################################################################
p6_dir_cd() {
    local dir="$1"

    p6_dir__debug "cd(): cd $dir"
    cd $dir

    p6_return_void
}