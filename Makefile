DEFAULT_GOAL=	test

all:	test

test:	init
	p6_test_harness_tests_run t

release:
	npx standard-release

init:
	. ../p6test

