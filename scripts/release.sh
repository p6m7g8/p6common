#!/bin/sh

if ! git log --oneline -1 | grep -q "chore(release):"; then
    return 0
fi

standard-version

git push --follow-tags origin master
