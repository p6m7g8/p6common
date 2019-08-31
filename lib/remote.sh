#    ssh -v -N -o ConnectTimeOut=2 -o BatchMode=yes $host 'echo' # >/dev/null 2>&1

p6_remote_ssh_do() {
  local cmd="$1"

  p6_run_read_cmd $cmd
}

p6_ssh_key_check() {
    local priv="$1"
    local test_pub="$2"

    diff <$( ssh-keygen -y -e -f "$priv" ) <$( ssh-keygen -y -e -f "$test_pub" )
}
