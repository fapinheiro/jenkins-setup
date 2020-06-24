#!/bin/sh
export JENKINS_HOME=/opt/jenkins/JenkinsMaster/

cd $JENKINS_HOME

java -Xrs -Xmx256m \
    -Djava.awt.headless=true \
    -Dhudson.model.DirectoryBrowserSupport.CSP= \
    -Dhudson.lifecycle=hudson.lifecycle.WindowsServiceLifecycle \
    -Djava.awt.headless=true \
    -jar jenkins.war \
    --webroot=war \
    --httpPort=8080