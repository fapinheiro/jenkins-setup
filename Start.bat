@ECHO OFF
ECHO Starting Jenkins Workspace...

SET WORKSPACE=C:\Users\i052330\WorkspaceNew\sigom-aws\jenkins-setup

REM START JENKINS MASTER
CD %WORKSPACE%\jenkins-master\jenkins
CALL JenkinsService.bat

TIMEOUT 20

REM START JENINS SLAVE
CD %WORKSPACE%\jenkins-slave
CALL JenkinsService.bat

REM START LDAP
REM CD %WORKSPACE%
REM docker-compose up -d