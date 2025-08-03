#!/bin/sh
git clone https://github.com/$1
cd docker_practice/express-app
docker build . -t $2
docker login -u $3 -p $4
docker push $2