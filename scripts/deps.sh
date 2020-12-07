#!/bin/sh

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin
export PATH

apk --no-cache add git
apk --no-cache add bash
apk --no-cache add perl

/usr/bin/cpan install Data::Dumper
