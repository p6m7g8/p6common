
######################################################################
#<
#
# Function: p6df::modules::p6common::init()
#
#>
######################################################################
p6df::modules::p6common::init() {

  local dir="$P6_DFZ_SRC_DIR/p6m7g8/p6common"

  . $dir/lib/_bootstrap.sh
  p6_bootstrap "$dir"
}