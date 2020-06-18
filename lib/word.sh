# shellcheck shell=sh

######################################################################
#<
#
# Function: p6_word__debug()
#
#>
######################################################################
p6_word__debug() {
    local msg="$1"

    p6_debug "p6_word: $msg"

    p6_return_void
}

######################################################################
#<
#
# Function: words items = p6_word_unique()
#
#  Returns:
#	words - items
#
#>
######################################################################
p6_word_unique() {

  local item
  local items
  items=$(
    for item in "$@"; do
      p6_echo "$item"	  
    done | sort -u
  )

  p6_return_words "$items"
}