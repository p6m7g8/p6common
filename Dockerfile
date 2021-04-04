FROM alpine

RUN mkdir -p /p6m7g8/p6common
WORKDIR /p6m7g8/p6common

COPY . .

RUN apk --no-cache add ncurses

ENV TERM "xterm256-color"
RUN . lib/_bootstrap.sh; p6_bootstrap "." "github"; p6_cicd_tests_run
