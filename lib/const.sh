##############################################################################
#
# These are intentionally global.  No global should exist without being
# delcared here first.  Other modules may add local namespace prefixed globals
# that are internal to it.
#
##############################################################################
TMPDIR=${TMPDIR:-/tmp}

P6_DIR=/tmp/p6

P6_TRUE=0
P6_FALSE=1

P6_DEBUG=
P6_VERBOSE=
