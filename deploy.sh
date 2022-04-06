#!/bin/bash
ssh ubuntu@54.242.33.225 << 'ENDSSH'
ifconfig
docker login -u "meetmanvar" -p "Meet.docker@1234"
ifconfig
docker stop jenkins
docker rm jenkins
docker rmi meetmanvar/cicdrepo:latest
docker run --name jenkins -p 3001:3000 meetmanvar/cicdrepo:latest
ENDSSH
