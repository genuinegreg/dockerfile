# DOCKER-VERSION 0.6.1
FROM base


# Add 10gen official apt source to the sources list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | tee /etc/apt/sources.list.d/10gen.list



# Hack for initctl not being available in Ubuntu
RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -s /bin/true /sbin/initctl


# Install MongoDB
RUN apt-get update
RUN apt-get install -y mongodb-10gen
RUN apt-get clean


# Create the MongoDB data directory
VOLUME /data/db

# expose port
EXPOSE 27017 28017


CMD /usr/bin/mongod
