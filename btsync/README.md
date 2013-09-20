Bittorent Sync Docker Image
==================================

Build a bittorrent-sync docker image.

WebUi is disable and configuration is done with ENV variable

btsync executable is not bundle but downloaded when the container is run (bittorent licence issue).

 - Webui is disable. 
 - You can configure btsync via ENV variable. 
 - Node name default to "default_name"
 - Bittorrent port default to "27027"
 - A random secret is generated if you don't provide one (watch the logs)

Usage
-----------
Start btsync in a docker container. Internal btport is 27027 and map on 27027 on the host , secret is randomly generated, btsync node name is "default_name"

	docker run -d \
		-p :27027 \				# map port 27027 on host port 27027
		genuinegreg/btsync


Start a btsync node named "docker_node", sharing "####...####" secret on port 12345

	docker run -d \
		-p 12345:27027 \ 			# map port 27027 on host port 12345
		-e NAME="docker_node" \		# name the btsync node docker_node
		-e SECRET="####...####" \	# chose the secret
		genuinegreg/btsync


Start a btsync node named "docker_node", sharing "####...####" secret on port 12345 and persist data on /data/docker/btsync

	docker run -d \
	-v /data/docker/btsync:/btsync_data \	# map host directory /data/docker/btsync on docker volume /btsync_data
	-p 12345:27027 \						# map port 27027 on host port 12345
	-e NAME="docker_node" \					# name the btsync node docker_node
	-e SECRET="####...####" \				# chose the secret
	genuinegreg/btsync



You could use the docker-btsyn-helper located in /bin

	./bin/docker-btsyn-helper SECRET PORT
	
	./bin/docker-btsyn-helper ####...#### 12345

