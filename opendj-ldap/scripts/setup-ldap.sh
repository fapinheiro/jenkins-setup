#!/usr/bin/env bash
/opt/opendj/bin/ldapmodify -D $1 -h localhost -p 1389 -w $2 -f /opt/opendj/bootstrap/data/ldap-setup-full.ldif

echo "OpenLdap Started"

while true; do sleep 100000; done