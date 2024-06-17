FROM debian:latest

# Getting mariadb
RUN apk update && apk add --no-cache mariadb mariadb-client

# ENVs for mariaDB (empty for now)
ENV MYSQL_ROOT_PASSWORD=
ENV MYSQL_DATABASE=wordpress
ENV MYSQL_USER=
ENV MYSQL_PASSWORD=

# Copy SQL config
COPY exmpl.cnf /etc/exmpl.cnf

# Initialize database
RUN mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld \
	&& mysql_install_db --user=mysql --datadir=/var/lib/mysql

# Expose the port I will use
EXPOSE 

# Start MySql
CMD ["mysqld"]