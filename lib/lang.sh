env_version() {
    local prefix="$1"

    local cmd="${prefix}env"
    local ver

    if command -v $cmd > /dev/null; then
        ver="$($cmd version-name 2>/dev/null)"

	local v=$(echo $ver | sed -e "s,$prefix,," -e 's,^-,,')

	if [ x"$v" = x"system" ]; then
	    system_version "$prefix"
	else
	    echo "$v"
	fi
    else
	system_version "$prefix"
    fi
}

system_version() {
    local prefix="$1"

    local rcmd=$(envprefix_2_cmd "$prefix")

    if command -v $rcmd > /dev/null; then
	local ver
	case $prefix in
	    py)    ver=$($rcmd -V 2>&1 | awk '{print $2}') ;;
	    rb)    ver=$($rcmd -v | awk '{print $2}')      ;;
	    pl)    ver=$($rcmd -v | sed -e 's,.*(,,' -e 's,).*,,' | grep ^v5 | sed -e 's,^v,,') ;;
	    go)    ver=$($rcmd version | awk '{print $3}' | sed -e 's,^go,,') ;;
	    j)     ver=$($rcmd -version 2>&1 | grep Environment | sed -e 's,.*(build ,,' -e 's,).*,,') ;;
	    R)     ver=$($rcmd --version | awk '/ version / { print $3}') ;;
	    scala) ver=$($rcmd -nc -version 2>&1 | awk '{print $5}') ;;
	    lua)   ver=$($rcmd -v | awk '{print $2}') ;;
	esac
	echo "sys@$ver"
    else
	echo "no"
    fi
}

cmd_2_envprefix() {
    local cmd="$1"

    local prefix
    case $cmd in
      python)	prefix=py    ;;
      ruby)     prefix=rb    ;;
      perl)     prefix=pl    ;;
      go)       prefix=go    ;;
      java)     prefix=j     ;;
      R)        prefix=R     ;;
      scala)    prefix=scala ;;
      lua)      prefix=lua   ;;
    esac

    echo $prefix
}

envprefix_2_cmd() {
    local prefix="$1"

    local rcmd
    case $prefix in
	py)    rcmd=python ;;
	rb)    rcmd=ruby   ;;
	pl)    rcmd=perl   ;;
	go)    rcmd=go     ;;
	j)     rcmd=java   ;;
	R)     rcmd=R      ;;
	scala) rcmd=scala  ;;
	lua)   rcmd=lua    ;;
    esac

    echo $rcmd
}
