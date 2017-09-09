P6_HASH_SEP=q606oKmUQYQIgTygVt3WjL3blbKgOgMz

p6_hash_create() {
    local hash=$(p6_transient_create "hash")/file
    touch $hash
    echo $hash
}

p6_hash_destroy() {
    local hash="$1"

    p6_transient_delete "$hash"
}

p6_hash_display() {
    local hash="$1"

    cat $hash
}

p6_hash_item_by_key() {
    local hash="$1"
    local key="$2"

    awk -v k=$key -F $P6_HASH_SEP "1 ~ k { print }" $hash
}

p6_hash_item_by_value() {
    local hash="$1"
    local value="$2"

    awk -v v=$value -F $P6_HASH_SEP "2 ~ v { print }" $hash
}

p6_hash_value_for_key() {
    local hash="$1"
    local key="$2"

    awk -v k=$key -F $P6_HASH_SEP "1 ~ k { print $2 }" $hash
}

p6_hash_item_add() {
    local hash="$1"
    local key="$2"
    local value="$3"

    echo "$key$P6_HASH_SEP$value" >> $hash
}

p6_hash_item_delete() {
    local hash="$1"
    local key="$2"
 
    awk -v k=$key -F $P6_HASH_SEP '1 !~ k { print }' $hash > $hash.new
    mv $hash.new $hash 
}

p6_hash_item_update() {
    local hash="$1"
    local key="$2"
    local value="$3"
}
