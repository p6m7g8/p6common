#!/bin/sh -x

version="${1:-patch}"

npx standard-version --release-as $version

git push --follow-tags origin master
