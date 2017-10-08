##############################################################################
# List < Object
#
# [list]
#   <i>
#     data
#
##############################################################################

###
### Public
###

##############################################################################
# list p6_obj_list_create()
#
p6_obj_list_create() {

    local list=$(p6_obj_create "list")

    p6_obj_list__items_init "$list"

    p6_return "$list"
}

##############################################################################
# size_t p6_obj_list_compare(list, list)
#
p6_obj_list_compare() {
    local a="$1"
    local b="$2"

    p6_obj_list__compare "$a" "$b"
}

##############################################################################
# void p6_obj_list_display(list)
#
p6_obj_list_display() {
    local list="$1"

    p6_obj_foreach "$list" "" "p6_obj_list__item_data"
}

##############################################################################
# void p6_obj_list_push(list, obj)
#
p6_obj_list_push() {
    local list="$1"
    local new="$2"

    local len=$(p6_obj_length "$list")

    p6_obj_list__insert_at "$list" "$len" "$new"
}

##############################################################################
# obj p6_obj_list_pop(list)
#
p6_obj_list_pop() {
    local list="$1"

    local len=$(p6_obj_length "$list")

    p6_obj_list__delete_at "$list" "$len"
}

###############################################################################
# obj p6_obj_shift(list)
#   CLASS: list
#
p6_obj_list_shift() {
    local list="$1"

    p6_obj_list__delete_at "$list" "0"
}

###############################################################################
# obj p6_obj_list_unshift(list)
#   CLASS: list
#
p6_obj_list_unshift() {
    local list="$1"
    local new="$2"

    p6_obj_list__insert_at "$list" "0" "$new"
}

###############################################################################
# void p6_obj_list_swap(list, int, int)
#   CLASS: list
#
p6_obj_list_swap() {
    local list="$1"
    local i="$2"
    local j="$3"

    local old_i=$(p6_obj_list__delete_at "$list" "$i")
    p6_obj_list__insert_at "$list" "$j" "$old_i"
}

###############################################################################
# void p6_obj_list_sort(list, cmp_as)
#   CLASS: list
#
p6_obj_list_sort() {
    local list="$1"
    local cmp_as="${2:-as_string}"

    p6_obj_foreach "$list" "j" "p6_obj_list_sort__outer" "$cmp_as"
}

###############################################################################
# str p6_obj_list_join(list, sep)
#   CLASS: list
#
p6_obj_list_join() {
    local list="$1"
    local sep="${2:-}"

    local str=$(p6_obj_str_create)

    p6_obj_foreach "$list" "" "p6_obj_str_append" "$str" "$sep"

    p6_return "$str"
}

###
### Private
###
p6_obj_list__compare() {
    local a="$1"
    local b="$2"

    local val_a=$(p6_obj_list__item_data "$a")
    local val_b=$(p6_obj_list__item_data "$b")

    local str_a=$(p6_obj_str_create "$val_a")
    local str_b=$(p6_obj_str_create "$val_b")

    p6_obj_str_compare "$a" "$b"
}

p6_obj_list_sort__outer() {
    local list="$1"
    local cmp_as="${2:-as_string}"

    p6_obj_foreach "$list" "i" "p6_obj_list_sort__outer" "$i_item" "$cmp_as"
}

p6_obj_list_sort__inner() {
    local list="$1"
    local var="$2"
    local i_item="$3"

    local j_item=$(p6_obj_iter_current "$list" "j")

    if p6_obj_list_item_compare "$i_item" "$j_item"; then
	local i=$(p6_obj_iter_index "$list" "i")
	local j=$(p6_obj_iter_index "$list" "j")

	p6_obj_list_swap "$list" "$i" "$j"
    fi
}

###
### XXX
###
p6_obj_hash__items_init() {
    local list="$hash"

    p6_store_bucket_list_create "$list" "data" "items"
}

p6_obj_list__item_data() {
    local list="$1"
    local new="$2"

    if p6_string_blank "$new"; then
	p6_store_bucket_attr "$list" "data" "data" "$new"
    else
	p6_store_bucket_attr "$list" "data" "data"
    fi
}

p6_obj_list__insert_at() {
    local list="$1"
    local i="$2"
    local new="$3"

    p6_store_bucket_item_create "$list" "data" "$i" "$new"
}

p6_obj_list__delete_at() {
    local list="$1"
    local i="$2"

    p6_store_bucket_item_delete "$list" "data" "$i"
}
