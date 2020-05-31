# Optional env or -D
VERSION?=	patch

DEFAULT_GOAL=	test
ROOT_DIR_REL?=	..

# convience 
TEST_FILE?=	${ROOT_DIR_REL}/p6common/scripts/test.sh

RELEASE_FILE?=	${ROOT_DIR_REL}/p6common/scripts/release.sh

DOC_INLINE_FILE?=	${ROOT_DIR_REL}/p6perl/bin/doc_inline.pl
DOC_README_FILE?=	${ROOT_DIR_REL}/p6perl/bin/doc_readme.pl

README?=	README.md

all:	test

build:
	npm run build

lint:
	npx tslint --project tsconfig.json tslint.yaml

doc:	lint
	perl ${DOC_INLINE_FILE} --module .
	perl ${DOC_README_FILE} --module . > ${README}

test:	doc
	ROOT_DIR_REL=${ROOT_DIR_REL} ${TEST_FILE}

release: test
	${RELEASE_FILE} ${VERSION}

.PHONY:	all doc test release
