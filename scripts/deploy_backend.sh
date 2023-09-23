#!/bin/bash
dist="/home/ec2-user/project"

cd $dist

docker stop flask-app || true
docker rm flask-app || true

docker rmi flask-app || true

docker build -t flask-app .

docker run -d -p 8080:8080 --name flask-app flask-app