#!/bin/sh

pwd
ls ..

cpan install Data::Dumper
if [ ! -d ../p6perl ]; then
  git clone https://github.com/p6m7g8/p6perl ../p6perl
fi

