#Importing the base image
FROM nginx:1.9.15-alpine

#Declaring the maintainer for this dockerfile
MAINTAINER Akshar Srivastava <aksharsri@gmail.com>

#Adding the unzip utility
RUN apk --update add unzip

#Copying the static elements to the container    
COPY static.zip /tmp/

#Unzipping the static elements at pwd
RUN unzip -d /usr/share/nginx/html/ /tmp/static.zip \
    && rm -rf /tmp/static.zip


#Overriding the configuration of nginx with custom conf file
COPY default.conf /etc/nginx/conf.d/default.conf
