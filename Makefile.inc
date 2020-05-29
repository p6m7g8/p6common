DEFAULT_GOAL=	test

VERSION?=	patch

TEST_FILE?=	../p6common/scripts/test.sh
RELEASE_FILE?=	../p6common//scripts/release.sh

all:	test

doc:	
	perl ../p6perl/bin/doc_inline.pl --module .
	perl ../p6perl/bin/doc_readme.pl --module . > README.md

test:
	${TEST_FILE}

release:
	${RELEASE_FILE} ${VERSION}

.PHONY:	all release test
