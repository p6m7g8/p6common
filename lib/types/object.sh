##############################################################################
# Object
#
# [object]
#   meta/
#     class
#     length
#     iterators/
#       default
#     _hist
#   data/
#     0/
#       data: string-data
#     0/
#       data: list-item-1-data
#     md5(key)/
#        key: hash-key-data
#        val: hash-val-data
#
##############################################################################

###
### Pulic
###

##
## Constructors
##

###############################################################################
# obj p6_obj_create(string)
#
p6_obj_create() {
    local class="$1"

    p6_obj__create "$class"
}

###############################################################################
# obj p6_obj_copy(obj)
#
p6_obj_copy() {
    local obj="$1"

    p6_obj__copy "$obj"
}

###############################################################################
# void p6_obj_destroy(obj)
#
p6_obj_destroy() {
    local obj="$1"

    p6_obj__destroy "$obj"
}

##
## Equality
##

###############################################################################
# size_t p6_obj_compare(obj, obj)
#
p6_obj_compare() {
    local a="$1"
    local b="$2"

    p6_obj__dispatch "$a" "compare" "$b"
}

##
## Assignment
##

###############################################################################
# obj p6_obj_assign(obj)
#
p6_obj_assign() {
    local obj="$1"

    p6_obj__assign "$obj"
}

##
## toString()
##

###############################################################################
# void p6_obj_display(obj)
#
p6_obj_display() {
    local obj="$1"

    p6_obj__dispatch "display"
}

##
## Iterators
##

###############################################################################
# bool p6_obj_iter_index(obj, var)
#   CLASS: str, list, hash
#
p6_obj_iter_index() {
    local obj="$1"
    local var="${2:-default}"

    p6_obj__iter_index "$obj" "$var"
}

###############################################################################
# bool p6_obj_iter_more(obj) {
#   CLASS: str, list, hash
#
p6_obj_iter_more() {
    local obj="$1"
    local var="${2:-default}"
    local offset="${3:-0}"

    p6_obj__iter_more "$obj" "$var" "$offset"
}

###############################################################################
# ITEM p6_obj_iter_current(obj)
#   CLASS: str, list, hash
#
p6_obj_iter_current() {
    local obj="$1"
    local var="${2:-default}"

    local i=$(p6_iter_index "$obj" "$var")

    p6_obj__iter_i "$obj" "$var" "$i"
}

###############################################################################
# ITEM p6_obj_iter_i(obj, int)
#   CLASS: str, list, hash
#
p6_obj_iter_i() {
    local obj="$1"
    local var="${2:-default}"
    local i="$3"

    p6_obj__iter_i "$obj" "$var" "$i"
}

###############################################################################
# bool p6_obj_iter_ate(obj, var, offset, move):
#   CLASS: str, list, hash
#
p6_obj_iter_ate() {
    local obj="$1"
    local var="${2:-default}"
    local move="${3:-1}"

    p6_obj__iter_ate "$obj" "$var" "$move"
}

###############################################################################
# void p6_obj_foreach(obj, callback)
#   CLASS: str, list, hash
#
p6_obj_foreach() {
    local obj="$1"
    local callback="$2"

    while p6_obj_iter_more "$obj"; do
	local item=$(p6_obj_iter_current "$obj")

	p6_yield "$callback" "$obj" "$item"

	p6_obj_iter_ate "$obj"
    done
}

##
## READ Operations
##

###############################################################################
# size_t p6_obj_length(obj)
#   CLASS: str, list, hash
#
p6_obj_length() {
    local obj="$1"

    p6_obj__length "$obj"
}

###############################################################################
# size_t p6_obj_grep(obj, pattern)
#   CLASS: str, list, hash
#
p6_obj_grep() {
    local obj="$1"
    local pattern="$2"

    p6_obj__dispatch "$obj" "grep" "$pattern"
}

##
## Write Operations (to myself)
##

###############################################################################
# size_t p6_obj_reverse(obj, size_t, obj)
#   CLASS: str, list, hash
#
p6_obj_reverse() {
    local obj="$1"

    p6_obj__dispatch "$obj" "reverse"
}

###############################################################################
# size_t p6_obj_splice(obj, size_t, obj)
#   CLASS: str, list, hash
#
p6_obj_splice() {
    local obj="$1"
    local start="$2"
    local new="$3"

    p6_obj__dispatch "$obj" "splice" "$start" "$new"
}

###############################################################################
# void p6_obj_trim(obj)
#   CLASS: str, list, hash
#
p6_obj_trim() {
    local obj="$1"

    p6_obj__dispatch "$obj" "trim"
}

###############################################################################
# void p6_obj_lc(obj)
#   CLASS: str, list, hash
#
p6_obj_lc() {
    local obj="$1"

    p6_obj__dispatch "$obj" "lc"
}

###############################################################################
# void p6_obj_uc(obj)
#   CLASS: str, list, hash
#
p6_obj_uc() {
    local obj="$1"

    p6_obj__dispatch "$obj" "uc"
}

###
### Protected
###

###
### Private
###

##
## Iterators
##
p6_obj__iter_more() {
    local obj="$1"
    local var="$2"
    local offset="$3"

    local i=$(p6_obj__iter_index "$obj" "$var" "$offset")
    local len=$(p6_obj__length "$obj")

    p6_math_le "$i" "$len"
}

p6_obj__iter_i() {
    local obj="$1"
    local var="$2"
    local i="$3"

    p6_obj__dispatch "$obj" "iter_i" "$var" "$i"
}

p6_obj__iter_ate() {
    local obj="$1"


}

##
## Util
##
p6_obj__dispatch() {
    local obj="$1"
    local method="$2"
    shift 2

    local class=$(p6_obj__class "$obj" "$class")

    p6_obj_${class}_${method} "$obj" "$@"
}

##
## Constructors
##
p6_obj__create() {
    local class="$1"

    local obj=$(p6_obj__init)

    p6_obj__meta_init "$obj"
    p6_obj__data_init "$obj"

    p6_obj__class "$obj" "$class"

    p6_return "$obj"
}

p6_obj__copy() {
    local obj="$1"

    local class=$(p6_obj__class "$obj")
    local copy=$(p6_obj__create "$class")
    p6_obj__clone "$obj" "$copy"
}

###
### XXX
###
p6_obj__iter_index() {
    local obj="$1"
    local var="$2"

    p6_iter_index "$obj" "$var"
}

p6_obj__destroy() {
    local obj="$1"

    p6_store_destroy "$obj"
}

p6_obj__assign() {
    local obj="$1"

    p6_store_ref "$obj"
}

p6_obj__clone() {
    local obj="$1"
    local dst="$2"

    p6_store_copy "$obj" "$dst"
}

p6_obj__class() {
    local obj="$1"
    local new="$2"

    local meta_key=$(p6_obj__meta__key)
    if p6_string_blank "$new"; then
	p6_store_bucket_attr "$obj" "$meta_key" "class"
    else
	p6_store_bucket_attr "$obj" "$meta_key" "class" "$new"
    fi
}

p6_obj__length() {
    local obj="$1"

    local meta_key=$(p6_obj__meta__key)

    p6_store_bucket_attr "$obj" "$meta_key" "length"
}

p6_obj__init() {

    p6_store_create
}

p6_obj__meta_init() {
    local obj="$1"

    local meta_key=$(p6_obj__meta__key)

    p6_store_bucket_create "$obj" "$meta_key"

    p6_store_bucket_attr_create "$obj" "$meta_key" "class"
    p6_store_bucket_attr_create "$obj" "$meta_key" "length"
    p6_store_bucket_hash_create "$obj" "$meta_key" "iterators"
}

p6_obj__data_init() {
    local obj="$1"

    local data_key=$(p6_obj__data__key)

    p6_store_bucket_create "$obj" "$data_key"
}

p6_obj__meta__key() {

    p6_return "meta"
}

p6_obj__data__key() {

    p6_return "data"
}
