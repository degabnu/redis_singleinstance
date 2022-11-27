FROM oraclelinux:7
RUN yum -y install oracle-epel-release-el7 && yum -y install systemd && yum -y update && yum -y install redis && yum -y clean all  && rm -rf /var/cache
COPY redis.conf /usr/local/etc/redis/redis.conf
COPY ./disable_hugepages.sh /
ENTRYPOINT ["disable_hugepages.sh"]
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
