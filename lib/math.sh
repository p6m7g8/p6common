p6_math_le() {
    local a="$1"
    local b="$2"

    test $a -lt $b
    local rc=$?

    p6_return_code_as_value "$rc"
}

p6_math_inc() {
  local a="$1"
}

p6_math_dec() {
  local a="$1"
}

