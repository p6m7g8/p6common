#!/bin/sh

npx standard-version
git push --follow-tags origin master
