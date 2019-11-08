# ldapserver
FROM fedora:27
LABEL version="1.0"
LABEL author="Miguel Amorós"
LABEL subject="ldapserver exam"
RUN dnf install -y openldap-servers openldap-clients tree
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh
WORKDIR /opt/docker
CMD /opt/docker/startup.sh
