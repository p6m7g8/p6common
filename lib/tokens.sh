#!/bin/sh

######################################################################
#<
#
# Function:
#      = p6_token__debug()
#
#
#
#>
######################################################################
p6_token__debug() {
    local msg="$1"

    p6_debug "p6_token: $msg"

    p6_return_void
}

######################################################################
#<
#
# Function:
#     $hashed = p6_token_hash(string)
#
# Arg(s):
#    string - 
#
# Return(s):
#    $hashed - 
#
#>
######################################################################
p6_token_hash() {
    local string="$1"

    local hashed=
    if ! p6_string_blank "$string"; then
	if command -v md5 >/dev/null 2>&1; then
	    hashed=$(p6_echo "$string" | md5)
	else
	    hashed=$(p6_echo "$string" | md5sum | sed -e 's, .*,,')
	fi
    fi

    p6_return_str "$hashed"
}

######################################################################
#<
#
# Function:
#     $token = p6_token_random(len)
#
# Arg(s):
#    len - 
#
# Return(s):
#    $token - 
#
#>
######################################################################
p6_token_random() {
    local len="$1"

    local token
    if ! p6_string_blank "$len"; then
	token=$(cat /dev/urandom | LC_CTYPE=C tr -dc a-zA-Z0-9 | head -c $len)
    fi

    p6_return_str "$token"
}

######################################################################
#<
#
# Function:
#     $pass = p6_token_passwd(len)
#
# Arg(s):
#    len - 
#
# Return(s):
#    $pass - 
#
#>
######################################################################
p6_token_passwd() {
    local len="$1"

    local pass=$(p6_token_random "$len")

    p6_return_str "$pass"
}
