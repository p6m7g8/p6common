#!/bin/sh

echo "========> CPANM"
curl -L https://cpanmin.us | perl - App::cpanminus

echo "=========> Data::Dumper"
cpanm --notests --force Data::Dumper

echo "=========> p6perl"
if [ ! -d ../p6perl ]; then
  git clone https://github.com/p6m7g8/p6perl ../p6perl
fi

