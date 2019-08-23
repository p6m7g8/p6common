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

    p6_return $code
}
p6_color_opacity_factor() {

    p6_return "0.0"
}

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

    rgb=$(echo $rgb | tr '[a-z]' '[A-Z]')

    p6_return $rgb
}

##############################################################################
# Notation -- RGB triplet (red)
#
# 1- Arithmetic                 -- (1.0, 0.0, 0.0)
# 2- Percentage                 -- (100%, 0%, 0%)
# 3- Digital 8-bit per channel  -- (255, 0, 0) or sometimes #FF0000 (hexadecimal)
# 4- Digital 16-bit per channel -- (65535, 0, 0)
#
# The component values are often stored as integer numbers in the range 0 to 255,
# the range that a single 8-bit byte can offer. These are often represented as
# either decimal or hexadecima#l numbers.
#
# Multiply the integer (standard RGB value) by 257 to get the value in Digital 16-bit
# per channel (AppleScript)
#
# XXX: Input must be in CAPS
##############################################################################
p6_color_hex_to_d16b() {
    local hex="$1"
    local ord="$2"

    local a=$(echo $hex | sed 's/../&,/g' | awk -F "," '{ print $1 }')
    local b=$(echo $hex | sed 's/../&,/g' | awk -F "," '{ print $2 }')
    local c=$(echo $hex | sed 's/../&,/g' | awk -F "," '{ print $3 }')

    local r=$(echo "ibase=16; $a" | bc -q)
    local g=$(echo "ibase=16; $b" | bc -q)
    local b=$(echo "ibase=16; $c" | bc -q)

    local dr=$(($r*257))
    local dg=$(($g*257))
    local db=$(($b*257))

    case $ord in
	r) p6_return $dr ;;
	g) p6_return $dg ;;
	b) p6_return $db ;;
    esac
}
