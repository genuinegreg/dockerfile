Bittorent Sync Docker Image
==================================

Build a bittorrent-sync docker image.

WebUi is disable and configuration is done with ENV variable

btsync executable is not bundle but downloaded when the container is run (bittorent licence issue).

 - Webui is disable
 - You can configure btsync via ENV variable
 - Node name default to "default_name"
 - A random secret is generated if you don't provide one (watch the logs)

 - bittorrent port is 1337 and expose via dockerfile expose command
 - btsync data are located in /data (defined as a volume via dockerfile VOLUME command)

Usage
-----------
Start btsync in a docker container. Internal btport is 1337 and map on 27027 on the host , secret is randomly generated, btsync node name is "default_name"

	docker run -d \
		-p 1337:1337 \				# map port 1337 on host port 1337
		genuinegreg/btsync


Start a btsync node named "docker_node", sharing "####...####" secret on port 12345

	docker run -d \
		-p 12345:1337 \ 			# map port 1337 on host port 12345
		-e NAME="docker_node" \		# name the btsync node docker_node
		-e SECRET="####...####" \	# chose the secret
		genuinegreg/btsync


Start a btsync node named "docker_node", sharing "####...####" secret on port 12345 and persist data on /data/docker/btsync

	docker run -d \
	-v /data/docker/btsync:/data \	# map host directory /data/docker/btsync on docker volume /data
	-p 12345:27027 \						# map port 27027 on host port 12345
	-e NAME="docker_node" \					# name the btsync node docker_node
	-e SECRET="####...####" \				# chose the secret
	genuinegreg/btsync


