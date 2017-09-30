##############################################################################
# List < Object
#
# [list]
#   <i>
#     data
#
##############################################################################

##############################################################################
# list p6_obj_list_create()
#
p6_obj_list_create() {

    local list=$(p6_obj_create)
    local length=$(p6_obj__disk_store_length "$str")

    p6_file_create "$length"

    p6_obj__type "$list" "list"
    echo "0" > $length

    echo $list
}

##############################################################################
# size_t p6_obj_list_compare(list, list)
#
p6_obj_list_compare() {
    local a="$1"
    local b="$2"

    local data_dir_a=$(p6_obj__disk_store_data "$a")
    local data_dir_b=$(p6_obj__disk_store_data "$b")

    cmp -s $data_dir_a $data_dir_b
    echo $?
}

##############################################################################
# void p6_obj_list_display(list)
#
p6_obj_list_display() {
    local list="$1"

    while [ 1 ]; do
	local obj=$(p6_obj_iterate "$list")
	[ $? -eq 0 ] && break

	p6_obj_display "$obj"
    done
}

##############################################################################
# size_t p6_obj_list_length(list)
#
p6_obj_list_length() {
    local list="$1"

    local length=$(p6_obj__disk_store_length "$list")

    cat $length
}

##############################################################################
# void p6_obj_list_push(list, obj)
#
p6_obj_list_push() {
    local list="$1"
    local new="$2"

    local len=$(p6_obj_list_length "$list")
    len=$(($len+1))

    p6_obj_list__insert_at "$len" "$new"
}

##############################################################################
# obj p6_obj_list_pop(list)
#
p6_obj_list_pop() {
    local list="$1"

    local len=$(p6_obj_list_length "$list")
    len=$(($len+1))

    p6_obj_list__delete_at "$len"
}

###############################################################################
# obj p6_obj_shift(list)
#   CLASS: list
#
p6_obj_list_shift() {
    local list="$1"

    local len=$(p6_obj_list_length "$list")
    len=$(($len+1))

    p6_obj_list__delete_at "$len"
}

###############################################################################
# obj p6_obj_list_unshift(list)
#   CLASS: list
#
p6_obj_list_unshift() {
    local list="$1"

    p6_obj_list__insert_at "0" "$new"
}

###############################################################################
# void p6_obj_list_sort(list, cmp_as)
#   CLASS: list
#
p6_obj_list_sort() {
    local list="$1"
    local cmp_as="${2:-as_string}"

    local sorted=$(p6_obj_list_create)

    echo $sorted
}

###############################################################################
# str p6_obj_list_join(list, sep)
#   CLASS: list
#
p6_obj_list_join() {
    local list="$1"
    local sep="${2:- }"

    local str=$(p6_obj_str_create)

    while [ 1 ]; do
	local item=$(p6_obj_iterate "$list")
	[ $? -eq 0 ] && break

	p6_obj_str_append "$str" "$item" "$sep"
    done

    echo $str
}
