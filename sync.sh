#!/bin/sh

cd /home/jorbin/develop-sync/develop.git.wordpress.org/

git fetch -p origin > /dev/null 2>&1
git push --mirror -f gh 2>&1
