#!/bin/sh

######################################################################
#<
#
# Function:
#      = p6_version__debug()
#
#
#
#>
######################################################################
p6_version__debug() {
    local msg="$1"

    p6_debug "p6_version: $msg"

    p6_return_void
}

#
# p6_version_next() - Update version to specified or requested next one.
#
# Outputs the next_version for file=[conf/meta:version].
#
# Args:
#     next_version: version|major|minor|patch|dev|alpha|beta|rc|release
#     file:         relative path to version file, default: conf/meta
#
# Output:
#     next_version: the next_version
#
# Returns: 0
#
# Notes:
#     No sanity check is done on custom versions for next_version.
#
######################################################################
#<
#
# Function:
#     $next_version = p6_version_next(next_version, file)
#
# Arg(s):
#    next_version - 
#    file - 
#
# Return(s):
#    $next_version - 
#
#>
######################################################################
p6_version_next() {
    local next_version="$1"
    local file="${2:-conf/meta}"

    case $next_version in
      major|minor|patch|dev|alpha|beta|rc|release)
	  local current_version=$(awk -F: '/version/ { print $2 }')

	  local major=$(p6_echo "$current_version" | cut -f 1 -d .)
	  local minor=$(p6_echo "$current_version" | cut -f 2 -d .)
	  local patch=$(p6_echo "$current_version" | cut -f 3 -d .)

	  local extra=$(p6_echo "$current_version" | cut -f 2 -d '-')

	  case $next_version in
	      major)
		  major=$(($major+1))
		  minor=0
		  patch=0
		  ;;
	      minor)
		  minor=$(($minor+1))
		  patch=0
		  ;;
	      patch)
		  patch=$(($patch+1))
		  ;;
	      dev|alpha|beta|rc[0-9])
		  extra="-$next_version"
		  ;;
	  esac

	  next_version="${major}.${minor}.${patch}"
	  if [ -n "$extra" ]; then
	     next_version="$next_version-$extra"
	  fi
	  ;;
    esac

    p6_return_str "$next_version"
}

#
# p6_version_get() - Outputs the version in file=[conf/meta:version].
#
# Outputs the version in file=[conf/meta:version].
#
# Args:
#     file: relative path to version file, default: conf/meta
#
# Output:
#     version: the version
#
# Returns: 0
#
# Notes:
#
######################################################################
#<
#
# Function:
#     $version = p6_version_get(file)
#
# Arg(s):
#    file - 
#
# Return(s):
#    $version - 
#
#>
######################################################################
p6_version_get() {
    local file="${1:-conf/meta}"

    local version=$(awk -F: '/version/ { print $2 }' $file)

    p6_return_str "$version"
}

#
# p6_version_bump() - Updates software to the specified or requested version.
#
# Updates version in file=[conf/meta:version].
#
# Args:
#     file: relative path to version file, default: conf/meta
#
# Output:
#     version: the version
#
# Returns: 0
#
# Notes:
#
######################################################################
#<
#
# Function:
#     $next_version = p6_version_bump(version, file)
#
# Arg(s):
#    version - 
#    file - 
#
# Return(s):
#    $next_version - 
#
#>
######################################################################
p6_version_bump() {
    local version="$1"
    local file="${2:-conf/meta}"

    local next_version=$(p6_version_next "$version" "$file")

    sed -i '' -e "s,version:.*,version:    $next_version,g" $file

    p6_return_str "$next_version"
}
