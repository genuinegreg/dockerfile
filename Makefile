
GIT_REV=`git describe`

all: nodejs btsync mongodb

forcelook:
	true

nodejs: forcelook
	docker build -rm -t genuinegreg/nodejs nodejs
	docker tag genuinegreg/nodejs genuinegreg/nodejs\:$(GIT_REV)

btsync: forcelook
	docker build -rm -t genuinegreg/btsync btsync
	docker tag genuinegreg/btsync genuinegreg/btsync\:$(GIT_REV)

mongodb: forcelook
	docker build -rm -t genuinegreg/mongodb mongodb
	docker tag genuinegreg/mongodb genuinegreg/mongodb\:$(GIT_REV)
