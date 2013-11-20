all: nodejs btsync mongodb

forcelook:
	true

nodejs: forcelook
	docker build -t genuinegreg/nodejs nodejs

btsync: forcelook
	docker build -t genuinegreg/btsync btsync

mongodb: forcelook
	docker build -t genuinegreg/mongodb mongodb
	