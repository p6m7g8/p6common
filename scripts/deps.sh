#!/bin/sh

echo "========> CPANM"
curl -L https://cpanmin.us/ -o cpanm
chmod +x cpanm

echo "=========> Data::Dumper"
./cpanm --notest --force ExtUtils::Manifest Data::Dumper

echo "=========> p6perl"
if [ ! -d ../p6perl ]; then
    git clone https://github.com/p6m7g8/p6perl ../p6perl
fi
