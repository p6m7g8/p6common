#!/bin/sh

######################################################################
#<
#
# Function:
#      = p6_dir__debug()
#
#
#
#>
######################################################################
p6_dir__debug() {
    local msg="$1"

    p6_debug "p6_dir: $msg"
}

######################################################################
#<
#
# Function:
#      = p6_dir_load(dirs)
#
# Arg(s):
#    dirs - 
#
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
}

######################################################################
#<
#
# Function:
#     $children = p6_dir_list(dir)
#
# Arg(s):
#    dir - 
#
# Return(s):
#    $children - 
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

    p6_return "$children"
}

######################################################################
#<
#
# Function:
#     $entries = p6_dirs_list(dirs)
#
# Arg(s):
#    dirs - 
#
# Return(s):
#    $entries - 
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

    p6_return "$entries"
}

######################################################################
#<
#
# Function:
#     $descendants = p6_dir_list_recursive(dir)
#
# Arg(s):
#    dir - 
#
# Return(s):
#    $descendants - 
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

    p6_return "$descendants"
}

######################################################################
#<
#
# Function:
#     $rv = p6_dir_exists(dir)
#
# Arg(s):
#    dir - 
#
# Return(s):
#    $rv - 
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
#      = p6_dir_rmrf(dir)
#
# Arg(s):
#    dir - 
#
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
}

######################################################################
#<
#
# Function:
#      = p6_dir_mk(dir)
#
# Arg(s):
#    dir - 
#
#
#>
######################################################################
p6_dir_mk() {
    local dir="$1"

    if ! p6_dir_exists "$dir"; then
	p6_dir__debug "mk(): mkdir -p $dir"
	mkdir -p $dir
    fi
}

######################################################################
#<
#
# Function:
#      = p6_dir_cp(src, dst)
#
# Arg(s):
#    src - 
#    dst - 
#
#
#>
######################################################################
p6_dir_cp() {
    local src="$1"
    local dst="$2"

    p6_dir__debug "cp(): cp -R $src $dst"
    cp -R $src $dst
}

######################################################################
#<
#
# Function:
#      = p6_dir_mv(src, dst)
#
# Arg(s):
#    src - 
#    dst - 
#
#
#>
######################################################################
p6_dir_mv() {
    local src="$1"
    local dst="$2"

    p6_dir__debug "mv(): mv $src $dst"
    mv $src $dst
}

######################################################################
#<
#
# Function:
#      = p6_dir_cd(dir)
#
# Arg(s):
#    dir - 
#
#
#>
######################################################################
p6_dir_cd() {
    local dir="$1"

    p6_dir__debug "cd(): cd $dir"
    cd $dir
}