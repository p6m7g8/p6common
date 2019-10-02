######################################################################
#<
#
# Function:
#	rc = p6_return_code(rc)
#
#  Args:
#	rc - the CODE to return
#
#  Returns:
#	the CODE is returned
#
#>
######################################################################
p6_return_code() {
    local rc="$1" # the CODE to return

    return $rc # the code is returned
}

######################################################################
#<
#
# Function:
#	TRUE  = p6_return_true()
#
#  Returns:
#	TRUE
#
#>
######################################################################
p6_return_true() {

  p6_return_code $P6_TRUE # return true code
}

######################################################################
#<
#
# Function:
#	 FAIL  = p6_return_false()
#
#  Returns:
#	 FAIL
#
#>
######################################################################
p6_return_false() {

  p6_return_code $P6_FALSE # return fail code
}

######################################################################
#<
#
# Function:
#	p6_return_void()
#
#>
######################################################################
p6_return_void() {

  return # return void
}

######################################################################
#<
#
# Function:
#	bool = p6_return_bool(bool)
#
#  Args:
#	bool - a boolean
#
#  Returns:
#	the boolean is returned
#
#>
######################################################################
p6_return_bool() {
     local bool="$1" # a boolean

     p6_return "$bool" # a boolean is returned
}

######################################################################
#<
#
# Function:
#	 int = p6_return_int(int)
#
#  Args:
#	 int - an integer
#
#  Returns:
#	 the integer is returned
#
#>
######################################################################
p6_return_int() {
     local int="$1" # an integer

     p6_return "$int" # the integer is returned
}

######################################################################
#<
#
# Function:
#	 int = p6_return_size_t(int)
#
#  Args:
#	 int - a positive integer
#
#  Returns:
#	 the positivie integer is returned
#
#>
######################################################################
p6_return_size_t() {
     local int="$1" # a positive integer

     p6_return "$int" # the positivie integer is returned
}

######################################################################
#<
#
# Function:
#	 str = p6_return_string(str)
#
#  Args:
#	 str - a string
#
#  Returns:
#	 the string is returned
#
#>
######################################################################
p6_return_string() {
     local str="$1" # a string

     p6_return "$str" # the string is returned
}

######################################################################
#<
#
# Function:
#	 list = p6_return_list(list)
#
#  Args:
#	 list - a list
#
#  Returns:
#	 the list is returned
#
#>
######################################################################
p6_return_list() {
     local list="$1" # a list

     p6_return "$list" # the list is returned
}

######################################################################
#<
#
# Function:
#	 hash = p6_return_hash(hash)
#
#  Args:
#	 hash - a hash
#
#  Returns:
#	 the hash is returned
#
#>
######################################################################
p6_return_hash() {
     local hash="$1" # a hash

     p6_return "$hash" # the hash is returned
}

######################################################################
#<
#
# Function:
#	 arr = p6_return_array(arr)
#
#  Args:
#	 arr - an array
#
#  Returns:
#	 the array is returned
#
#>
######################################################################
p6_return_array() {
     local arr="$1" # an array

     p6_return "$arr" # the array is returned
}

######################################################################
#<
#
# Function:
#	rv  = p6_return(rv)
#
#  Args:
#	rv - the VALUE to return
#
#  Returns:
#	SUCCESS
#
#>
######################################################################
p6_return() {
    local rv="$1" # the VALUE to return

    p6_echo "$rv" # "return" the VALUE

    p6_return_code "0" # return success
}
