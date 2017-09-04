p6_ask_confirm() {

    while [ : ]; do
	msg "Are you sure Y/n?: \c"
	local answer
	read answer

	[ x"${answer}" = x"Y" -o x"${answer}" = x"n" ] && break
    done

    if [ x"${answer}" = x"n" ]; then
	if [ -n "${TEST_MODE}" ]; then
	    echo "Asked to Exit"
	    return 42
	else
	    die "42" "Asked to Exit."
	fi
    fi
}
