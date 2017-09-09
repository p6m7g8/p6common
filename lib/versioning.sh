##############################################################################
#
# version_next() - Update version to specified or requested next one.
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
##############################################################################
version_next() {
    local next_version="$1"
    local file="${2:-conf/meta}"

    case $next_version in
      major|minor|patch|dev|alpha|beta|rc|release)
	  local current_version=$(awk -F: '/version/ { print $2 }')

	  local major=$(echo $current_version | cut -f 1 -d .)
	  local minor=$(echo $current_version | cut -f 2 -d .)
	  local patch=$(echo $current_version | cut -f 3 -d .)

	  local extra=$(echo $current_version | cut -f 2 -d '-')

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

    echo $next_version
}

##############################################################################
#
# version_get() - Outputs the version in file=[conf/meta:version].
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
##############################################################################
version_get() {
    local file="${1:-conf/meta}"

    local version=$(awk -F: '/version/ { print $2 }' $file)

    echo $version
}

##############################################################################
#
# version_bump() - Updates software to the specified or requested version.
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
##############################################################################
version_bump() {
    local version="$1"
    local file="${2:-conf/meta}"

    local next_version=$(version_next "$version" "$file")

    sed -i '' -e "s,version:.*,version:    $next_version,g" $file

    echo $next_version
}
