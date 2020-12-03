#!/bin/sh

_p6_cwd=$(pwd)
module=$(basename "$_p6_cwd")

perl "${ROOT_DIR_REL:-}"/"$module"/bin/doc_inline.pl --module ../"$module"
perl "${ROOT_DIR_REL:-}"/"$module"/bin/doc_readme.pl --module ../"$module" >README.md
