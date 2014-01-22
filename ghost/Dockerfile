FROM genuinegreg/nodejs

RUN apt-get install -y curl unzip; apt-get clean

RUN curl -L https://ghost.org/zip/ghost-latest.zip -o ghost.zip
RUN unzip ghost.zip -d ghost
RUN cd ghost; npm install --production

ADD config.example.js /ghost/config.js

EXPOSE 2368
WORKDIR /ghost

CMD ["npm", "start", "--production"]
