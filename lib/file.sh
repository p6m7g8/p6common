#!/bin/sh

######################################################################
#<
#
# Function:
#      = p6_file__debug()
#
#
#
#>
######################################################################
p6_file__debug() {
    local msg="$1"

    p6_debug "p6_file: $msg"

    p6_return_void
}

######################################################################
#<
#
# Function:
#      = p6_file_load(file)
#
# Arg(s):
#    file - 
#
#
#>
######################################################################
p6_file_load() {
    local file="$1"

    if p6_file_exists "$file"; then
	p6_file__debug "load(): $file"
	. $file
    fi

    p6_return_void
}

######################################################################
#<
#
# Function:
#      = p6_file_move(src, dst)
#
# Arg(s):
#    src - 
#    dst - 
#
#
#>
######################################################################
p6_file_move() {
    local src="$1"
    local dst="$2"

    p6_file__debug "move(): $src $dst"
    mv $src $dst

    p6_return_void
}

######################################################################
#<
#
# Function:
#      = p6_file_copy(src, dst)
#
# Arg(s):
#    src - 
#    dst - 
#
#
#>
######################################################################
p6_file_copy() {
    local src="$1"
    local dst="$2"

    p6_file__debug "copy(): $src $dst"
    cp $src $dst

    p6_return_void
}

######################################################################
#<
#
# Function:
#      = p6_file_rmf(file)
#
# Arg(s):
#    file - 
#
#
#>
######################################################################
p6_file_rmf() {
    local file="$1"

    p6_file__debug "rmf(): rm -f $file"
    rm -f $file

    p6_return_void
}

######################################################################
#<
#
# Function:
#      = p6_file_unlink(file)
#
# Arg(s):
#    file - 
#
#
#>
######################################################################
p6_file_unlink() {
    local file="$1"

    p6_file__debug "unlink(): unlink $file"
    unlink $file

    p6_return_void
}

######################################################################
#<
#
# Function:
#      = p6_file_contains(pattern, file)
#
# Arg(s):
#    pattern - 
#    file - 
#
#
#>
######################################################################
p6_file_contains() {
    local pattern="$1"
    local file="$2"

    p6_file__debug "contains(): /$pattern/ $file"
    grep "$pattern" $file

    p6_return_void
}

######################################################################
#<
#
# Function:
#      = p6_file_line_delete_last(file)
#
# Arg(s):
#    file - 
#
#
#>
######################################################################
p6_file_line_delete_last() {
    local file="$1"

    p6_file__debug "line_delete_last(): sed -i '' -e '$d' $file"
    sed -i '' -e '$d' $file

    p6_return_void
}

######################################################################
#<
#
# Function:
#      = p6_file_repalce(file, sed_cmd)
#
# Arg(s):
#    file - 
#    sed_cmd - 
#
#
#>
######################################################################
p6_file_repalce() {
    local file="$1"
    local sed_cmd="$2"

    p6_file__debug "replace(): sed -i '' -e $sed_cmd $file"
    sed -i '' -e $sed_cmd $file

    p6_return_void
}

######################################################################
#<
#
# Function:
#     $rv = p6_file_exists(file)
#
# Arg(s):
#    file - 
#
# Return(s):
#    $rv - 
#
#>
######################################################################
p6_file_exists() {
    local file="$1"

    local rv=$([ -r "$file" ])
    p6_file__debug "exists(): $file -> $rv"

    p6_return_bool "$rv"
}

######################################################################
#<
#
# Function:
#      = p6_file_display(file)
#
# Arg(s):
#    file - 
#
#
#>
######################################################################
p6_file_display() {
    local file="$1"

    p6_file__debug "display(): cat $file"
    if p6_file_exists "$file"; then
	cat $file
    fi

    p6_return_void
}

######################################################################
#<
#
# Function:
#      = p6_file_create(file)
#
# Arg(s):
#    file - 
#
#
#>
######################################################################
p6_file_create() {
    local file="$1"

    p6_file__debug "create(): touch $file"
    touch $file

    p6_return_void
}

######################################################################
#<
#
# Function:
#      = p6_file_write(file, contents)
#
# Arg(s):
#    file - 
#    contents - 
#
#
#>
######################################################################
p6_file_write() {
    local file="$1"
    local contents="$2"

    p6_file__debug "write(): $contents -> $file"
    p6_echo "$contents" > $file

    p6_return_void
}

######################################################################
#<
#
# Function:
#      = p6_file_append(file, contents)
#
# Arg(s):
#    file - 
#    contents - 
#
#
#>
######################################################################
p6_file_append() {
    local file="$1"
    local contents="$2"

    p6_file__debug "append(): $contents -> $file"
    p6_echo "$contents" >> $file

    p6_return_void
}

######################################################################
#<
#
# Function:
#      = p6_file_ma_sync(from, to)
#
# Arg(s):
#    from - 
#    to - 
#
#
#>
######################################################################
p6_file_ma_sync() {
    local from="$1"
    local to="$2"

    p6_file__debug "ma_sync(): $from -> $to"
    touch -r $from $to

    p6_return_void
}

######################################################################
#<
#
# Function:
#      = p6_file_symlink(to, from)
#
# Arg(s):
#    to - 
#    from - 
#
#
#>
######################################################################
p6_file_symlink() {
    local to="$1"
    local from="$2"

    p6_file__debug "symlink(): $to -> $from"
    ln -s $to $from

    p6_return_void
}

######################################################################
#<
#
# Function:
#     $path/$cmd = p6_file_cascade(cmd, exts)
#
# Arg(s):
#    cmd - 
#    exts - 
#
# Return(s):
#    $path/$cmd - 
#    $path/$cmd$ext - 
#
#>
######################################################################
p6_file_cascade() {
    local cmd="$1"
    local exts="$2"
    shift 2

    # Search
    local path
    for path in "$@"; do
	if ! p6_string_blank "${exts}"; then
	    p6_file__debug "cascade(): Checking: $path/$cmd"
	    if p6_file_exists "$path/$cmd"; then
		p6_file__debug "cascade(): Found: $path/$cmd"
		p6_return_str "$path/$cmd"
	    fi
	else
	    local ext
	    for ext in $exts ''; do
		p6_file__debug "cascade(): [$ext] Checking: $path/$cmd$ext"
		if p6_file_exists "$path/$cmd$ext"; then
		    p6_file__debug "cascade(): [$ext] Found: $path/$cmd$ext"
		    p6_return_str "$path/$cmd$ext"
		fi
	    done
	fi
    done
}
