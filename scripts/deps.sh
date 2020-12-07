#!/bin/sh

apk --no-cache add bash
apk --no-cache add git
apk --no-cache add wget
apk --no-cache add clang
apk --no-cache add make
apk --no-cache add perl
apk --no-cache add perl-app-cpanminus

cpanm -v --notest --force ExtUtils::Manifest
cpanm -v --notest --force Data::Dumper
