##############################################################################
#
# These are intentionally global.  No global should exist without being
# delcared here first.  Other modules may add local namespace prefixed globals
# that are internal to it.
#
##############################################################################
TMPDIR=${TMPDIR:-/tmp}

P6_DIR=$TMPDIR/p6
P6_DIR_TRANSIENTS=$P6_DIR/transients

P6_TRANSIENT_LOG=$P6_DIR_TRANSIENTS/list-$$.txt

P6_TRUE=0
P6_FALSE=1

#P6_DEBUG=
#P6_VERBOSE=
#P6_DRY_RUN=
