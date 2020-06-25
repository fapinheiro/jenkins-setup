@ECHO OFF
ECHO Starting Jenkins Slave 02...

SET JENKINS_SLAVE_NAME=win10-local-jnlp-02
SET JENKINS_SLAVE_DIR="C:\Applics\Jenkins\JenkinsSlave02"
SET JENKINS_HOST=localhost
SET JENKINS_SECRET=df245d55f4188254e7b7bb205f8bcb966a7c02c662a84c9d0f38d183ceca73ad

START java -jar agent.jar -jnlpUrl http://%JENKINS_HOST%:8080/computer/%JENKINS_SLAVE_NAME%/slave-agent.jnlp -secret %JENKINS_SECRET% -workDir %JENKINS_SLAVE_DIR%