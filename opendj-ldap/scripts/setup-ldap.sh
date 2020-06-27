#!/usr/bin/env bash
/opt/opendj/bin/ldapmodify -D "cn=Root" -h localhost -p 1389 -w "Aws022020." -f /opt/opendj/bootstrap/data/ldap-setup-full.ldif
/opt/opendj/bin/ldapmodify -D "cn=Root" -h localhost -p 1389 -w "Aws022020." -f /opt/opendj/bootstrap/data/ldap-setup.ldif

echo "OpenLdap Started"

while true; do sleep 100000; done