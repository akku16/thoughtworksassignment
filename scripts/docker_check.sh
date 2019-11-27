#!/bin/bash

. ../config/paths.sh
echo "==========================================================="
echo "STEP 1 - Check if docker is installed on the machine"
echo "==========================================================="
status=$(docker --version)
if [[ $status == *"version"* ]];then
	echo "Docker is installed in the system"
	echo $status
	$scripts_path/app_build.sh
else
	echo "Docker is not installed on this machine"
	echo "-------------Installing docker-------------------"
	curl -fsSL https://get.docker.com -o get-docker.sh
	sh get-docker.sh
fi 
