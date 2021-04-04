FROM docker

RUN mkdir -p /p6m7g8/p6common

WORKDIR /p6m7g8/p6common

COPY . .

RUN bin/p6ctl docker_build
