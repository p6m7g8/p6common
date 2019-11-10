#!/bin/sh

######################################################################
#<
#
# Function: p6_template__debug()
#
#>
######################################################################
p6_template__debug() {
    local msg="$1"

    p6_debug "p6_template: $msg"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_template_fill_in(infile, outfile, q_flag)
#
#  Args:
#	infile - 
#	outfile - 
#	q_flag - 
#
#>
######################################################################
p6_template_fill_in() {
    local infile="$1"
    local outfile="$2"
    local q_flag="$3"
    shift 3

    p6_file_copy "$infile" "$outfile"
    local sed_re
    local save_ifs=$IFS
    IFS=^
    for sed_re in $(echo $@); do
	if [ x"$q_flag" = x"no_quotes" ]; then
	    p6_template__debug "N: sed -i ''  -e $sed_re $outfile"
	    sed -i '' -e $sed_re $outfile
	else
	    p6_template__debug "Q: sed -i ''  -e \"$sed_re\" $outfile"
	    sed -i '' -e "$sed_re" $outfile
	fi
    done
    IFS=$save_ifs

    p6_return_void
}

######################################################################
#<
#
# Function: str fills = p6_template_fill_args(mark, sep, split)
#
#  Args:
#	mark - 
#	sep - 
#	split - 
#
#  Returns:
#	str - fills
#
#>
######################################################################
p6_template_fill_args() {
    local mark="$1"
    local sep="$2"
    local split="$3"
    shift 3

    local pair
    local args
    local save_ifs=$IFS
    IFS=$split
    for pair in $(p6_echo $@); do
	local k=$(p6_echo "$pair" | cut -f 1 -d '=')
	local v=$(p6_echo "$pair" | cut -f 2- -d '=')

	args="${args}s${sep}${mark}${k}${mark}${sep}${v}${sep}g^"
    done
    IFS=$save_ifs

    local fills=$(p6_echo "$args" | sed -e 's,\^$,,')

    p6_return_str "$fills";
}

######################################################################
#<
#
# Function: p6_template_process(infile)
#
#  Args:
#	infile - 
#
#>
######################################################################
p6_template_process() {
    local infile="$1"
    shift 1

    local dir=$(p6_transient_create "p6.tmpl")
    local outfile="$dir/outfile"

    local fill_args=$(p6_template_fill_args "" "/" " " "$@")

    p6_template_fill_in "$infile" "$outfile" "" "$fill_args"
    p6_file_display "$outfile"

    p6_transient_delete "$dir"

    p6_return_void
}