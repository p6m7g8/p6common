p6_bootstrap() {
  local dir="${1:-$P6_DFZ_SRC_P6M7G8_DIR/p6common}"

  local file
  for file in "$dir"/lib/*.sh; do
    . "$file" # Intentionally not using p6_file_load until its loaded
  done
}
