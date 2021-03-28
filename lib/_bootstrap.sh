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

  local t0=$EPOCHREALTIME
  local file
  for file in $(p6_dir_list_recursive "$dir/lib"); do
    p6_file_load "$file"
  done
  local t1=$EPOCHREALTIME
  p6_time "$t0" "$t1" "p6_dir_load($dir)"

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
    . $dir/../p6common/lib/const.sh
    . $dir/../p6common/lib/return.sh
    . $dir/../p6common/lib/io.sh
    . $dir/../p6common/lib/debug.sh
    . $dir/../p6common/lib/string.sh
    . $dir/../p6common/lib/file.sh
    . $dir/../p6common/lib/dir.sh
  fi
}
