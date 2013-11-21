# install nodejs

FROM base

RUN apt-get install -y software-properties-common
RUN apt-add-repository -y ppa:chris-lea/node.js
RUN apt-get update -y
RUN apt-get install -y nodejs

RUN apt-get remove -y software-properties-common
RUN apt-get autoremove -y
RUN apt-get clean


CMD ["node"]