#Use Amazon Linux container
FROM amazonlinux:2
ENV container docker

# Install custom tools
RUN yum -y install git vim openssl ccrypt nc epel-release python3 unzip && \
    pip3 install --user j2cli && \
    curl -O https://releases.hashicorp.com/vault/1.16.3/vault_1.16.3_linux_arm64.zip && unzip vault_1.16.3_linux_arm64.zip && mv /vault /usr/local/bin/ && \
    yum clean all && rm -rf /var/cache/yum

EXPOSE 80

VOLUME [ "/sys/fs/cgroup" ]
ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
