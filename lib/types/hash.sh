##############################################################################
# Hash < Object
#
# [hash]
#   <rand(12)>
#	  key
#	  data
##############################################################################

###
### Public
###

##############################################################################
# hash p6_obj_hash_create()
#
p6_obj_hash_create() {

    local hash=$(p6_obj_create "hash")

    p6_obj_hash__items_init "$hash"

    p6_return $hash
}

##############################################################################
# size_t p6_obj_hash_compare(hash, hash)
#
p6_obj_hash_compare() {
    local a="$1"
    local b="$2"

    p6_obj_hash__compare "$a" "$b"
}

##############################################################################
# void p6_obj_hash_display(hash)
#
p6_obj_hash_display() {
    local hash="$1"

    p6_obj_foreach "$list" "" "p6_obj_hash__item_display"
}

###############################################################################
# list p6_obj_hash_keys(hash)
#   CLASS: hash
#
p6_obj_hash_keys() {
    local hahs="$1"

    local list=$(p6_obj_list_create)

    p6_obj_foreach "$hash" "" "p6_obj_hash__key_to_list" "$list"

    p6_return $list
}

###############################################################################
# list p6_obj_hash_values(hash)
#   CLASS: hash
#
p6_obj_hash_values() {
    local hash="$1"

    local list=$(p6_obj_list_create)

    p6_obj_foreach "$hash" "" "p6_obj_hash__values_to_list" "$list"

    p6_return $list
}

###
### Private
###

###
### XXX
###
p6_obj_hash__items_init() {
    local hash="$1"

    p6_store_bucket_hash_create "$hash" "data" "items"
}
