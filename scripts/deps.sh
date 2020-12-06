#!/bin/sh

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin
export PATH
=======
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

<<<<<<< HEAD
<<<<<<< HEAD
echo "========> CPANM"
curl -L https://cpanmin.us/ -o cpanm
chmod +x cpanm
>>>>>>> 43db0a3 (fixes)

<<<<<<< HEAD
apk --no-cache add git
apk --no-cache add bash
apk --no-cache add perl
apk --no-cache add cpanm
<<<<<<< HEAD
<<<<<<< HEAD
=======
echo "=========> Data::Dumper"
./cpanm -v --notest --force ExtUtils::Manifest Data::Dumper

echo "=========> p6perl"
if [ ! -d ../p6perl ]; then
    git clone https://github.com/p6m7g8/p6perl ../p6perl
fi
>>>>>>> a5ff2be (fixes)
=======
apk --no-cache list
>>>>>>> 478aa2b (fixes)
=======
apk --no-cache list installed
>>>>>>> f295918 (fixes)
=======
=======
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin
export PATH

>>>>>>> 6aea188 (fixes)
apk --no-cache add git
apk --no-cache add bash
apk --no-cache add perl
<<<<<<< HEAD

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
cpan install Data::Dumper
>>>>>>> 662c393 (fixes)
=======
/usr/bin/cpan install Data::Dumper
>>>>>>> 6aea188 (fixes)
=======
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
>>>>>>> 8148da3 (fixes)
=======
curl -L https://cpanmin.us | perl - --sudo App::cpanminus
=======
wget -L https://cpanmin.us | perl - --sudo App::cpanminus
>>>>>>> f542507 (fixes)
=======
wget https://cpanmin.us -q -O - | perl - --sudo App::cpanminus
>>>>>>> 68dd3a4 (fixes)
=======
apk --no-cache add cpan
>>>>>>> 318c419 (fixes)

echo ----------------------
ls /usr/local/bin

/usr/bin/cpan install Data::Dumper
>>>>>>> 8d35b44 (fixes)
=======

echo ----------------------
ls /usr/local/bin | grep cpan
>>>>>>> c9617e2 (fixes)
=======
>>>>>>> 2cc76bb (fixes)
