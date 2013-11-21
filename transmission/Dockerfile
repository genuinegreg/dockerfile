
FROM base

# Hack for initctl not being available in Ubuntu
RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -s /bin/true /sbin/initctl


RUN apt-get install -y transmission-daemon

RUN mkdir /downloads
RUN mkdir /downloads-incomplete

EXPOSE 1337 9091
CMD transmission-daemon -f

ADD settings.json /etc/transmission-daemon/settings.json

ENTRYPOINT ["transmission-daemon", "-f", "--config-dir", "/etc/transmission-daemon/"]