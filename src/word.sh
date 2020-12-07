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
# Function: words words = p6_word_unique(...)
#
#  Args:
#	... - 
#
#  Returns:
#	words - words
#
#>
######################################################################
p6_word_unique() {
  shift 0

  local pos
  local words
  words=$(for pos in "$@"; do
    for i in $(echo $pos); do
      echo "$i"
    done
  done | sort -u)

  p6_return_words "$words"
}

######################################################################
#<
#
# Function: words result = p6_word_not(a, b)
#
#  Args:
#	a -
#	b -
#
#  Returns:
#	words - result
#
#>
######################################################################
p6_word_not() {
  local a="$1"
  local b="$2"

  local dir=$(p6_transient_create "word_not", 1)
  local i
  for i in $(echo $a); do
    echo $i
  done > $dir/a
  for i in $(echo $b); do
    echo $i
  done > $dir/b

  local result=$(comm -23 $dir/a $dir/b)

  p6_transient_delete "$dir"

  p6_return_words "$result"
}