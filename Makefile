.PHONY:	all release test

DEFAULT_GOAL=	test

all:	test

test:
	./scripts/test.sh

release:
	npx standard-release
