#!/bin/sh

version="${1:-patch}"

npx standard-version --release-as $version

git push --follow-tags origin $(p6_git_branch_base_get)
