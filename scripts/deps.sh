#!/bin/sh

apk --no-cache add git

echo "=========> p5-Data::Dumper"
cpanm -v --notest --force Data::Dumper

echo "=========> p6perl"
if [ ! -d ../p6perl ]; then
    git clone https://github.com/p6m7g8/p6perl ../p6perl
fi
