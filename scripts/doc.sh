#!/bin/sh

. ${ROOT_DIR_REL:-..}/p6common/lib/_bootstrap.sh
p6_bootstrap

perl ${ROOT_DIR_REL:-}/p6perl/bin/doc_inline.pl --module .
#perl ${ROOT_DIR_REL:-}/p6perl/bin/doc_readme.pl --module . >README.md
