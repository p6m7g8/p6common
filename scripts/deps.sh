#!/bin/sh

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin
export PATH

apk --no-cache add git
apk --no-cache add bash
apk --no-cache add perl
apk --no-cache add cpanm

echo ----------------------
ls /usr/local/bin | grep cpanm
