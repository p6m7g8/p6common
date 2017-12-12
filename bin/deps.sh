#!/bin/sh -vx

main() {


  cd /home/travis/build/p6m7g8
  git clone https://github.com/p6m7g8/p6test.git
  cd -
}

main "$@"
