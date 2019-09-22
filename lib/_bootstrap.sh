######################################################################
#<
#
# Function:
#      = p6_bootstrap(dir)
#
# Arg(s):
#    dir - 
#
#
#>
######################################################################
p6_bootstrap() {
  local dir="${1:-$P6_DFZ_SRC_P6M7G8_DIR/p6common}"

  # XXX: Chicken in Egg....
  . $dir/../p6common/lib/const.sh
  . $dir/../p6common/lib/io.sh
  . $dir/../p6common/lib/debug.sh
  . $dir/../p6common/lib/string.sh
  . $dir/../p6common/lib/file.sh
  . $dir/../p6common/lib/dir.sh

  local file
  for file in $(p6_dir_list_recursive "$dir/lib"); do
    p6_file_load "$file"
  done

  p6_path_if "$dir/bin"
}