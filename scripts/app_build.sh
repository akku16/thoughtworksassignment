#!/bin/bash

. ../config/paths.sh

echo "===================================================================="
echo "STEP 2 - Building the docker images and starting the containers"
echo "===================================================================="
echo "Building the images using the docker file present in web directory"
cd $web_path
docker build -t uat_web .
cd - 
echo "Initiating Docker compose to build web and static containers"
cd $project_home
docker-compose up -d
if [ $? == 0 ];then 
	$scripts_path/app_test.sh
else
	$scripts_path/docker_clean.sh
fi

