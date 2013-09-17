# Bittorent sync image

FROM base

# install wget
RUN apt-get update -y
RUN apt-get install -y wget

RUN wget -nv http://download-lb.utorrent.com/endpoint/btsync/os/linux-x64/track/stable
RUN tar -xf stable

RUN mkdir /data


EXPOSE 8888
CMD /btsync --nodaemon