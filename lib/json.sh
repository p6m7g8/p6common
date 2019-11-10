#!/bin/sh

######################################################################
#<
#
# Function: p6_json__debug()
#
#>
######################################################################
p6_json__debug() {
    local msg="$1"

    p6_debug "p6_json: $msg"
    
    p6_return_void
}

######################################################################
#<
#
# Function: str val = p6_json_key_2_value(key, file)
#
#  Args:
#	key - 
#	file - 
#
#  Returns:
#	str - val
#
#>
######################################################################
p6_json_key_2_value() {
    local key="$1"
    local file="$2"

    p6_json__debug "key_2_value(): $key $file"
    local val=$(
	if [ x"$file" = x"-" ]; then
	    awk -v k=$key '$1 ~ k { print $2 }' | sed -e 's/[",:]//g' | head -1
	else
	    awk -v k=$key '$1 ~ k { print $2 }' $file | sed -e 's/[",:]//g' | head -1
	fi
    )
    p6_json__debug "key_2_value(): $val"

    p6_return_str "$val"
}

######################################################################
#<
#
# Function: str val = p6_json_value_2_key(key, file)
#
#  Args:
#	key - 
#	file - 
#
#  Returns:
#	str - val
#
#>
######################################################################
p6_json_value_2_key() {
    local key="$1"
    local file="$2"

    p6_json__debug "key_2_value(): $key $file"

    local val=$(
	if [ x"$file" = x"-" ]; then
	    awk -v k=$key '$2 ~ k { print $1 }' | sed -e 's/[",:]//g'
	else
	    awk -v k=$key '$2 ~ k { print $1 }' $file | sed -e 's/[",:]//g'
	fi
    )
    p6_json__debug "key_2_value(): $val"

    p6_return_str "$val"
}