DEFAULT_GOAL=	test

ROOT_DIR_REL?=	..
BUILD_FILE?=	${ROOT_DIR_REL}/p6common/scripts/build.sh
TEST_FILE?=	${ROOT_DIR_REL}/p6common/scripts/test.sh
LINT_FILE?=	${ROOT_DIR_REL}/p6common/scripts/lint.sh
DOC_FILE?=	${ROOT_DIR_REL}/p6common/scripts/doc.sh
RELEASE_FILE?=	${ROOT_DIR_REL}/p6common/scripts/release.sh
DEPLOY_FILE?=	${ROOT_DIR_REL}/p6common/scripts/deploy.sh

all:	test

build:
	ROOT_DIR_REL=${ROOT_DIR_REL} ${BUILD_FILE}

lint:
	ROOT_DIR_REL=${ROOT_DIR_REL} ${LINT_FILE}

doc:
	ROOT_DIR_REL=${ROOT_DIR_REL} ${DOC_FILE}

test:
	ROOT_DIR_REL=${ROOT_DIR_REL} ${TEST_FILE}

release: 
	ROOT_DIR_REL=${ROOT_DIR_REL} ${RELEASE_FILE}

deploy:
	ROOT_DIR_REL=${ROOT_DIR_REL} ${DEPLOY_FILE}

.PHONY:	all build lint doc test release deploy
