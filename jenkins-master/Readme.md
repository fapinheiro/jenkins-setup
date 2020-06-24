# Links
https://wiki.alpinelinux.org/wiki/Alpine_Linux_package_management
https://issues.jenkins-ci.org/browse/JENKINS-25261
https://www.eclipse.org/openj9/docs/adoptopenjdk/

# Reference
There are some developers reported that they can not create volume in their local machine

This Jenkins Docker image is a bundle with everything so that developers can develop and test their Jenkins shared libraries locally

# Build
`Before building check The End of Line Sequence of the file in all *.sh files. It must be LF, not CRLF.`

docker image build -t fapinheiro/jenkins-master:1.0.0 .

# Run
docker pull fapinheiro/jenkins-master:1.0.0

docker container run --rm -it --name jenkins-master -p 8080:8080 -p 49187:49187 fapinheiro/jenkins-master:1.0.0

docker container run --rm -it --name jenkins-master -p 8080:8080 -p 49187:49187 -v C:/Applics/Jenkins/JenkinsMaster:/opt/jenkins/JenkinsMaster fapinheiro/jenkins-master:1.0.0

# Debug
docker container stop c203fcfa2d45

docker container exec -it c203fcfa2d45 sh

docker container logs -f c203fcfa2d45
