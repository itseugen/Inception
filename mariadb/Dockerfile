FROM debian:12

RUN apt-get update && apt-get install -y mariadb-server mariadb-client \
	&& apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN mkdir -p /var/lib/mysql /var/run/mysqld && \
	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld

COPY mdb.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY init.sh /etc/

RUN chmod +x /etc/init.sh

EXPOSE 3306

CMD ["/etc/init.sh"]