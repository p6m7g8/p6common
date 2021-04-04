FROM alpine

RUN mkdir -p /p6m7g8/p6common
WORKDIR /p6m7g8/p6common

COPY . .

RUN apk install --no-cache ncurses

RUN . lib/_bootstrap.sh; p6_bootstrap "." "github"; p6_cicd_tests_run
