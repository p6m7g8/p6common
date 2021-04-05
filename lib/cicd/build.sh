# shellcheck shell=bash

######################################################################
#<
#
# Function: p6_cicd_build_run()
#
#>
######################################################################
p6_cicd_build_run() {
  local dockerfile="${1:-Dockerfile}"

  docker -l debug build --no-cache --progress plain -f "$dockerfile" .
}
