######################################################################
#<
#
# Function: p6_bootstrap([dir=$P6_DFZ_SRC_P6M7G8_DIR/p6common], [islocal=])
#
#  Args:
#	OPTIONAL dir - [$P6_DFZ_SRC_P6M7G8_DIR/p6common]
#	OPTIONAL islocal - []
#
#>
######################################################################
p6_bootstrap() {
  local dir="${1:-$P6_DFZ_SRC_P6M7G8_DIR/p6common}"
  local islocal="${2:-}"

  p6_bootstrap_optimize "$dir" "$islocal"

  local file
  for file in $(p6_dir_list_recursive "$dir/src"); do
      p6_file_load "$file"
  done

  p6_path_if "$dir/bin"

  p6_return_void
}

# this trims .3s
######################################################################
#<
#
# Function: p6_bootstrap_optimize(dir, islocal)
#
#  Args:
#	dir -
#	islocal -
#
#>
######################################################################
p6_bootstrap_optimize() {
    local dir="$1"
    local islocal="$2"

    if [ x"$islocal" != x"local" ]; then
      # XXX: Chicken in Egg....
      . $dir/../p6common/src/const.sh
      . $dir/../p6common/src/return.sh
      . $dir/../p6common/src/io.sh
      . $dir/../p6common/src/debug.sh
      . $dir/../p6common/src/string.sh
      . $dir/../p6common/src/file.sh
      . $dir/../p6common/src/dir.sh
    fi
}
