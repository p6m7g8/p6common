p6_pgs() {

    find . -type f | xargs perl -pi -e "s,$1,$2,g"
}

p6_pslen() {
    local s="$1"

    perl -le "print length '$s'"
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

p6_mkpasswd() {

    cat /dev/urandom | env LC_CTYPE=C tr -dc a-zA-Z0-9 | head -c $1
    echo
}

p6_transient_create() {
    local dir_name="$1"

    local path=$(mktemp -d -t $dir_name)
    p6_debug "transient $path"

    echo $path
}

p6_transient_delete() {
    local file="$1"

    p6_debug "clean $file"
    rm -rf $(dirname $file)
}
