#!/bin/sh

set +e
uname -a
cat /etc/*release
cat /etc/issue
echo -----------------
df -h
echo -----------------
pwd
echo -----------------
ls -alF ..
echo -----------------
ls -alF
echo -----------------
env | sort
echo -----------------
echo $PATH
echo -----------------
yum --version
apk --version
apt-get --version
apt --version
git --version

apk --no-cache list
