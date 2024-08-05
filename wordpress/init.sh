#!/bin/sh
# cd /var/www/html

#   wp core download --allow-root

  wp config create --force \
    --url="${WP_URL}" \
    --dbname="${DB_NAME}" \
    --dbuser="${DB_USER}" \
    --dbpass="${DB_PASSWORD}" \
    --dbhost="mariadb:3306" \
    --allow-root

  wp core install --url="${WP_URL}" \
    --title="${WP_TITLE}" \
    --admin_user="${WP_ADMIN_NAME}" \
    --admin_password="${WP_ADMIN_PASS}" \
    --admin_email="${WP_ADMIN_EMAIL}" \
    --skip-email \
    --allow-root

  wp user create "${WP_USER_NAME}" "${WP_USER_EMAIL}" \
    --user_pass="${WP_USER_PASS}" \
    --allow-root

  wp option update home "${SITE_URL}" --allow-root
  wp option update siteurl "${SITE_URL}" --allow-root
# fi

exec php-fpm8.2 -F
