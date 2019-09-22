#!/bin/sh

######################################################################
#<
#
# Function:
#      = p6_color__debug()
#
#
#
#>
######################################################################
p6_color__debug() {
    local msg="$1"

    p6_debug "p6_color: $msg"
}

######################################################################
#<
#
# Function:
#      = p6_color_say(color_fg, color_bg, msg)
#
# Arg(s):
#    color_fg - 
#    color_bg - 
#    msg - 
#
#
#>
######################################################################
p6_color_say() {
    local color_fg="$1"
    local color_bg="$2"
    local msg="$3"

    local code_fg=$(p6_color_to_code "$color_fg")
    local code_bg=$(p6_color_to_code "$color_bg")

    if [ -z "$P6_TEST_COLOR_OFF" ]; then
       tput setaf "$code_fg"
       tput setab "$code_bg"
    fi
    p6_msg "$msg\c"
    if [ -z "$P6_TEST_COLOR_OFF" ]; then
       tput sgr0
    fi
    ps_msg
}

######################################################################
#<
#
# Function:
#     $code = p6_color_to_code(color)
#
# Arg(s):
#    color - 
#
# Return(s):
#    $code - 
#
#>
######################################################################
p6_color_to_code() {
    local color="$1"

    local code=-1

    case $color in
	black)   code=0 ;;
	red)     code=1 ;;
	green)   code=2 ;;
	yellow)  code=3 ;;
	blue)    code=4 ;;
	magenta) code=5 ;;
	cyan)    code=6 ;;
	white)   code=7 ;;
    esac

    p6_color__debug "say(): [$color] -> [$code]"

    p6_return "$code"
}

######################################################################
#<
#
# Function:
#     0.0 = p6_color_opacity_factor()
#
#
# Return(s):
#    0.0 - 
#
#>
######################################################################
p6_color_opacity_factor() {

    p6_return "0.0"
}

######################################################################
#<
#
# Function:
#     $rgb = p6_color_name_to_rgb(name)
#
# Arg(s):
#    name - 
#
# Return(s):
#    $rgb - 
#
#>
######################################################################
p6_color_name_to_rgb() {
    local name="$1"

    local rgb=-1
    case $name in
	red)      rgb="fa053e" ;;
	orange)   rgb="fa6b05" ;;
	yellow)   rgb="dedb86" ;;
	green)    rgb="1c6928" ;;
	dgreen)   rgb="064a10" ;;
	cyan)     rgb="3beaf6" ;;
	blue)     rgb="054cf2" ;;
	dblue)    rgb="1a2261" ;;
	lpurple)  rgb="eb5bd5" ;;
	purple)   rgb="973bcc" ;;
	pink)     rgb="f213d5" ;;
	lsalmon3) rgb="cd8162" ;;
	brown)    rgb="542323" ;;
	black)    rgb="000000" ;;
	white)    rgb="ffffff" ;;
    esac

    rgb=$(p6_echo "$rgb" | tr '[a-z]' '[A-Z]')

    p6_return "$rgb"
}

######################################################################
#<
#
# Function:
#     $dr = p6_color_hex_to_d16b(hex, ord)
#
# Arg(s):
#    hex - 
#    ord - 
#
# Return(s):
#    $dr - 
#    $dg - 
#    $db - 
#
#>
######################################################################
p6_color_hex_to_d16b() {
    local hex="$1"
    local ord="$2"

    local i=$(p6_echo "$hex" | sed 's/../&,/g' | awk -F "," '{ print $1 }')
    local j=$(p6_echo "$hex" | sed 's/../&,/g' | awk -F "," '{ print $2 }')
    local k=$(p6_echo "$hex" | sed 's/../&,/g' | awk -F "," '{ print $3 }')

    local r=$(p6_echo "ibase=16; $i" | bc -q)
    local g=$(p6_echo "ibase=16; $j" | bc -q)
    local b=$(p6_echo "ibase=16; $k" | bc -q)

    local dr=$(($r*257))
    local dg=$(($g*257))
    local db=$(($b*257))

    case $ord in
	r) p6_return "$dr" ;;
	g) p6_return "$dg" ;;
	b) p6_return "$db" ;;
    esac
}