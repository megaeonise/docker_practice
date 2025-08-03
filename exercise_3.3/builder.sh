#!/bin/sh
git clone https://github.com/$1
cd docker_practice/express-app
docker build . -t $2
docker push $2