pgs() {

    find . -type f | xargs perl -pi -e "s,$1,$2,g"
}

pslen() {
    local s="$1"

    perl -le "print length '$s'"
}

xclean() {

    find . \( -type f -o -type l \)  -a \
	 \( \
	    -name ".DS_Store" -o \
	    -name "*.bak" -o \
	    -name "*~" -o \
	    -name ".\#*" -o \
	    -name "\#*" -o \
	    -name "*.rej" -o \
	    -name "svn-commit.*" -o \
	    -name "*.orig" -o \
	    -name "*-i" -o \
	    -name "*.tmp" -o \
	    -name "=~+*" \
	\) \
	-print -exec rm -f "{}" \;
}

mkpasswd() {

    cat /dev/urandom | env LC_CTYPE=C tr -dc a-zA-Z0-9 | head -c $1
    echo
}
