p6_list_create() {
    local list=$(p6_transient_create "list")/file
    touch $list
    echo $list
}

p6_list_destroy() {
    local list="$1"

    p6_transient_delete "$list"
}

p6_list_display() {
    local list="$1"

    cat $list
}

p6_list_item_add() {
    local list="$1"
    local item="$2"

    echo "$item" >> $list
}

p6_list_item_delete() {
    local list="$1"
    local item="$2"

    sed -i '' -e "/$item/d" $list 
}

p6_list_item_update() {
    local list="$1"
    local old="$2"
    local new="$3"

    sed -i '' -e "s/$old/$new/" $list 
}
