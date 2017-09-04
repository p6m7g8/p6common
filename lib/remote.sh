p6_ssh_wait_for() {
  local ip="$1"

  local avail=n
  while [ "$avail" != "y" ]; do
    ssh -N -o ConnectTimeOut=2 -o BatchMode=yes $ip 'echo' >/dev/null 2>&1
    echo .
    case $? in
      0) avail=y ;;
      *) avail=n ;;
    esac
    sleep 5
  done
}
