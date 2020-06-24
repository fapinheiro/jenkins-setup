FROM openjdk:8u191-jdk-alpine3.8

LABEL maintainerName="Filipe Pinheiro"

LABEL maintainerEmail="filipe.alves.pinheiro@gmail.com"

# Create work directory
RUN mkdir -p /opt/jenkins/
WORKDIR /opt/jenkins/

# Copy files
COPY jenkins/* ./
# ADD https://cib-cross-services-shared.s3.eu-west-2.amazonaws.com/JenkinsMaster.zip ./
RUN unzip JenkinsMaster.zip -d /opt/jenkins/

# Setup Jenkins permissions
RUN apk add fontconfig ttf-dejavu
RUN chmod +x /opt/jenkins/JenkinsService.sh

## Start Jenkins
CMD [ "/bin/sh", "/opt/jenkins/JenkinsService.sh" ]
