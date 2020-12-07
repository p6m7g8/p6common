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

echo "========> CPANM"
curl -L https://cpanmin.us/ -o cpanm
chmod +x cpanm

echo "=========> Data::Dumper"
./cpanm -v --notest --force ExtUtils::Manifest Data::Dumper

echo "=========> p6perl"
if [ ! -d ../p6perl ]; then
    git clone https://github.com/p6m7g8/p6perl ../p6perl
fi
