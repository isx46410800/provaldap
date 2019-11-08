#! /bin/bash
# Install ldap server

rm -rf /etc/openldap/slapd.d/*
rm -rf /var/lib/ldap/*
mkdir /var/lib/ldap.miguel.cat
mkdir /var/lib/ldap.edt.org
cp /opt/docker/DB_CONFIG /var/lib/ldap/. 
cp /opt/docker/DB_CONFIG /var/lib/ldap.miguel.cat/.
cp /opt/docker/DB_CONFIG /var/lib/ldap.edt.org/.
slaptest -f /opt/docker/slapd.conf -F /etc/openldap/slapd.d/
slapadd -F /etc/openldap/slapd.d/ -l /opt/docker/miguel.cat.ldif
slapadd -b 'dc=miguel,dc=cat' -F /etc/openldap/slapd.d/ -l /opt/docker/miguel.cat.ldif
chown -R ldap.ldap /etc/openldap/slapd.d
chown -R ldap.ldap /var/lib/ldap
chown -R ldap.ldap /var/lib/ldap.miguel.cat
chown -R ldap.ldap /var/lib/ldap.edt.org
cp /opt/docker/ldap.conf /etc/openldap/.
