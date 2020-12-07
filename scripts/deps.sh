#!/bin/sh

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin
export PATH

apk --no-cache add git
apk --no-cache add bash
apk --no-cache add perl

curl -L https://cpanmin.us | perl - --sudo App::cpanminus

echo ----------------------
ls /usr/local/bin

/usr/bin/cpan install Data::Dumper
