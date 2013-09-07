# DOCKER-VERSION 0.6.1
FROM base:latest

# install wget
RUN apt-get update -y
RUN apt-get install -y wget gdebi-core

# Hack for initctl not being available in Ubuntu
RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -s /bin/true /sbin/initctl

# download rabbitmq 3.1.5 deb
RUN wget http://www.rabbitmq.com/releases/rabbitmq-server/v3.1.5/rabbitmq-server_3.1.5-1_all.deb
RUN gdebi -n rabbitmq-server_3.1.5-1_all.deb


EXPOSE 5672
ENTRYPOINT ["usr/sbin/rabbitmq-server"]
