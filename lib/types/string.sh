##############################################################################
# String  < Object
#
# [string]
#   len
#   data
#
##############################################################################



##############################################################################
# str p6_obj_str_create(string)
#
p6_obj_str_create() {
    local string="$1"

    local str=$(p6_obj_create)
    local data=$(p6_obj_str__data "$str")
    local length=$(p6_obj__disk_store_length "$str")

    p6_file_create "$data"
    p6_file_create "$length"

    p6_obj__class "$str" "str"

    if [ -n "$string" ]; then
	echo "$string" > $data
    fi

    echo $(($(cat $data | wc -m)-1)) > $length

    echo $str
}

##############################################################################
# int p6_obj_str_compare(str, str)
#
p6_obj_str_compare() {
    local a="$1"
    local b="$2"

    local data_a=$(p6_obj_str__data "$a")
    local data_b=$(p6_obj_str__data "$b")

    cmp -s $data_a $data_b

    echo $?
}

##############################################################################
# void p6_obj_str_disyplay(str)
#
p6_obj_str_display() {
    local str="$1"

    local data=$(p6_obj_str__data "$str")

    cat $data
}

# READ
##############################################################################
# size_t p6_obj_str_length(str)
#
p6_obj_str_length() {
    local str="$1"

    local length=$(p6_obj__disk_store_length "$str")

    cat $length
}

##############################################################################
# list p6_obj_str_split(str, delimiter)
#
p6_obj_str_split() {
    local str="$1"
    local delim="${2:- }"

    local list=$(p6_obj_list_create)

    local data=$(p6_obj_str__data "$str")

    local IFS="$delim"
    for i in $(cat $data); do
	p6_obj_list_insert "$list" "$i"
    done

    echo $list
}

##############################################################################
# int p6_obj_str_grep(str, pattern)
#
p6_obj_str_grep() {
    local str="$1"
    local pattern="$2"

    local data=$(p6_obj_str__data "$str")

    grep -q $pattern $data

    echo $?
}

# Update
##############################################################################
# void p6_obj_str_substr(str, size_t, size_t)
#
p6_obj_str_substr() {
    local str="$1"
    local start="$2"
    local end="$3"

    local data=$(p6_obj_str__data "$str")
    local val=$(cat $data)
    val=${val:$start:$end}
    echo $val > $data

    local length=$(p6_obj__disk_store_length "$str")
    echo $(($(cat $data | wc -m)-1)) > $length
}

##############################################################################
# void p6_obj_str_splice(str, int, str)
#
p6_obj_str_splice() {
    local str="$1"
    local start="$2"
    local new="$3"

    local data=$(p6_obj_str__data "$strj")
    local val=$(cat $data)

    local new_data=$(p6_obj_str__data "$new")
    local new_val=$(cat $new_data)

    echo "${val:0:$start}${new_val}${val:$start}" > $data

    local length=$(p6_obj__disk_store_length "$str")
    echo $(($(cat $data | wc -m)-1)) > $length
}

##############################################################################
# void p6_obj_str_reverse(str)
#
p6_obj_str_reverse() {
    local str="$1"

    local data=$(p6_obj_str__data "$str")

    cat $data | rev > $data.tmp
    mv $data.tmp $data
}

##############################################################################
# void p6_obj_str_trim(str)
#
p6_obj_str_trim() {
    local str="$1"

    local data=$(p6_obj_str__data "$str")

    sed -i '' -e 's/^ *//' -e 's/* $//' $data

    local length=$(p6_obj__disk_store_length "$str")
    echo $(($(cat $data | wc -m)-1)) > $length
}

##############################################################################
# void p6_obj_str_trim(str)
#
p6_obj_str_lc() {
    local str="$1"

    local data=$(p6_obj_str__data "$str")

    cat $data | tr 'A-Z' 'a-z' > $data.tmp
    mv $data.tmp $data
}

##############################################################################
# void p6_obj_str_trim(str)
#
p6_obj_str_uc() {
    local str="$1"

    local data=$(p6_obj_str__data "$str")

    cat $data | tr 'a-z' 'A-Z' > $data.tmp
    mv $data.tmp $data
}

########## PRIVATE
##############################################################################
# path p6_obj_str_trim(str)
#
p6_obj_str__data() {
    local str="$1"

    local data_dir=$(p6_obj__disk_store_data "$str")

    echo $data_dir/data
}

















####################################### REFACTOR
p6_string_tokenize() {
    local str="$1"
    local delim="${2:-:}"

    local IFS="$delim"
    for i in $(cat $str); do
	echo $i
    done
}

p6_string_append_to() {
    local str="$1"
    local new="$2"
    local sep="${3:-" "}"

    local val=$(cat $str)

    if [ -n "$val" ]; then
	echo "$val$sep$new" > $str
    else
	echo $new > $str
    fi
}

p6_string_to_file() {
    local str="$1"

    local dir=$(p6_transient_create "idk")

    cat $str > $dir/file

    echo $dir/file
}

p6_string_transliterate() {
    local str="$1"
    local from="$2"
    local to="$3"

    local t=$(cat $str | tr "$from" "$to")
    echo $t > $str
}

p6_string_init_cap() {
    local str="$1"

    local t=$(cat $str | awk '{for(i=1;i<=NF;i++){ $i=toupper(substr($i,1,1)) substr($i,2) }}1')
    echo $t > $str
}

p6_string_append_to_cond() {
    local str="$1"
    local flag="$2"
    local add_str="$3"
    local sep="${4:-,}"

    if [ x"$flag" != x"0" ]; then
	p6_string_append_to "$str" "$add_str" "$sep"
    fi
}

p6_string_append_to_if_not_in() {
    local str="$1"
    local thing="$2"
    local not_thing="$3"
    local add_str="$4"
    local sep="${5:-,}"

    case $thing in
	$not_thing) ;;
	*) p6_string_append_to "$str" "$add_str" "$sep" ;;
    esac
}
