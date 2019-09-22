#!/bin/sh

######################################################################
#<
#
# Function:
#      = p6_string__debug()
#
#
#
#>
######################################################################
p6_string__debug() {
    local msg="$1"

    p6_debug "p6_string: $msg"
}

######################################################################
#<
#
# Function:
#     $rv = p6_string_blank(str)
#
# Arg(s):
#    str - 
#
# Return(s):
#    $rv - 
#
#>
######################################################################
p6_string_blank() {
    local str="$1"

    local rv=-1
    if [ -z "$str" ]; then
	rv=0
    else
	rv=1
    fi

    p6_string__debug "blank(): [$str] -> $rv"

    p6_return_bool "$rv"
}

######################################################################
#<
#
# Function:
#     ${#str} = p6_string_len(str)
#
# Arg(s):
#    str - 
#
# Return(s):
#    ${#str} - 
#
#>
######################################################################
p6_string_len() {
    local str="$1"

    p6_return "${#str}"
}

######################################################################
#<
#
# Function:
#     $rv = p6_string_append(str, add, sep)
#
# Arg(s):
#    str - 
#    add - 
#    sep - 
#
# Return(s):
#    $rv - 
#
#>
######################################################################
p6_string_append() {
  local str="$1"
  local add="$2"
  local sep="$3"

  local rv="${str}${sep}${add}"

  p6_string__debug "append(): [$str] + [$add] by [$sep] -> $rv"

  p6_return "$rv"
}

######################################################################
#<
#
# Function:
#     $str_lc = p6_string_lc(str)
#
# Arg(s):
#    str - 
#
# Return(s):
#    $str_lc - 
#
#>
######################################################################
p6_string_lc() {
    local str="$1"

    local str_lc=$(p6_echo "$str" | tr '[A-Z]' '[a-z]')

    p6_string__debug "lc(): [$str] -> [$str_lc]"

    p6_return "$str_lc"
}

######################################################################
#<
#
# Function:
#     $str_uc = p6_string_uc(str)
#
# Arg(s):
#    str - 
#
# Return(s):
#    $str_uc - 
#
#>
######################################################################
p6_string_uc() {
    local str="$1"

    local str_uc=$(p6_echo "$str" | tr '[a-z]' '[A-Z]')

    p6_string__debug "uc(): [$str] -> [$str_lc]"

    p6_return "$str_uc"
}

######################################################################
#<
#
# Function:
#     $str_r = p6_string_replace(str, from, to)
#
# Arg(s):
#    str - 
#    from - 
#    to - 
#
# Return(s):
#    $str_r - 
#
#>
######################################################################
p6_string_replace() {
    local str="$1"
    local from="$2"
    local to="$3"

    local str_r=$(p6_echo "$str" | sed -e "s,$from,$to,g")

    p6_string__debug "replace([$from]->[$to]): [$str] -> [$str_r]"

    p6_return "$str_r"
}

######################################################################
#<
#
# Function:
#     $str_ic = p6_string_init_cap(str)
#
# Arg(s):
#    str - 
#
# Return(s):
#    $str_ic - 
#
#>
######################################################################
p6_string_init_cap() {
    local str="$1"

    local str_ic=$(
	p6_echo "$str" | \
	    awk '{for(i=1;i<=NF;i++){ $i=toupper(substr($i,1,1)) substr($i,2) }}1'
	  )

    p6_return "$str_ic"
}