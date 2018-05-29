#    ssh -v -N -o ConnectTimeOut=2 -o BatchMode=yes $host 'echo' # >/dev/null 2>&1

p6_ssh_do() {
  local host="$1"

  p6_log_and_run ssh $host
}
