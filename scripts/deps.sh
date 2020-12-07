#!/bin/sh

apk --no-cache add git
apk --no-cache add bash
apk --no-cache add perl

cpan install Data::Dumper
