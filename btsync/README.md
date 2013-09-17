Bittorent Sync Docker Image
==================================

Build a btsync docker image

Usage
-----------
Start btsync in a docker container

	docker -v /host-dir/for/data-persistence:/data -p :59059 -d genuinegreg/btsync

management port 8888 is maped on a random port
port 59059 is maped on 59059 (bt port)
map host dir /host-dir/for/data-persistence to /data