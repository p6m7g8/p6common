#!/bin/sh

# private
p6_return() {
    local rv="$1"

    p6_echo "$rv"

    p6_return_code 0
}

p6_return_code() {
    local rc="$1"

    return $rc
}

# public
p6_return_true() {

  p6_return_code $P6_TRUE
}

p6_return_false() {

  p6_return_code $P6_FALSE
}

p6_return_bool() {
     local bool="$1"

     p6_return "$bool"
}

p6_return_int() {
     local int="$1"

     p6_return "$int"
}

p6_return_string() {
     local str="$1"

     p6_return "$str"
}

p6_return_list() {
     local str="$1"

     p6_return "$list"
}

p6_return_hash() {
     local hash="$1"

     p6_return "$hash"
}

p6_return_array() {
     local arr="$1"
 
     p6_return "$arr"
}
