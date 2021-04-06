#!/bin/sh -x

if [ -n "$GITHUB_WORKFLOW" ]; then
    apk --no-cache add git    
    git clone https://github.com/p6m7g8/p6ctl ../p6ctl
elif [ -n "$DOCKER_WORKFLOW" ]; then
    apk --no-cache add git    
    (cd /p6m7g8/p6common ; git clone https://github.com/p6m7g8/p6ctl ../p6ctl)
else
    # laptop in PATH already
    true
fi

