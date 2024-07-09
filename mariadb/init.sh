#!/bin/bash
# set -e

# mysqld_safe --skip-networking & pid="$!"

# mysql=( mysql --protocol=socket -uroot )

# for i in {30..0}; do
# 	if echo 'SELECT 1' | "${mysql[@]}" &> /dev/null; then
# 		break
# 	fi
# 	echo 'MySQL init process in progress...'
# 	sleep 1
# done

# if [ "$i" = 0 ]; then
# 	echo >&2 'MySQL init process failed.'
# 	exit 1
# fi

# mysql -u root <<-EOSQL
# 	CREATE DATABASE wordpress;
# 	CREATE USER 'wordpressuser'@'%' IDENTIFIED BY 'password';
# 	GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpressuser'@'%';
# 	FLUSH PRIVILEGES;
# EOSQL

# if ! kill -s TERM "$pid" || ! wait "$pid"; then
# 	echo >&2 'MySQL init process failed.'
# 	exit 1
# fi

# exec mysqld

#!/bin/sh

function create_sql_file()
{
	cat << EOF > bootstrap.sql
	FLUSH PRIVILEGES;
	CREATE DATABASE IF NOT EXISTS \`${DB_NAME}\`;
	CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED BY '${DB_PWD}';
	GRANT ALL PRIVILEGES on \`${DB_NAME}\`.* TO '${DB_USER}'@'%';
	FLUSH PRIVILEGES;
EOF
}

function run_bootstrap()
{
	mariadbd --user=mysql --bootstrap < bootstrap.sql;
	rm -f bootstrap.sql
}
if [ ! -d "/var/lib/mysql/${DB_NAME}" ]; then
	create_sql_file
	run_bootstrap
fi

exec /usr/bin/mariadbd --datadir=/var/lib/mysql --user=mysql