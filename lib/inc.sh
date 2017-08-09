p6_include_file() {
    local file="$1"

    file_load "$file"
}

p6_include_module() {
    local module="$1"
    local start="${2:-init.cfg}"

    file_load "$module/$start"
}
