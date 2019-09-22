#!/bin/sh

#    ssh -v -N -o ConnectTimeOut=2 -o BatchMode=yes $host 'echo' # >/dev/null 2>&1

######################################################################
#<
#
# Function:
#      = p6_remote__debug()
#
#
#
#>
######################################################################
p6_remote__debug() {
    local msg="$1"

    p6_debug "p6_remote: $msg"
}

######################################################################
#<
#
# Function:
#      = p6_remote_ssh_do(cmd)
#
# Arg(s):
#    cmd - 
#
#
#>
######################################################################
p6_remote_ssh_do() {
  local cmd="$1"

  p6_run_read_cmd $cmd
}