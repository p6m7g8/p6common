#!/bin/sh

######################################################################
#<
#
# Function:
#	void() = p6_string__debug(
#
#>
######################################################################
p6_string__debug() {
    local msg="$1"

    p6_debug "p6_string: $msg"

    p6_return_void
}

######################################################################
#<
#
# Function:
#	bool($rv) = p6_string_blank(str, 
#
#  Args:
#	str - 
#
#>
######################################################################
p6_string_blank() {
    local str="$1"

    local rv=$([ -z "$str" ])

    p6_string__debug "blank(): [$str] -> $rv"

    p6_return_bool "$rv"
}

######################################################################
#<
#
# Function:
#	int(${#str}) = p6_string_len(str, 
#
#  Args:
#	str - 
#
#>
######################################################################
p6_string_len() {
    local str="$1"

    p6_return_int "${#str}"
}

######################################################################
#<
#
# Function:
#	str($rv) = p6_string_append(str, add, sep, 
#
#  Args:
#	str - 
#	add - 
#	sep - 
#
#>
######################################################################
p6_string_append() {
  local str="$1"
  local add="$2"
  local sep="$3"

  local rv="${str}${sep}${add}"

  p6_string__debug "append(): [$str] + [$add] by [$sep] -> $rv"

  p6_return_str "$rv"
}

######################################################################
#<
#
# Function:
#	str($str_lc) = p6_string_lc(str, 
#
#  Args:
#	str - 
#
#>
######################################################################
p6_string_lc() {
    local str="$1"

    local str_lc=$(p6_echo "$str" | tr '[A-Z]' '[a-z]')

    p6_string__debug "lc(): [$str] -> [$str_lc]"

    p6_return_str "$str_lc"
}

######################################################################
#<
#
# Function:
#	str($str_uc) = p6_string_uc(str, 
#
#  Args:
#	str - 
#
#>
######################################################################
p6_string_uc() {
    local str="$1"

    local str_uc=$(p6_echo "$str" | tr '[a-z]' '[A-Z]')

    p6_string__debug "uc(): [$str] -> [$str_lc]"

    p6_return_str "$str_uc"
}

######################################################################
#<
#
# Function:
#	str($str_r) = p6_string_replace(str, from, to, 
#
#  Args:
#	str - 
#	from - 
#	to - 
#
#>
######################################################################
p6_string_replace() {
    local str="$1"
    local from="$2"
    local to="$3"

    local str_r=$(p6_echo "$str" | sed -e "s,$from,$to,g")

    p6_string__debug "replace([$from]->[$to]): [$str] -> [$str_r]"

    p6_return_str "$str_r"
}

######################################################################
#<
#
# Function:
#	str($str_ic) = p6_string_init_cap(str, 
#
#  Args:
#	str - 
#
#>
######################################################################
p6_string_init_cap() {
    local str="$1"

    local str_ic=$(
	p6_echo "$str" | \
	    awk '{for(i=1;i<=NF;i++){ $i=toupper(substr($i,1,1)) substr($i,2) }}1'
	  )

    p6_return_str "$str_ic"
}