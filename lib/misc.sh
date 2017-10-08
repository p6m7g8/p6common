p6_debug__misc() {
    local msg="$1"

    p6_debug "p6_misc: $msg"
}

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
    local len="${2:-4}"

    local rand=$(p6_mkpasswd $len)
    dir_name=$dir_name/$rand

    p6_dir_mk "$dir_name"
    p6_debug "p6_misc: transient_create(): $dir_name [$len]"
    p6_transient_log "$dir_name"

    echo $dir_name
}

p6_transient_delete() {
    local dir="$1"

    p6_debug "p6_misc: transient_delete(): $dir"
    p6_dir_rmrf "$dir"
}

## Internal Only
trap p6_transient_cleanup 0 1 2 3 6 14 15
p6_transient_cleanup() {

    local dir
    for dir in $(cat ${TMPDIR:-/tmp}/p6.$$.tmp); do
	p6_transient_delete "$dir"
    done

    exit 0
}

p6_transient_log() {
    local dir="$1"

    echo "$dir" >> ${TMPDIR:-/tmp}/p6.$$.tmp
}
