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

    p6_return $rgb
}

p6_color_hex_to_rgb() {
    local hex="$1"
    local ord="$2"

    local r=$(echo $hex | sed 's/../0x&,/g' | awk -F "," '{printf("%d",$1 * 257)}')
    local g=$(echo $hex | sed 's/../0x&,/g' | awk -F "," '{printf("%d",$2 * 257)}')
    local b=$(echo $hex | sed 's/../0x&,/g' | awk -F "," '{printf("%d",$3 * 257)}')

    case $ord in
	r) p6_return $r ;;
	g) p6_return $g ;;
	b) p6_return $b ;;
    esac
}
