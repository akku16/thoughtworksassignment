#Importing the alpine base image
FROM alpine:3.3

#Declaring the maintainer of the dockerfile
MAINTAINER Akshar Srivastava <aksharsri@gmail.com>

#Installing java for this container
RUN apk update
RUN apk fetch openjdk8
RUN apk add openjdk8

# Set environment
ENV JAVA_HOME /opt/jdk
ENV PATH ${PATH}:${JAVA_HOME}/bin

#Exposing the ports
EXPOSE 8080

#Defining the working directory for the dockerfile
WORKDIR /tip/

#Adding jetty 
ADD http://central.maven.org/maven2/org/mortbay/jetty/jetty-runner/7.6.5.v20120716/jetty-runner-7.6.5.v20120716.jar ./jetty-runner.jar    

#Adding the war file to the container
COPY companyNews.war ./

#Starting the war file
CMD java -jar jetty-runner.jar companyNews.war

