#!/bin/sh

p6_string__debug() {
    local msg="$1"

    p6_debug "p6_string: $msg"
}

p6_string_blank() {
    local string="$1"

    local rv=-1
    if [ -z "$string" ]; then
	rv=0
    else
	rv=1
    fi

    p6_string__debug "blank(): [$string] -> $rv"

    p6_return_bool $rv
}

p6_string_append() {
  local str="$1"
  local add="$2"
  local sep="$3"

  local rv="${str}${sep}${add}"

  p6_string__debug "append(): [$str + $add w/ $sep] -> $rv"

  p6_return "$rv"
}

p6_string_lc() {
    local str="$1"

    local str_lc=$(echo $str | tr '[A-Z]' '[a-z]')

    p6_string__debug "lc(): [$str] -> [$str_lc]"

    p6_return "$str_lc"
}

p6_string_uc() {
    local str="$1"

    local str_uc=$(echo $str | tr '[a-z]' '[A-Z]')

    p6_string__debug "uc(): [$str] -> [$str_lc]"

    p6_return "$str_uc"
}

p6_string_replace() {
    local str="$1"
    local from="$2"
    local to="$3"

    local str_r=$(echo "$str" | sed -e "s,$from,$to,g")

    p6_string__debug "replace([$from]->[$to]): [$str] -> [$str_r]"

    p6_return "$str_r"
}

p6_string_init_cap() {
    local str="$1"

    local str_ic=$(
	echo $str | \
	    awk '{for(i=1;i<=NF;i++){ $i=toupper(substr($i,1,1)) substr($i,2) }}1'
	  )

    p6_return "$str_ic"
}
