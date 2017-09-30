##############################################################################
# Hash < Object
#
# [hash]
#   <md5ofkey>
#	  key
#	  data
##############################################################################

##############################################################################
# list p6_obj_hash_create()
#
p6_obj_hash_create() {

    local hash=$(p6_obj_create)
    local length=$(p6_obj__disk_store_length "$hash")

    p6_file_create "$length"

    p6_obj__type "$hash" "hash"
    echo "0" > $length

    echo $hash
}

##############################################################################
# void p6_obj_hash_compare(hash, hash)
#
p6_obj_hash_compare() {
    local a="$1"
    local b="$2"

    local data_dir_a=$(p6_obj__disk_store_data "$a")
    local data_dir_b=$(p6_obj__disk_store_data "$b")

    cmp -s $data_dir_a $data_dir_b
    echo $?
}

##############################################################################
# void p6_obj_hash_display(hash)
#
p6_obj_hash_display() {
    local hash="$1"

    while [ 1 ]; do
	local key=$(p6_obj_iterate "$hash")
	[ $? -eq 0 ] && break

	local val=$(p6_obj_hash_lookup "$hash" "$key")

	p6_obj_display "$key"
	p6_obj_display "$val"
    done
}

##############################################################################
# void p6_obj_hash_length(hash)
#
p6_obj_hash_length() {
    local hash="$1"

    local length=$(p6_obj__disk_store_length "$list")

    cat $length
}

###############################################################################
# list p6_obj_hash_keys(obj)
#   CLASS: hash
#
p6_obj_hash_keys() {
    local obj="$1"

    local list=$(p6_obj_list_create)

    while [ 1 ]; do
	local key=$(p6_obj_iterate "$hash")
	[ $? -eq 0 ] && break

	p6_obj_list_insert "$list" "$key"
    done

    echo $list
}

###############################################################################
# list p6_obj_hash_values(obj)
#   CLASS: hash
#
p6_obj_hash_values() {
    local obj="$1"

    local list=$(p6_obj_list_create)

    while [ 1 ]; do
	local key=$(p6_obj_iterate "$hash")
	[ $? -eq 0 ] && break

	local val=$(p6_obj_hash_lookup "$hash" "$key")
	p6_obj_list_insert "$list" "$val"
    done

    echo $list
}
