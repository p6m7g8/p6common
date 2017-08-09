p6_path_if() {
    local dir=$1

    if [ -d $dir ]; then
	if [ -n "$PATH" ]; then
	    PATH="${PATH}:$dir"
	else
	    PATH=$dir
	fi
    fi
}

p6_path_default() {

    PATH=
    path_if $HOME/bin
    path_if /opt/X11/bin
    path_if /usr/local/bin
    path_if /usr/local/sbin
    path_if /usr/bin
    path_if /usr/sbin
    path_if /bin
    path_if /sbin
}

p6_path_current() {

    env | grep -i path | cut -f 2 -d= | perl -F: -MData::Dumper -lane 'print Dumper \@F' | sed -e "s/[',]//g" | egrep -v '\]|\[' | grep /
}
