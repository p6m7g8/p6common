#!/bin/sh

######################################################################
#<
#
# Function: p6_echo()
#
#  Depends:	 p6_echo p6_msg
#>
######################################################################
p6_echo() {

    echo "$@"
}

######################################################################
#<
#
# Function: p6_msg(msg)
#
#  Args:
#	msg -
#
#  Depends:	 p6_die p6_echo p6_error
#>
######################################################################
p6_msg() {
    local msg="$*"

    p6_echo "$msg"
}

######################################################################
#<
#
# Function: p6_error(msg)
#
#  Args:
#	msg -
#
#  Depends:	 p6_die p6_msg
#>
######################################################################
p6_error() {
    local msg="$*"

    p6_msg "$msg" >&2
}

######################################################################
#<
#
# Function: p6_die(code)
#
#  Args:
#	code -
#
#  Depends:	 p6_msg
#>
######################################################################
p6_die() {
    local code="$1"
    shift

    p6_msg "$@"
    exit $code
}

######################################################################
#<
#
# Function: p6__header(indent)
#
#  Args:
#	indent -
#
#  Depends:	 p6_h1 p6_msg
#>
######################################################################
p6__header() {
    local indent="$1"
    shift

    local h=""
    local i=0
    while [ $i -lt $indent ]; do
        h="${h}="
        i=$(($i + 1))
    done

    p6_msg "$h> $@"

    p6_return_void
}

######################################################################
#<
#
# Function: p6__deprecated(thing)
#
#  Args:
#	thing -
#
#  Depends:	 p6_h1 p6_h2 p6_msg
#  Environment:	 DEPRECATED
#>
######################################################################
p6__deprecated() {
    local thing="$1"

    p6_msg "DEPRECATED: $thing"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_h1(header)
#
#  Args:
#	header -
#
#  Depends:	 p6_h2 p6_h3
#>
######################################################################
p6_h1() {
    local header="$1"

    p6__header "2" "$header"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_h2(header)
#
#  Args:
#	header -
#
#  Depends:	 p6_h3 p6_h4
#>
######################################################################
p6_h2() {
    local header="$1"

    p6__header "4" "$header"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_h3(header)
#
#  Args:
#	header -
#
#  Depends:	 p6_h4 p6_h5
#>
######################################################################
p6_h3() {
    local header="$1"

    p6__header "6" "$header"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_h4(header)
#
#  Args:
#	header -
#
#  Depends:	 p6_h5
#>
######################################################################
p6_h4() {
    local header="$1"

    p6__header "8" "$header"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_h5(header)
#
#  Args:
#	header -
#
#>
######################################################################
p6_h5() {
    local header="$1"

    p6__header "10" "$header"

    p6_return_void
}