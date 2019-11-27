Please run "run_me.sh" script to trigger the application build, deployment and UAT environment creation

All scripts are present in the folder "Scripts"
  -- docker_check.sh -> Checks whether docker is present or not in the host machine. If not it installs docker on the machine
                     -> If all successful, it triggers app_buid.sh
  -- app_build.sh    -> Create the docker images
                     -> Runs docker-compose to create a 3 container application
  -- app_test.sh     -> Tests the running application
  -- docker_clean.sh -> If at any place an image or container fails, rollover process is intiated and all running containers and images                           are stopped/deleted
  
All config files are present in folder "config"

  -- paths.sh        -> All the paths for the application are defined in it
  
Dockerfiles are present inside "web" and "static" folder to create the respective containers
docker-compose.yml is defined to create the entire docker application with 1 static container and 2 web containers

