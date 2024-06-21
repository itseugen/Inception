FROM debian:12

# Getting mariadb
RUN apt-get update && apt-get install -y mariadb-server mariadb-client \
	&& apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN mkdir -p /var/lib/mysql /var/run/mysqld && \
	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld

# RUN chown -R mysql:mysql /var/lib/mysql

# Copy SQL config
# COPY mdb.cnf /etc/mysql/mariadb.cnf.d
# COPY ./mdb.cnf /etc/my.cnf.d/my.cnf
# COPY init.sql /docker-entrypoint-initdb.d/init.sql
COPY mdb.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# TEMP!!!!!!!!!!!!!!!
EXPOSE 3306

# Start MySql
CMD ["mysqld"]