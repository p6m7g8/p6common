#!/bin/sh

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin
export PATH

apk --no-cache add git
apk --no-cache add bash
apk --no-cache add perl

echo ----------------------
ls /bin
echo ----------------------
ls /sbin
echo ----------------------
ls /usr/bin
echo ----------------------
ls /usr/sbin
echo ----------------------
ls /usr/local/bin

#/usr/bin/cpan install Data::Dumper
