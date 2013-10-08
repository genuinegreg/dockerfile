#!/bin/bash

docker build -t genuinegreg/nodejs nodejs
docker build -t genuinegreg/btsync btsync
docker build -t genuinegreg/mongodb mongodb