#!/bin/sh

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin
export PATH

apk --no-cache add git
apk --no-cache add bash
apk --no-cache add perl

wget https://cpanmin.us -q -O - | perl - --sudo App::cpanminus

echo ----------------------
ls /usr/local/bin

/usr/bin/cpan install Data::Dumper
