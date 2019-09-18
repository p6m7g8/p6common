p6df::modules::p6common::version()        { echo "0.0.1"; }

p6df::modules::p6common::init() {

  p6_bootstrap "$P6_DFZ_SRC_DIR/p6m7g8/p6common"
}

p6_bootstrap() {
  local dir="$1"

  local file
  for file in "$dir"/lib/*.sh; do
    . "$file" # Intentionally not using p6_file_load until its loaded
  done
}
