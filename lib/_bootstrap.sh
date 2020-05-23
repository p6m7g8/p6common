######################################################################
#<
#
# Function: p6_bootstrap([dir=$P6_DFZ_SRC_P6M7G8_DIR/p6common])
#
#  Args:
#	OPTIONAL dir -  [$P6_DFZ_SRC_P6M7G8_DIR/p6common]
#
#>
######################################################################
p6_bootstrap() {
  local dir="${1:-$P6_DFZ_SRC_P6M7G8_DIR/p6common}"
  local islocal="${2:-}"

  p6_bootstrap_optimize "$dir" "$islocal"

  local file
  for file in $(p6_dir_list_recursive "$dir/lib"); do
      p6_file_load "$file"
  done

  p6_path_if "$dir/bin"

  p6_return_void
}

# this trims .3s
######################################################################
#<
#
# Function: p6_bootstrap_optimize(dir)
#
#  Args:
#	dir - 
#
#>
######################################################################
p6_bootstrap_optimize() {
    local dir="$1"
    local islocal="$2"

    if [ x"$islocal" != x"local" ]; then
      # XXX: Chicken in Egg....
      . $dir/../p6common/lib/const.sh
      . $dir/../p6common/lib/return.sh
      . $dir/../p6common/lib/io.sh
      . $dir/../p6common/lib/debug.sh
      . $dir/../p6common/lib/string.sh
      . $dir/../p6common/lib/file.sh
      . $dir/../p6common/lib/dir.sh
    fi
}
