DEFAULT_GOAL=	test

TEST_FILE?=	../p6common/scripts/test.sh
RELEASE_FILE?=	../p6common//scripts/release.sh

all:	test

test:
	${TEST_FILE}

release:
	${RELEASE_FILE}

.PHONY:	all release test
