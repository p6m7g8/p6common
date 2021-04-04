#!/bin/sh

if git log --oneline -1 | grep -q "chore(release):"; then
    exit 0
fi

npx standard-version

git push --follow-tags origin master
