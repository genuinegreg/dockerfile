# Bittorent sync image

FROM base

# install wget
RUN apt-get install -y wget

# create btsync data volume (can be mount on host to ensure data persistence)
VOLUME ["/data/"]

EXPOSE 1337

# exec run script by default
CMD ["/btsync.sh"]

# add docker-btsync sources
ADD app/ /