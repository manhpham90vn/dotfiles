#!/bin/bash

echo Stopping all running containers...
docker stop $(docker ps -aq)

echo Pruning all stopped containers...
docker container prune -f

echo Pruning all unused images...
docker image prune -f -a

echo Pruning all unused volumes...
docker volume prune -f -a

echo Pruning all unused networks...
docker network prune -f

echo Pruning all unused system objects...
docker system prune

echo Cleanup completed.