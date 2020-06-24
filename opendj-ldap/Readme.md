# Reference
https://hub.docker.com/r/openidentityplatform/opendj/
http://www.ldapadmin.org/docs/introduction.html
https://www.techrepublic.com/article/how-to-populate-an-ldap-server-with-users-and-groups-via-phpldapadmin/
https://github.com/OpenIdentityPlatform/OpenDJ/wiki/Administration-Directory-Data

# Build
`Before building check The End of Line Sequence of the file in all *.sh files. It must be LF, not CRLF.`

docker image build -t fapinheiro/opendj-ldap:1.0.0 .

# Run
docker pull openidentityplatform/opendj:4.4.6

docker container run --rm -h cib-cross-services.isban.pt -e BASE_DN="DC=cib-cross-services,DC=isban,DC=pt" -e ROOT_USER_DN="cn=root" -e ROOT_PASSWORD="Aws022020." -p 1389:1389 -p 1636:1636 -p 4444:4444 --name cib-cross-services-ldap openidentityplatform/opendj

docker container run --rm -h cib-cross-services.isban.pt -e BASE_DN="DC=cib-cross-services,DC=isban,DC=pt" -e ROOT_USER_DN="cn=root" -e ROOT_PASSWORD="Aws022020." -p 1389:1389 -p 1636:1636 -p 4444:4444 --name cib-cross-services-ldap -v C:/Users/i052330/WorkspaceNew/LDAP-OpenDJ:/opt/ldap-opendj openidentityplatform/opendj

docker container run --rm -h cib-cross-services.isban.pt -p 1389:1389 -p 1636:1636 -p 4444:4444 --name cib-cross-services-ldap fapinheiro/opendj-ldap:1.0.0

# Debug
docker container stop c203fcfa2d45

docker container exec -it c203fcfa2d45 bash

docker container logs -f c203fcfa2d45

# LDIF
cd /opt/opendj/bin

./makeldif -o /opt/ldap-opendj/templates/ldap-setup.ldif \
    -r /opt/opendj/template/config/MakeLDIF -s 0 \
    /opt/ldap-opendj/templates/ldap-setup.template

./import-ldif \
 --port 4444 \
 --hostname 127.0.0.1 \
 --bindDN "cn=Root" \
 --bindPassword Aws022020. \
 --includeBranch DC=cib-cross-services,DC=isban,DC=pt \
 --backendID userRoot \
 --ldifFile /opt/ldap-opendj/templates/ldap-setup.ldif \
 --trustAll \
 -t 0