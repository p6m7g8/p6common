##############################################################################
# Object
#
# [object]
#   meta/
#     class
#     length
#     _hist
#   data/
#
#
##############################################################################

###############################################################################
# obj p6_obj_create()
#
p6_obj_create() {

    local obj=$(p6_obj__create)

    local meta_dir=$(p6_obj__disk_store_meta "$obj")
    local data_dir=$(p6_obj__disk_store_data "$obj")
    local class=$(p6_obj__disk_store_class "$obj")
    local hist=$(p6_obj__disk_store_hist "$obj")

    p6_dir_mk "$meta_dir"
    p6_dir_mk "$data_dir"

    p6_file_create "$class"
    p6_file_create "$hist"

    echo $obj
}

###############################################################################
# obj p6_obj_copy(obj)
#
p6_obj_copy() {
    local src_obj="$1"

    local src_dir=$(p6_obj__disk_store "$src_obj")

    local dst_obj=$(p6_obj__create)
    local dst_dir=$(p6_obj__disk_store "$dst_obj")

    p6_dir_rmrf "$dst_dir"
    p6_dir_cp "$src_dir" "$dst_dir"

    echo $dst_obj
}

###############################################################################
# void p6_obj_destroy(obj)
#
p6_obj_destroy() {
    local obj="$1"

    local dir=$(p6_obj__disk_store "$obj")

    p6_dir_rmrf "$dir"
}

# Garbage collect all objects
trap p6_obj__cleanup 0 1 2 3 6 14 15

###############################################################################
# size_t p6_obj_compare(obj, obj)
#
p6_obj_compare() {
    local a="$1"
    local b="$2"

    local class_a=$(p6_obj__class "$a")
    local class_b=$(p6_obj__class "$b")

    if [ x"$class_a" != x"$class_b" ]; then
	echo "mismatch" # XXX: not size_t
    else
	# short circuit
	if [ x"$a" = x"$b" ]; then
	    echo 0
	else
	    p6_obj_${class_a}_compare "$a" "$b"
	fi
    fi
}

###############################################################################
# obj p6_obj_assign(obj)
#
p6_obj_assign() {
    local that="$1"

    echo $that
}

###############################################################################
# void p6_obj_display(obj)
#
p6_obj_display() {
    local obj="$1"

    local class=$(p6_obj__class "$obj")

    p6_obj_${class}_display "$obj"
}

###############################################################################
# void p6_obj_replace(obj)
#
p6_obj_replace() {
    local obj="$1"
}

###############################################################################
# void p6_obj_insert(obj)
#
p6_obj_insert() {
    local obj="$1"
}

###############################################################################
# void p6_obj_update(obj)
#
p6_obj_update() {
    local obj="$1"
}

###############################################################################
# void p6_obj_delete(obj)
#
p6_obj_delete() {
    local obj="$1"
}

###############################################################################
# void p6_obj_find(obj)
#
p6_obj_find() {
    local obj="$1"
}

###############################################################################
# list p6_obj_split(obj, delim)
#   CLASS: str
#
p6_obj_split() {
    local obj="$1"
    local delim="${2:- }"

    local class=$(p6_obj__class "$obj")
    p6_obj_${class}_split "$obj" "$delim"
}

###############################################################################
# list p6_obj_substr(obj, size_t, size_t)
#   CLASS: str
#
p6_obj_substr() {
    local obj="$1"
    local start="$2"
    local end="$3"

    local class=$(p6_obj__class "$obj")
    p6_obj_${class}_substr "$obj" "$start" "$end"
}

###############################################################################
# void p6_obj_push(obj, obj)
#   CLASS: list
#
p6_obj_push() {
    local obj="$1"

    local class=$(p6_obj__class "$obj")
    p6_obj_${class}_substr "$obj" "$start" "$end"
}

###############################################################################
# obj p6_obj_pop(obj)
#   CLASS: list
#
p6_obj_pop() {
    local obj="$1"
}

###############################################################################
# obj p6_obj_shift(obj)
#   CLASS: list
#
p6_obj_shift() {
    local obj="$1"
}

###############################################################################
# obj p6_obj_unshift(obj)
#   CLASS: list
#
p6_obj_unshift() {
    local obj="$1"
}

###############################################################################
# void p6_obj_sort(obj)
#   CLASS: list
p6_obj_sort() {
    local obj="$1"
}

###############################################################################
# str p6_obj_join(obj)
#   CLASS: list
#
p6_obj_join() {
    local obj="$1"
}

###############################################################################
# list p6_obj_keys(obj)
#   CLASS: hash
#
p6_obj_keys() {
    local obj="$1"
}

###############################################################################
# list p6_obj_values(obj)
#   CLASS: hash
#
p6_obj_values() {
    local obj="$1"
}

###############################################################################
# size_t p6_obj_exists(obj, str)
#   CLASS: list, hash
#
p6_obj_exists() {
    local obj="$1"
}

###############################################################################
# size_t p6_obj_reverse(obj, size_t, obj)
#   CLASS: str, list
#
p6_obj_reverse() {
    local obj="$1"

    local class=$(p6_obj__class "$obj")
    p6_obj_${class}_reverse "$obj"
}

###############################################################################
# ITEM p6_obj_exists(obj)
#   CLASS: str, list, hash
#
p6_obj_iterate() {
    local obj="$1"

    local class=$(p6_obj__class "$obj")
}

###############################################################################
# size_t p6_obj_length(obj)
#   CLASS: str, list, hash
#
p6_obj_length() {
    local obj="$1"

    local class=$(p6_obj__class "$obj")
    p6_obj_${class}_length "$obj"
}

###############################################################################
# size_t p6_obj_grep(obj, pattern)
#   CLASS: str, list, hash
#
p6_obj_grep() {
    local obj="$1"
    local pattern="$2"

    local class=$(p6_obj__class "$obj")
    p6_obj_${class}_grep "$obj" "$pattern"
}

###############################################################################
# size_t p6_obj_splice(obj, size_t, obj)
#   CLASS: str, list, hash
#
p6_obj_splice() {
    local obj="$1"
    local start="$2"
    local new="$3"

    local class=$(p6_obj__class "$obj")
    p6_obj_${class}_splice "$obj" "$start" "$new"
}

###############################################################################
# void p6_obj_trim(obj)
#   CLASS: str, list, hash
#
p6_obj_trim() {
    local obj="$1"

    local class=$(p6_obj__class "$obj")
    p6_obj_${class}_trim "$obj"
}

###############################################################################
# void p6_obj_lc(obj)
#   CLASS: str, list, hash
#
p6_obj_lc() {
    local obj="$1"

    local class=$(p6_obj__class "$obj")
    p6_obj_${class}_lc "$obj"
}

###############################################################################
# void p6_obj_uc(obj)
#   CLASS: str, list, hash
#
p6_obj_uc() {
    local obj="$1"

    local class=$(p6_obj__class "$obj")
    p6_obj_${class}_uc "$obj"
}

########## PRIVATE
p6_obj__create() {

    local obj=$(p6_transient_create "obj.$$")

    echo $obj
}

p6_obj__class() {
    local obj="$1"
    local new="$2"

    local class=$(p6_obj__disk_store_class "$obj")
    if [ -n "$new" ]; then
	echo $new > $class
    else
	cat $class
    fi
}

p6_obj__history() {
    local obj="$1"
}

p6_obj__dump() {
    local obj="$1"
}

p6_obj__disk_store() {
    local obj="$1"

    echo $obj
}

p6_obj__disk_store_meta() {
    local obj="$1"

    local dir=$(p6_obj__disk_store "$obj")
    echo $dir/meta
}

p6_obj__disk_store_class() {
    local obj="$1"

    local meta_dir=$(p6_obj__disk_store_meta "$obj")
    echo $meta_dir/class
}

p6_obj__disk_store_length() {
    local obj="$1"

    local meta_dir=$(p6_obj__disk_store_meta "$obj")
    echo $meta_dir/length
}

p6_obj__disk_store_hist() {
    local obj="$1"

    local meta_dir=$(p6_obj__disk_store_meta "$obj")
    echo $meta_dir/_hist
}

p6_obj__disk_store_data() {
    local obj="$1"

    local dir=$(p6_obj__disk_store "$obj")
    echo $dir/data
}

p6_obj__cleanup() {

    local tdir=$TMPDIR/objs
    local prefix="obj.$$"

    local things=$(p6_dirs_list "$tdir")
    for thing in $things; do
	case $thing in
	    $prefix*) p6_obj_destroy "$tdir/$thing" ;;
	esac
    done

    exit 0
}
