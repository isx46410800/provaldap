# provaldap
Examen LDAP Miguel Amorós Moret

# directori github
https://github.com/isx46410800/provaldap

# directori docker hub

## PART A
- Creem en un fitxer miguel.cat.ldif la nostra xixa de la bbdd
- Entitat arrel miguel.cat
- Organizational unit socis
- 3 socis amb object class inetOrgPerson i indepeOrgPerson
- Aquest 3 socis amb la seva organizational unit socis corresponent i amb idcat com rdn
- Hem creat un fitxer indepeOrgPerson.schema que serà el nostre subtipus de object class per aquests socis
- Hem creat un fitxer acl.ldif per indicar les acl indicades en el enunciat.
- En el slapd.conf hem posat les dades de la nostra organitzacio, hem inclòs el nostre esquema i hem posat la acl.

## PART B
- Creem en un fitxer marchenaaccount.schema un nou object class marchenaAccount amb el atributs indicats
- En un fitxer marchena.ldif afegim a dos dels socis informacio d'aquest objecte

## PART C
- Hem creat un directori a github anomenat provaldap: https://github.com/isx46410800/provaldap
- Hem creat dos dockers:
+ provaldap:2019
+ provaldap:latest

[isx46410800@i05 provaldap]$ docker run --name ldapserver -h ldapserver -it provaldap:2019 /bin/bash


