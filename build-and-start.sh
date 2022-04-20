#!/bin/bash

docker build -t node-watch .
docker run -v $PWD:/usr/src/app --rm node-watch
