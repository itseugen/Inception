FROM debian:latest

# Getting mariadb
RUN apt-get update && apt-get install -y mariadb-server \
	&& apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# ENVs for mariaDB (empty for now)
# ENV MYSQL_ROOT_PASSWORD=
# ENV MYSQL_DATABASE=wordpress
# ENV MYSQL_USER=
# ENV MYSQL_PASSWORD=

# Copy SQL config
COPY mdb.cnf /etc/mysql/mdb.cnf

# Initialize database
# RUN mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld \
# 	&& mysql_install_db --user=mysql --datadir=/var/lib/mysql

COPY init.sql /docker-entrypoint-initdb.d/init.sql

# Start MySql
CMD ["mysqld"]