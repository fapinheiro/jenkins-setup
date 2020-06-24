FROM openidentityplatform/opendj

LABEL maintainerName="Filipe Pinheiro"

LABEL maintainerEmail="filipe.alves.pinheiro@gmail.com"

ENV BASE_DN="DC=cib-cross-services,DC=isban,DC=pt"

ENV ROOT_USER_DN="cn=Root"

ENV ROOT_PASSWORD="Aws022020."

WORKDIR /opt

COPY /data /opt/opendj/bootstrap/data/
