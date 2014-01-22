FROM genuinegreg/nodejs

RUN apt-get install -y curl unzip; apt-get clean

RUN curl -L https://ghost.org/zip/ghost-latest.zip -o ghost.zip
RUN unzip ghost.zip -d ghost
RUN cd ghost; npm install

EXPOSE 2368
WORKDIR /ghost

CMD ["node", "index.js"]
