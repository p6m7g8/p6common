##############################################################################
# String  < Object
#
# [string]
#   data
#
# String Iterators are 0 based
#
##############################################################################

###
### Public
###

##############################################################################
# str p6_obj_str_create(string)
#
p6_obj_str_create() {
    local string="$1"

    local str=$(p6_obj_create "str")

    p6_obj_str__data_init "$str"

    p6_obj_str__data "$str" "$string"

    p6_return "$str"
}

##############################################################################
# int p6_obj_str_compare(str, str)
#
p6_obj_str_compare() {
    local a="$1"
    local b="$2"

    local val_a=$(p6_obj_str__data "$a")
    local val_b=$(p6_obj_str__data "$b")

    p6_string_compare "$val_a" "$val_b"
}

##############################################################################
# void p6_obj_str_disyplay(str)
#
p6_obj_str_display() {
    local str="$1"

    p6_obj_str__data "$str"
}

##############################################################################
# list p6_obj_str_split(str, delimiter)
#
p6_obj_str_split() {
    local str="$1"
    local delim="${2:- }"

    local list=$(p6_obj_list_create)

    for i in $(p6_string_tokenize "$val" "$delim"); do
	p6_obj_list_insert "$list" "$i"
    done

    p6_return "$list"
}

##############################################################################
# int p6_obj_str_grep(str, pattern)
#
p6_obj_str_grep() {
    local str="$1"
    local pattern="$2"

    local val=$(p6_obj_str__data "$str")

    p6_string_contains "$str" "$pattern"
}

# Update
##############################################################################
# void p6_obj_str_substr(str, size_t, size_t)
#
p6_obj_str_substr() {
    local str="$1"
    local start="$2"
    local end="$3"

    local val=$(p6_obj_str__data "$str")

    local substr=$(p6_string_substr "$val" "$start" "$end")

    p6_obj_str__data "$str" "$substr"
}

##############################################################################
# void p6_obj_str_splice(str, int, str)
#
p6_obj_str_splice() {
    local str="$1"
    local start="$2"
    local new="$3"

    local str_val=$(p6_obj_str__data "$str")
    local splice_val=$(p6_obj_str__data "$new")

    local pre=$(p6_string_substr "$str_val" "0" "$start")
    local post=$(p6_string_substr "$str_val" "$start")

    local val="$prex$splice_val$post"

    p6_obj_str__data "$str" "$val"
}

##############################################################################
# void p6_obj_str_reverse(str)
#
p6_obj_str_reverse() {
    local str="$1"

    local val=$(p6_obj_str__data "$str")

    local reverse=$(p6_string_reverse "$val")

    p6_obj_str__data "$str" "$reverse"
}

##############################################################################
# void p6_obj_str_trim(str)
#
p6_obj_str_trim() {
    local str="$1"

    local val=$(p6_obj_str__data "$str")

    local trimmed=$(p6_string_trim "$str")

    p6_obj_str__data "$str" "$trimmed"
}

##############################################################################
# void p6_obj_str_trim(str)
#
p6_obj_str_lc() {
    local str="$1"

    local val=$(p6_obj_str__data "$str")

    local lc=$(p6_string_lc "$str")

    p6_obj_str__data "$str" "$lc"
}

##############################################################################
# void p6_obj_str_trim(str)
#
p6_obj_str_uc() {
    local str="$1"

    local val=$(p6_obj_str__data "$str")

    local lc=$(p6_string_uc "$str")

    p6_obj_str__data  "$str" "$uc"
}

###
### Private
###

###
### XXX
###
p6_obj_str__data_init() {
    local str="$1"

    local data_key=$(p6_obj__data__key)

    p6_store_bucket_attr_create "$str" "$data_key" "data"
}

p6_obj__str_data() {
    local str="$1"
    local new="$2"

    local data_key=$(p6_obj__data__key)

    if p6_string_blank "$new"; then
	p6_store_bucket_attr "$str" "$data_key" "data"
    else
	p6_store_bucket_attr "$str" "$data_key" "data" "$new"
    fi
}
