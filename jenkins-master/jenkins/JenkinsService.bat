@ECHO OFF
ECHO Starting Jenkins Master...

SET JENKINS_BASE=C:\Applics\Jenkins\

IF "%JENKINS_PATH%"=="" SET JENKINS_PATH=%JENKINS_BASE%\JenkinsMaster

SET JENKINS_HOME=%JENKINS_PATH%

IF exist "%JENKINS_HOME%\jenkins.war" ( 
    echo "Jenkins is already set up" 
) else ( 
    echo "Downloading Jenkins'workspaces..." 
    MKDIR %JENKINS_HOME% 
    CD %JENKINS_HOME%
    POWERSHELL Invoke-WebRequest -OutFile JenkinsMaster.zip https://cib-cross-services-shared.s3.eu-west-2.amazonaws.com/JenkinsMaster.zip
    UNZIP JenkinsMaster.zip -d %JENKINS_BASE%
)

CD %JENKINS_HOME%

START java -Xrs -Xmx256m "-Dhudson.model.DirectoryBrowserSupport.CSP=" "-Dhudson.lifecycle=hudson.lifecycle.WindowsServiceLifecycle" -jar "jenkins.war" --webroot="war" --httpPort=8080