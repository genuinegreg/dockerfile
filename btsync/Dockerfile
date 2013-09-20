# Bittorent sync image

FROM base

# install wget
RUN apt-get install -y wget	

# add docker-btsync sources
ADD app/ /

# create btsync data volume (can be mount on host to ensure data persistence)
VOLUME ["/btsync_data"]



# exec run script by default
CMD /btsync.sh