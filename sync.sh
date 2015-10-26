#!/bin/sh

cd /home/jorbin/develop-sync/develop.git.wordpress.org/

git pull origin master > /dev/null 2>&1
git push github master > /dev/null 2>&1


