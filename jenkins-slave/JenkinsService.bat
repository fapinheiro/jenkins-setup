@ECHO OFF
ECHO Starting Jenkins Slave...

SET JENKINS_SLAVE_DIR="C:\Applics\Jenkins\JenkinsSlave"

START java -jar agent.jar -jnlpUrl http://localhost:8080/computer/win10-local-jnlp-01/slave-agent.jnlp -secret eaf7a69dc3d7f4f1a18688f25d874fad0c6623ee19c4ca71e550a5b006ff68f4 -workDir %JENKINS_SLAVE_DIR%