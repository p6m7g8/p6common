#!/bin/sh

p6_pgs() {

    find . -type f | xargs perl -pi -e "s,$1,$2,g"
}

#XXX: duped in string
p6_len() {
    local s="$1"

    p6_return "${#s}"
}

p6_xclean() {

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
