#!/bin/sh

p6_lang_version() {
    local prefix="$1"

    local cmd="${prefix}env"
    cmd=$(echo $cmd | sed -e 's,nodeenv,nodenv,')

    local ver

    if command -v $cmd > /dev/null; then
	ver="$($cmd version-name 2>/dev/null)"

	local v=$(echo $ver | sed -e "s,$prefix,," -e 's,^-,,')

	if [ x"$v" = x"system" ]; then
	    p6_lang_system_version "$prefix"
	else
	    echo "$v"
	fi
    else
	p6_lang_system_version "$prefix"
    fi
}

p6_lang_system_version() {
    local prefix="$1"

    local rcmd=$(p6_lang_env_2_cmd "$prefix")

    if command -v $rcmd > /dev/null; then
	local ver
	case $prefix in
	    py)    ver=$($rcmd -V 2>&1 | awk '{print $2}') ;;
	    rb)    ver=$($rcmd -v | awk '{print $2}')      ;;
	    pl)    ver=$($rcmd -v | sed -e 's,.*(,,' -e 's,).*,,' | grep ^v5 | sed -e 's,^v,,') ;;
	    go)    ver=$($rcmd version | awk '{print $3}' | sed -e 's,^go,,') ;;
	    node)  ver=$($rcmd -v | sed -e 's,v,,') ;;
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

p6_lang_cmd_2_env() {
    local cmd="$1"

    local prefix
    case $cmd in
      python)	prefix=py    ;;
      ruby)     prefix=rb    ;;
      perl)     prefix=pl    ;;
      go)       prefix=go    ;;
      node)     prefix=node  ;;
      java)     prefix=j     ;;
      R)        prefix=R     ;;
      scala)    prefix=scala ;;
      lua)      prefix=lua   ;;
    esac

    echo $prefix
}

p6_lang_env_2_cmd() {
    local prefix="$1"

    local rcmd
    case $prefix in
	py)    rcmd=python ;;
	rb)    rcmd=ruby   ;;
	pl)    rcmd=perl   ;;
	go)    rcmd=go     ;;
	node)  rcmd=node   ;;
	j)     rcmd=java   ;;
	R)     rcmd=R      ;;
	scala) rcmd=scala  ;;
	lua)   rcmd=lua    ;;
    esac

    echo $rcmd
}
