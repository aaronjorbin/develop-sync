#!/bin/sh

cd /home/jorbin/develop-sync/codecov

git fetch origin
git pull origin master > /dev/null 2>&1
if grep `git rev-parse HEAD` .stored-hash; then
	echo "yo" 2>&1
else
	rm /home/jorbin/develop-sync/codecov/.travis.yml  2>&1
	rm /home/jorbin/develop-sync/codecov/.coveralls.yml  2>&1
	cp /home/jorbin/develop-sync/travis-configs/codecov.travis.yml /home/jorbin/develop-sync/codecov/.travis.yml  2>&1
	cp /home/jorbin/develop-sync/travis-configs/codecov.coveralls.yml /home/jorbin/develop-sync/codecov/.coveralls.yml  2>&1
	git add .travis.yml  2>&1
	git add .coveralls.yml  2>&1
	git commit -m "codecov"  2>&1
	git push github master --force 2>&1
	git reset --hard origin/master  2>&1
	git rev-parse HEAD > .stored-hash
fi
