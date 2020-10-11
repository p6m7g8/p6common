#!/bin/sh

perl ${ROOT_DIR_REL:-}/p6perl/bin/doc_inline.pl --module .
perl ${ROOT_DIR_REL:-}/p6perl/bin/doc_readme.pl --module . >README.md
