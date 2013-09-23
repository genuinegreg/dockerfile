docker-mongodb
==================


Usage
----------

start mongod

    docker run -d -p :27027 genuinegreg/mongodb 
    docker run -d -p 27027 genuinegreg/mongodb 
    docker run -d -p 12345:27027 genuinegreg/mongodb

start mongo client

    docker run -i -t genuinegreg/mongodb mongo localhost:27027/database