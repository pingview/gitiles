#!/bin/bash

FILE=Dockerfile
NAME=craftslab/gitiles
TAG=latest

docker build -f $FILE -t $NAME:$TAG .

#docker inspect $NAME:$TAG > Dockerobjects
