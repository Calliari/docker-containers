#Use CentOS as base
FROM centos:centos7.9.2009
ENV container docker

LABEL \
    org.label-schema.schema-version="1.0" \
    org.label-schema.name="CentOS Base Image" \
    org.label-schema.vendor="CentOS" \
    org.label-schema.license="GPLv2" \
    org.label-schema.build-date="20201113" \
    org.opencontainers.image.title="CentOS Base Image" \
    org.opencontainers.image.vendor="CentOS" \
    org.opencontainers.image.licenses="GPL-2.0-only" \
    org.opencontainers.image.created="2020-11-13 00:00:00+00:00"

# Install custom tools
RUN yum -y install openssl ccrypt nc epel-release python3 && \
    pip3 install --user j2cli && \
    yum clean all && rm -rf /var/cache/yum


VOLUME [ "/sys/fs/cgroup" ]
ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]