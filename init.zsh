p6df::modules::p6common::version() { echo "0.0.1" }
p6df::modules::p6common::deps()    { }
p6df::modules::p6common::external::brew() { }

p6df::modules::p6common::init() {
    local dir=$P6_DFZ_DATA_PARENT/p6m7g8/p6common

    . $dir/lib/io.sh
    . $dir/lib/debug.sh
    . $dir/lib/string.sh
    . $dir/lib/file.sh


    local file
    for file in $dir/lib/*.sh; do
	P6_DEBUG=1 p6_file_load "$file"
    done
}
