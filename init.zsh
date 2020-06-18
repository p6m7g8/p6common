######################################################################
#<
#
# Function: p6df::modules::p6common::version()
#
#>
######################################################################
p6df::modules::p6common::version()        { echo "0.0.1"; }

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