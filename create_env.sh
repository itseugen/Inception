#!/bin/sh

ENV_FILE=".env"

if [ -f "$ENV_FILE" ]; then
    echo ".env file already exists."
    exit 0
fi

echo "Creating .env file..."

read -p "Enter the WordPress URL: " WP_URL
read -p "Enter the Database Name: " DB_NAME
read -p "Enter the Database User: " DB_USER
read -p "Enter the Database Password: " DB_PASSWORD
read -p "Enter the WordPress Site Title: " WP_TITLE
read -p "Enter the WordPress Admin Username: " WP_ADMIN_NAME
read -p "Enter the WordPress Admin Password: " WP_ADMIN_PASS
read -p "Enter the WordPress Admin Email: " WP_ADMIN_EMAIL
read -p "Enter the WordPress User Name: " WP_USER_NAME
read -p "Enter the WordPress User Email: " WP_USER_EMAIL
read -p "Enter the WordPress User Password: " WP_USER_PASS
read -p "Enter the Country Name (2 Letter Code): " COUNTRY_NAME
read -p "Enter the State or Province Name: " STATE_NAME
read -p "Enter the Locality Name (city): " CITY_NAME
read -p "Enter the Organization Name (company): " COMPANY_NAME
read -p "Enter the Organization's Unit Name: " UNIT_NAME
read -p "Enter the Common Name: " COMMON_NAME
read -p "Enter the Email Address for open SSL: " SSL_MAIL
read -p "Enter the Path to the MariaDB device: " MARIADB_DEVICE
read -p "Enter the Path to the Wordpress device: " WORDPRESS_DEVICE

cat <<EOL >> $ENV_FILE
WP_URL=$WP_URL
DB_NAME=$DB_NAME
DB_USER=$DB_USER
DB_PASSWORD=$DB_PASSWORD
WP_TITLE=$WP_TITLE
WP_ADMIN_NAME=$WP_ADMIN_NAME
WP_ADMIN_PASS=$WP_ADMIN_PASS
WP_ADMIN_EMAIL=$WP_ADMIN_EMAIL
WP_USER_NAME=$WP_USER_NAME
WP_USER_EMAIL=$WP_USER_EMAIL
WP_USER_PASS=$WP_USER_PASS
COUNTRY_NAME=$COUNTRY_NAME
STATE_NAME=$STATE_NAME
CITY_NAME=$CITY_NAME
COMPANY_NAME=$COMPANY_NAME
UNIT_NAME=$UNIT_NAME
COMMON_NAME=$COMMON_NAME
SSL_MAIL=$SSL_MAIL
MARIADB_DEVICE=$MARIADB_DEVICE
WORDPRESS_DEVICE=$WORDPRESS_DEVICE
EOL

echo ".env file created successfully."
