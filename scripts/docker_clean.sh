#!/bin/bash

echo "============================================="
echo "Initiating the cleanup process"
echo "============================================="

containers=$(docker container ls | awk '{if(NR>1)print $1}')
for container in ${containers[@]};do
	docker container stop $container
done
docker rmi -f $(docker images -q)
