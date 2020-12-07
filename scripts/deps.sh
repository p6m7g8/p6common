#!/bin/sh

apk --no-cache add bash
apk --no-cache add git
apk --no-cache add perl
apk --no-cache add cpanm

echo "=========> Data::Dumper"
./cpanm -v --notest --force ExtUtils::Manifest Data::Dumper
